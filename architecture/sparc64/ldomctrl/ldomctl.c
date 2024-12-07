#include <stdio.h>
#include <stdlib.h>
#include <libvirt/libvirt.h>
#include <string.h>


virConnectPtr connect_to_hypervisor() {
    virConnectPtr conn = virConnectOpen("qemu:///system");
    if (conn == NULL) {
        fprintf(stderr, "Failed to open connection to qemu:///system\n");
        exit(1);
    }
    return conn;
}


void create_vm(virConnectPtr conn, const char *name, int cpu, int memory, int disk_size) {
    char xml[2048];

    snprintf(xml, sizeof(xml),
        "<domain type='kvm'>"
        "<name>%s</name>"
        "<memory unit='KiB'>%d</memory>"
        "<vcpu placement='static'>%d</vcpu>"
        "<os>"
        "<type arch='x86_64' machine='pc-i440fx-2.9'>hvm</type>"
        "</os>"
        "<devices>"
        "<disk type='file' device='disk'>"
        "<driver name='qemu' type='qcow2'/>"
        "<source file='/var/lib/libvirt/images/%s.qcow2'/>"
        "<target dev='vda' bus='virtio'/>"
        "</disk>"
        "<interface type='network'>"
        "<mac address='52:54:00:57:6d:a2'/>"
        "<source network='default'/>"
        "<model type='virtio'/>"
        "</interface>"
        "</devices>"
        "</domain>", name, memory, cpu, name);

    virDomainPtr domain = virDomainCreateXML(conn, xml, 0);
    if (domain == NULL) {
        fprintf(stderr, "Error creating VM '%s': Failed to create domain XML\n", name);
        exit(1);
    }
    printf("VM '%s' created successfully!\n", name);
    virDomainFree(domain);
}


void list_vms(virConnectPtr conn) {
    virDomainPtr *domains;
    int num_domains = virConnectListAllDomains(conn, &domains, 0);
    if (num_domains < 0) {
        fprintf(stderr, "Failed to list domains: Error occurred\n");
        exit(1);
    }

    if (num_domains == 0) {
        printf("No virtual machines found.\n");
    } else {
        for (int i = 0; i < num_domains; i++) {
            const char *name = virDomainGetName(domains[i]);
            if (name != NULL) {
                printf("VM Name: %s\n", name);
            }
        }
    }

    free(domains);
}


void start_vm(virConnectPtr conn, const char *name) {
    virDomainPtr domain = virDomainLookupByName(conn, name);
    if (domain == NULL) {
        fprintf(stderr, "VM '%s' not found.\n", name);
        return;
    }

    int ret = virDomainCreate(domain);
    if (ret < 0) {
        fprintf(stderr, "Failed to start VM '%s': Error starting domain\n", name);
        return;
    }

    printf("VM '%s' started successfully!\n", name);
}

void stop_vm(virConnectPtr conn, const char *name) {
    virDomainPtr domain = virDomainLookupByName(conn, name);
    if (domain == NULL) {
        fprintf(stderr, "VM '%s' not found.\n", name);
        return;
    }

    int ret = virDomainShutdown(domain);
    if (ret < 0) {
        fprintf(stderr, "Failed to stop VM '%s': Error shutting down domain\n", name);
        return;
    }

    printf("VM '%s' stopped successfully!\n", name);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <command> [options]\n", argv[0]);
        return 1;
    }

    virConnectPtr conn = connect_to_hypervisor();
    if (strcmp(argv[1], "create") == 0) {
        if (argc != 6) {
            fprintf(stderr, "Usage: %s create <name> <cpu> <memory> <disk_size>\n", argv[0]);
            return 1;
        }

        const char *name = argv[2];
        int cpu = atoi(argv[3]);
        int memory = atoi(argv[4]) * 1024;
        int disk_size = atoi(argv[5]);

        create_vm(conn, name, cpu, memory, disk_size);
    }
    else if (strcmp(argv[1], "list") == 0) {
        list_vms(conn);
    }

    else if (strcmp(argv[1], "start") == 0) {
        if (argc != 3) {
            fprintf(stderr, "Usage: %s start <name>\n", argv[0]);
            return 1;
        }

        const char *name = argv[2];
        start_vm(conn, name);
    }

    else if (strcmp(argv[1], "stop") == 0) {
        if (argc != 3) {
            fprintf(stderr, "Usage: %s stop <name>\n", argv[0]);
            return 1;
        }

        const char *name = argv[2];
        stop_vm(conn, name);
    }

    else {
        fprintf(stderr, "Unknown command: %s\n", argv[1]);
        return 1;
    }

    virConnectClose(conn);
    return 0;
}
