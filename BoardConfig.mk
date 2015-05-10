USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/htc_hiau_ml_tuhl/BoardConfigVendor.mk

TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6795
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := htc_hiau_ml_tuhl

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidusb.pid=0x0663 androidboot.mod1=normal
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/htc_hiau_ml_tuhl/kernel

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TWRP_EVENT_LOGGING := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/htc/htc_hiau_ml_tuhl/recovery/graphics_twrp.c
DEVICE_RESOLUTION := 1440x2560
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
#Cn theme
TW_CUSTOM_THEME := device/htc/htc_hiau_ml_tuhl/recovery/twres-cn
TW_EXCLUDE_SUPERSU := true

