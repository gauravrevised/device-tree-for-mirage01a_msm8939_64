$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lyf/mirage01a_msm8939_64/mirage01a_msm8939_64-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lyf/mirage01a_msm8939_64/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lyf/mirage01a_msm8939_64/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mirage01a_msm8939_64
PRODUCT_DEVICE := mirage01a_msm8939_64
