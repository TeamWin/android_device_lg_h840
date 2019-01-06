# Assert
TARGET_OTA_ASSERT_DEVICE := alicee,h840

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

#PARTITION_SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE     := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3758080000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25839025152
BOARD_CACHEIMAGE_PARTITION_SIZE    := 524288000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PLATFORM_DEVICE_BASE := /dev/block/platform/soc.0/

# Boot image
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.hardware=alicee vmalloc=300m androidboot.selinux=permissive quiet

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_INCLUDE_NTFS_3G := true

# Kernel
TARGET_PREBUILT_KERNEL := device/lge/h840/kernel

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
RECOVERY_SDCARD_ON_DATA := true

# TWRP specific build flags
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_THEME := portrait_hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# Encryption support
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
