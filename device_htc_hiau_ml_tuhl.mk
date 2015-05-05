$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/htc_hiau_ml_tuhl/htc_hiau_ml_tuhl-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/htc_hiau_ml_tuhl/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/htc_hiau_ml_tuhl/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_htc_hiau_ml_tuhl
PRODUCT_DEVICE := htc_hiau_ml_tuhl
