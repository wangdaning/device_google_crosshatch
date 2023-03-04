# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)
$(call inherit-product, device/google/crosshatch/device_crooked.mk)
$(call inherit-product, device/google/crosshatch/crooked_common.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_crosshatch
PRODUCT_DEVICE := crosshatch
PRODUCT_MODEL := Pixel 3xl
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
