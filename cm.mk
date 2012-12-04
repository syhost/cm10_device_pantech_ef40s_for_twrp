
# Release name
PRODUCT_RELEASE_NAME := ef40s

# Inherit device configuration
$(call inherit-product, device/pantech/ef40s/device_ef40s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef40s
PRODUCT_NAME := cm_ef40s
PRODUCT_BRAND := pantech
PRODUCT_MODEL := ef40s
PRODUCT_MANUFACTURER := pantech
