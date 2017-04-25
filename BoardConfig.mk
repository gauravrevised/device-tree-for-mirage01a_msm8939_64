DEVICE_TREE := device/lyf/mirage01a_msm8939_64


USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lyf/mirage01a_msm8939_64/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mirage01a_msm8939_64

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_TREE)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x80008000 --ramdisk_offset 0x81000000 --tags_offset 0x80000100 --dt device/lyf/mirage01a_msm8939_64/dt.img

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 35232153.6
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35232153.6
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3377463296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11918534246.4
BOARD_CACHEIMAGE_PARTITION_SIZE := 281018368
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false

TARGET_PREBUILT_KERNEL := device/lyf/mirage01a_msm8939_64/kernel
TARGET_RECOVERY_FSTAB := device/lyf/mirage01a_msm8939_64/recovery/fstab.qcom
TARGET_RECOVERY_INITRC := device/lyf/mirage01a_msm8939_64/recovery/init.qcom.rc
BOARD_HAS_NO_SELECT_BUTTON := true

DEVICE_RESOLUTION := 480x800


# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false


# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
TW_SCREEN_BLANK_ON_BOOT := true



# TWRP Additional Flags
RECOVERY_VARIANT := twrp



# Remove USB Mass Storage capability
TW_NO_USB_STORAGE := true


#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_INPUT_BLACKLIST := "lis3dh-accel\x0ahbtp_vm"


# TWRP Overlay Graphics
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true
TARGET_SPECIFIC_HEADER_PATH := device/oppo/r7sf/include

# exFAT drivers included in the kernel?
TW_NO_EXFAT_FUSE := false

# No love for the wicked (device ships with M)
TW_EXCLUDE_SUPERSU := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Debug flags
TWRP_INCLUDE_LOGCAT := false
# disabled due to 'logcat read failure'

# For TWRP Touchscreen Event Logging
TWRP_EVENT_LOGGING := false
# adb shell tail -f /tmp/recovery.log

# Time Zone data
PRODUCT_COPY_FILES += \
bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Additional alternative flags
#TW_USE_TOOLBOX := true
# don't take forever to wipe
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# USB Mounting for Mass Storage
# TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

