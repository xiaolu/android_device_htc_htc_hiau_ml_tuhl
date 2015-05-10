## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := htc_hiau_ml_tuhl

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/htc_hiau_ml_tuhl/device_htc_hiau_ml_tuhl.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := htc_hiau_ml_tuhl
PRODUCT_NAME := cm_htc_hiau_ml_tuhl
PRODUCT_BRAND := htc
PRODUCT_MODEL := htc_hiau_ml_tuhl
PRODUCT_MANUFACTURER := htc
