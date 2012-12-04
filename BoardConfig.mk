USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pantech/ef40s/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_USES_ADRENO_200 := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := ef40s

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom loglevel=0
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x40000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80200000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_FORCE_RAMDISK_ADDRESS := 0x41400000

TARGET_PREBUILT_KERNEL := device/pantech/ef40s/kernel



#recovery
BOARD_TOUCH_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
# BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
TARGET_RECOVERY_INITRC := device/pantech/ef40s/init.rc

DEVICE_RESOLUTION := 800x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_HAS_REBOOT_BOOTLOADER := true