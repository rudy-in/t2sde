dnl --- T2-COPYRIGHT-NOTE-BEGIN ---
dnl This copyright note is auto-generated by scripts/Create-CopyPatch.
dnl 
dnl T2 SDE: architecture/arm64/linux.conf.m4
dnl Copyright (C) 2004 - 2020 The T2 SDE Project
dnl 
dnl More information can be found in the files COPYING and README.
dnl 
dnl This program is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU General Public License as published by
dnl the Free Software Foundation; version 2 of the License. A copy of the
dnl GNU General Public License can be found in the file COPYING.
dnl --- T2-COPYRIGHT-NOTE-END ---

define(`ARM64', `ARM64')dnl

CONFIG_ARCH_SUNXI=y
CONFIG_ARCH_BCM2835=y
CONFIG_ARCH_BERLIN=y
CONFIG_ARCH_EXYNOS=y
CONFIG_ARCH_K3=y
CONFIG_ARCH_LAYERSCAPE=y
CONFIG_ARCH_LG1K=y
CONFIG_ARCH_HISI=y
CONFIG_ARCH_MEDIATEK=y
CONFIG_ARCH_MVEBU=y
CONFIG_ARCH_MXC=y
CONFIG_ARCH_QCOM=y
CONFIG_ARCH_REALTEK=y
CONFIG_ARCH_ROCKCHIP=y
CONFIG_ARCH_TEGRA=y
CONFIG_ARCH_THUNDER=y
CONFIG_ARCH_THUNDER2=y
CONFIG_ARCH_VEXPRESS=y

include(`linux-common.conf.m4')
include(`linux-block.conf.m4')
include(`linux-net.conf.m4')
include(`linux-fs.conf.m4')

CONFIG_PM_AUTOSLEEP=y
CONFIG_PM_WAKELOCKS=y
CONFIG_PM_WAKELOCKS_LIMIT=100
CONFIG_PM_WAKELOCKS_GC=y

CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
CONFIG_ARM_CPUIDLE=y

CONFIG_ARM_SCPI_CPUFREQ=y
CONFIG_ARM_TEGRA20_CPUFREQ=y
CONFIG_ARM_SCPI_PROTOCOL=y
CONFIG_ARM_SCPI_POWER_DOMAIN=y
CONFIG_MQ_IOSCHED_KYBER=y
CONFIG_NEED_MULTIPLE_NODES=y
CONFIG_MEMORY_FAILURE=y
CONFIG_TRANSPARENT_HUGEPAGE=y
CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
CONFIG_SIMPLE_PM_BUS=y
CONFIG_SUNXI_RSB=y
CONFIG_OF_MDIO=y
CONFIG_OF_CONFIGFS=y
CONFIG_OF_NUMA=y
CONFIG_BLK_DEV_NBD=y
CONFIG_SCSI_MOD=y
CONFIG_SCSI=y
CONFIG_BLK_DEV_SD=y
CONFIG_SCSI_SAS_ATTRS=y
CONFIG_SCSI_SAS_LIBSAS=y
CONFIG_SCSI_UFSHCD=y
CONFIG_SCSI_UFSHCD_PLATFORM=y
CONFIG_BLK_DEV_DM=y
CONFIG_TARGET_CORE=y
CONFIG_MII=y
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_MDIO_BITBANG=y
CONFIG_MDIO_BUS_MUX=y
CONFIG_MDIO_BUS_MUX_MMIOREG=y
CONFIG_PHYLIB=y
CONFIG_FIXED_PHY=y
CONFIG_MICROCHIP_PHY=y
CONFIG_REALTEK_PHY=y
CONFIG_USB_NET_DRIVERS=y
CONFIG_USB_PEGASUS=y
CONFIG_USB_RTL8150=y
CONFIG_USB_RTL8152=y
CONFIG_USB_LAN78XX=y
CONFIG_USB_USBNET=y
CONFIG_USB_NET_AX8817X=y
CONFIG_USB_NET_AX88179_178A=y
CONFIG_USB_NET_CDCETHER=y
CONFIG_USB_NET_SR9800=y
CONFIG_USB_NET_SMSC75XX=y
CONFIG_USB_NET_SMSC95XX=y
CONFIG_USB_NET_MCS7830=y
CONFIG_USB_NET_RNDIS_HOST=y
CONFIG_USB_NET_CDC_SUBSET_ENABLE=y
CONFIG_USB_NET_CDC_SUBSET=y
CONFIG_USB_NET_QMI_WWAN=y
CONFIG_INPUT_LEDS=y
CONFIG_INPUT_FF_MEMLESS=y
CONFIG_INPUT_POLLDEV=y
CONFIG_INPUT_MATRIXKMAP=y
CONFIG_KEYBOARD_ADC=y
CONFIG_KEYBOARD_GPIO=y
CONFIG_KEYBOARD_SUN4I_LRADC=y
CONFIG_INPUT_GPIO_VIBRA=y
CONFIG_INPUT_AXP20X_PEK=y
CONFIG_INPUT_UINPUT=y
CONFIG_SERIAL_8250_DMA=y
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_SHARE_IRQ=y
CONFIG_SERIAL_8250_DW=y
CONFIG_SERIAL_8250_TEGRA=y
CONFIG_SERIAL_OF_PLATFORM=y
CONFIG_SERIAL_AMBA_PL011=y
CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
CONFIG_SERIAL_XILINX_PS_UART=y
CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
CONFIG_SERIAL_DEV_BUS=y
CONFIG_SERIAL_DEV_CTRL_TTYPORT=y
CONFIG_HW_RANDOM=y
CONFIG_HW_RANDOM_BCM2835=y
CONFIG_HW_RANDOM_IPROC_RNG200=y
CONFIG_HW_RANDOM_OMAP=y
CONFIG_HW_RANDOM_HISI=y
CONFIG_HW_RANDOM_MTK=y
CONFIG_HW_RANDOM_EXYNOS=y
CONFIG_HW_RANDOM_OPTEE=y
CONFIG_TCG_TPM=y
CONFIG_TCG_TIS_I2C_INFINEON=y
CONFIG_I2C=y
CONFIG_I2C_CHARDEV=y
CONFIG_I2C_MUX=y
CONFIG_I2C_MUX_PCA954x=y
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_BRCMSTB=y
CONFIG_I2C_DESIGNWARE_CORE=y
CONFIG_I2C_DESIGNWARE_PLATFORM=y
CONFIG_I2C_EXYNOS5=y
CONFIG_I2C_GPIO=y
CONFIG_I2C_MV64XXX=y
CONFIG_I2C_RK3X=y
CONFIG_SPMI=y
CONFIG_SPMI_MSM_PMIC_ARB=y
CONFIG_PINCTRL_SINGLE=y
CONFIG_PINCTRL_MT6765=y
CONFIG_GPIO_SYSFS=y
CONFIG_GPIO_GENERIC_PLATFORM=y
CONFIG_GPIO_MB86S7X=y
CONFIG_GPIO_PL061=y
CONFIG_GPIO_XGENE=y
CONFIG_GPIO_PCA953X=y
CONFIG_GPIO_PCA953X_IRQ=y
CONFIG_POWER_AVS=y
CONFIG_POWER_RESET_BRCMSTB=y
CONFIG_POWER_RESET_XGENE=y
CONFIG_POWER_RESET_SYSCON=y
CONFIG_REBOOT_MODE=y
CONFIG_SYSCON_REBOOT_MODE=y
CONFIG_POWER_SUPPLY_HWMON=y
CONFIG_BATTERY_BQ27XXX=y
CONFIG_BATTERY_BQ27XXX_I2C=y
CONFIG_CHARGER_AXP20X=y
CONFIG_BATTERY_AXP20X=y
CONFIG_AXP20X_POWER=y
CONFIG_AXP288_FUEL_GAUGE=y
CONFIG_HWMON=y
CONFIG_SENSORS_ARM_SCPI=y
CONFIG_THERMAL_STATISTICS=y
CONFIG_THERMAL_HWMON=y
CONFIG_THERMAL_WRITABLE_TRIPS=y
CONFIG_THERMAL_GOV_FAIR_SHARE=y
CONFIG_THERMAL_GOV_BANG_BANG=y
CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
CONFIG_CPU_THERMAL=y
CONFIG_CPU_FREQ_THERMAL=y
CONFIG_CLOCK_THERMAL=y
CONFIG_DEVFREQ_THERMAL=y
CONFIG_THERMAL_EMULATION=y
CONFIG_HISI_THERMAL=y
CONFIG_SUN8I_THERMAL=y
CONFIG_MTK_THERMAL=y
CONFIG_MFD_AXP20X=y
CONFIG_MFD_AXP20X_RSB=y
CONFIG_REGULATOR_FIXED_VOLTAGE=y
CONFIG_REGULATOR_AXP20X=y
CONFIG_REGULATOR_FAN53555=y
CONFIG_REGULATOR_GPIO=y
CONFIG_REGULATOR_PWM=y
CONFIG_REGULATOR_VCTRL=y
CONFIG_MEDIA_SUPPORT=y
CONFIG_DRM=y
CONFIG_DRM_KMS_HELPER=y
CONFIG_DRM_SCHED=y
CONFIG_DRM_I2C_CH7006=y
CONFIG_DRM_I2C_SIL164=y
CONFIG_DRM_MALI_DISPLAY=y
CONFIG_DRM_SUN4I=y
CONFIG_DRM_SUN4I_HDMI=y
CONFIG_DRM_SUN4I_BACKEND=y
CONFIG_DRM_SUN6I_DSI=y
CONFIG_DRM_SUN8I_DW_HDMI=y
CONFIG_DRM_SUN8I_MIXER=y
CONFIG_DRM_SUN8I_TCON_TOP=y
CONFIG_DRM_PANEL_SIMPLE=y
CONFIG_DRM_PANEL_FEIXIN_K101_IM2BA02=y
CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D=y
CONFIG_DRM_PANEL_PINEPHONE_JD9365DA=y
CONFIG_DRM_PANEL_SITRONIX_ST7703=y
CONFIG_DRM_DW_HDMI=y
CONFIG_DRM_DW_HDMI_AHB_AUDIO=y
CONFIG_DRM_DW_HDMI_I2S_AUDIO=y
CONFIG_DRM_LIMA=y
CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
CONFIG_FB_CFB_FILLRECT=y
CONFIG_FB_CFB_COPYAREA=y
CONFIG_FB_CFB_IMAGEBLIT=y
CONFIG_FB_SYS_FILLRECT=y
CONFIG_FB_SYS_COPYAREA=y
CONFIG_FB_SYS_IMAGEBLIT=y
CONFIG_FB_SYS_FOPS=y
CONFIG_FB_UDL=y
CONFIG_FB_MX3=y
CONFIG_FB_SIMPLE=y
CONFIG_LCD_CLASS_DEVICE=y
CONFIG_BACKLIGHT_CLASS_DEVICE=y
CONFIG_BACKLIGHT_PWM=y
CONFIG_SOUND=y
CONFIG_SND=y
CONFIG_SND_TIMER=y
CONFIG_SND_PCM=y
CONFIG_SND_DMAENGINE_PCM=y
CONFIG_SND_VERBOSE_PRINTK=y
CONFIG_SND_DEBUG=y
CONFIG_SND_DEBUG_VERBOSE=y
CONFIG_SND_CTL_VALIDATION=y
CONFIG_SND_SOC=y
CONFIG_SND_I2S_HI6210_I2S=y
CONFIG_SND_SUN4I_CODEC=y
CONFIG_SND_SUN8I_CODEC=y
CONFIG_SND_SUN8I_CODEC_ANALOG=y
CONFIG_SND_SUN50I_CODEC_ANALOG=m
CONFIG_SND_SUN4I_I2S=y
CONFIG_SND_SUN4I_SPDIF=y
CONFIG_SND_SUN8I_ADDA_PR_REGMAP=y
CONFIG_SND_SOC_I2C_AND_SPI=y
CONFIG_SND_SOC_HDMI_CODEC=y
CONFIG_SND_SOC_ES8316=y
CONFIG_SND_SOC_ES8328=y
CONFIG_SND_SOC_ES8328_I2C=y
CONFIG_SND_SOC_EC25=y
CONFIG_SND_SOC_SIMPLE_AMPLIFIER=y
CONFIG_SND_SOC_SPDIF=y
CONFIG_SND_SIMPLE_CARD_UTILS=m
CONFIG_SND_SIMPLE_CARD=m
CONFIG_SND_AUDIO_GRAPH_CARD=m
CONFIG_HID=y
CONFIG_HID_BATTERY_STRENGTH=y
CONFIG_UHID=y
CONFIG_HID_GENERIC=y
CONFIG_HID_A4TECH=y
CONFIG_HID_BELKIN=y
CONFIG_HID_CHERRY=y
CONFIG_HID_CHICONY=y
CONFIG_HID_CYPRESS=y
CONFIG_HID_EZKEY=y
CONFIG_HID_ITE=y
CONFIG_HID_KENSINGTON=y
CONFIG_HID_LOGITECH=y
CONFIG_HID_LOGITECH_DJ=y
CONFIG_HID_LOGITECH_HIDPP=y
CONFIG_HID_REDRAGON=y
CONFIG_HID_MICROSOFT=y
CONFIG_HID_MONTEREY=y
CONFIG_USB_HID=y
CONFIG_I2C_HID=y
CONFIG_USB_COMMON=y
CONFIG_USB_ULPI_BUS=y
CONFIG_USB=y
CONFIG_USB_OTG=y
CONFIG_USB_XHCI_HCD=y
CONFIG_USB_XHCI_PLATFORM=y
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_HCD_ORION=y
CONFIG_USB_EHCI_HCD_PLATFORM=y
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PLATFORM=y
CONFIG_USB_WDM=y
CONFIG_USB_STORAGE=y
CONFIG_USB_MUSB_HDRC=y
CONFIG_USB_MUSB_SUNXI=y
CONFIG_USB_DWC3=y
CONFIG_USB_DWC3_EXYNOS=y
CONFIG_USB_DWC3_KEYSTONE=y
CONFIG_USB_DWC3_OF_SIMPLE=y
CONFIG_USB_DWC3_QCOM=y
CONFIG_USB_DWC2=y
CONFIG_USB_CHIPIDEA=y
CONFIG_USB_CHIPIDEA_UDC=y
CONFIG_USB_CHIPIDEA_HOST=y
CONFIG_USB_CHIPIDEA_MSM=y
CONFIG_USB_CHIPIDEA_IMX=y
CONFIG_USB_CHIPIDEA_GENERIC=y
CONFIG_USB_CHIPIDEA_TEGRA=y
CONFIG_USB_ISP1760=y
CONFIG_USB_SERIAL=y
CONFIG_USB_SERIAL_CH341=y
CONFIG_USB_SERIAL_WWAN=y
CONFIG_USB_SERIAL_OPTION=y
CONFIG_USB_HSIC_USB3503=y
CONFIG_NOP_USB_XCEIV=y
CONFIG_USB_TEGRA_PHY=y
CONFIG_USB_GADGET=y
CONFIG_USB_SNP_CORE=y
CONFIG_USB_SNP_UDC_PLAT=y
CONFIG_USB_BDC_UDC=y
CONFIG_USB_LIBCOMPOSITE=y
CONFIG_USB_U_ETHER=y
CONFIG_USB_F_NCM=y
CONFIG_USB_F_ECM=y
CONFIG_USB_F_EEM=y
CONFIG_USB_F_RNDIS=y
CONFIG_USB_F_MASS_STORAGE=y
CONFIG_USB_F_TCM=y
CONFIG_USB_CONFIGFS=y
CONFIG_USB_CONFIGFS_NCM=y
CONFIG_USB_CONFIGFS_ECM=y
CONFIG_USB_CONFIGFS_RNDIS=y
CONFIG_USB_CONFIGFS_EEM=y
CONFIG_USB_CONFIGFS_MASS_STORAGE=y
CONFIG_USB_CONFIGFS_F_TCM=y
CONFIG_TYPEC=y
CONFIG_TYPEC_TCPM=y
CONFIG_TYPEC_TCPCI=y
CONFIG_TYPEC_UCSI=y
CONFIG_TYPEC_ANX7688=y
CONFIG_TYPEC_DP_ALTMODE=y
CONFIG_MMC=y
CONFIG_PWRSEQ_EMMC=y
CONFIG_PWRSEQ_SIMPLE=y
CONFIG_MMC_BLOCK=y
CONFIG_MMC_ARMMMCI=y
CONFIG_MMC_SDHCI=y
CONFIG_MMC_SDHCI_PLTFM=y
CONFIG_MMC_SDHCI_OF_ARASAN=y
CONFIG_MMC_SDHCI_CADENCE=y
CONFIG_MMC_SDHCI_F_SDH30=y
CONFIG_MMC_SDHCI_IPROC=y
CONFIG_MMC_DW=y
CONFIG_MMC_DW_PLTFM=y
CONFIG_MMC_DW_EXYNOS=y
CONFIG_MMC_DW_HI3798CV200=y
CONFIG_MMC_DW_K3=y
CONFIG_MMC_SUNXI=y
CONFIG_MMC_CQHCI=y
CONFIG_MMC_SDHCI_XENON=y
CONFIG_LEDS_CLASS=y
CONFIG_LEDS_CLASS_FLASH=y
CONFIG_LEDS_BRIGHTNESS_HW_CHANGED=y
CONFIG_LEDS_GPIO=y
CONFIG_LEDS_PWM=y
CONFIG_LEDS_SYSCON=y
CONFIG_LEDS_SGM3140=y
CONFIG_LEDS_TRIGGER_HEARTBEAT=y
CONFIG_LEDS_TRIGGER_CPU=y
CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
CONFIG_LEDS_TRIGGER_PANIC=y
CONFIG_EDAC=y
CONFIG_EDAC_LEGACY_SYSFS=y
CONFIG_RTC_I2C_AND_SPI=y
CONFIG_RTC_DRV_DS3232=y
CONFIG_RTC_DRV_PL031=y
CONFIG_RTC_DRV_SUN6I=y
CONFIG_DMADEVICES=y
CONFIG_DMA_ENGINE=y
CONFIG_DMA_VIRTUAL_CHANNELS=y
CONFIG_DMA_OF=y
CONFIG_DMA_SUN6I=y
CONFIG_MX3_IPU=y
CONFIG_PL330_DMA=y
CONFIG_VFIO_IOMMU_TYPE1=y
CONFIG_VFIO=y
CONFIG_SWIOTLB_XEN=y
CONFIG_XEN_AUTO_XLATE=y
CONFIG_COMMON_CLK_SCPI=y
CONFIG_COMMON_CLK_CS2000_CP=y
CONFIG_CLK_LS1028A_PLLDIG=y
CONFIG_COMMON_CLK_XGENE=y
CONFIG_COMMON_CLK_PWM=y
CONFIG_COMMON_CLK_HI3516CV300=y
CONFIG_COMMON_CLK_HI3519=y
CONFIG_COMMON_CLK_HI3798CV200=y
CONFIG_TI_SYSCON_CLK=y
CONFIG_EXYNOS_AUDSS_CLK_CON=y
CONFIG_HWSPINLOCK=y
CONFIG_ARM_MHU=y
CONFIG_PLATFORM_MHU=y
CONFIG_SUN6I_MSGBOX=y
CONFIG_ARM_SMMU=y
CONFIG_ARM_SMMU_V3=y
CONFIG_SOC_BRCMSTB=y
CONFIG_DPAA2_CONSOLE=y
CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
CONFIG_EXTCON_USB_GPIO=y
CONFIG_IIO=y
CONFIG_IIO_KFIFO_BUF=y
CONFIG_IIO_TRIGGERED_BUFFER=y
CONFIG_BMC150_ACCEL=y
CONFIG_BMC150_ACCEL_I2C=y
CONFIG_AXP20X_ADC=y
CONFIG_IIO_ST_SENSORS_I2C=y
CONFIG_IIO_ST_SENSORS_CORE=y
CONFIG_INV_MPU6050_IIO=y
CONFIG_INV_MPU6050_I2C=y
CONFIG_STK3310=y
CONFIG_IIO_ST_MAGN_3AXIS=y
CONFIG_IIO_ST_MAGN_I2C_3AXIS=y
CONFIG_PWM_SUN4I=y
CONFIG_COMMON_RESET_HI3660=y
CONFIG_COMMON_RESET_HI6220=y
CONFIG_PHY_XGENE=y
CONFIG_PHY_SUN4I_USB=y
CONFIG_PHY_SUN6I_MIPI_DPHY=y
CONFIG_PHY_MVEBU_A3700_COMPHY=y
CONFIG_PHY_MVEBU_A3700_UTMI=y
CONFIG_PHY_QCOM_USB_HS=y
CONFIG_PHY_EXYNOS_DP_VIDEO=y
CONFIG_PHY_EXYNOS_MIPI_VIDEO=y
CONFIG_PHY_SAMSUNG_USB2=y
CONFIG_PHY_EXYNOS5_USBDRD=y
CONFIG_EXT4_FS=y
CONFIG_F2FS_FS=y
