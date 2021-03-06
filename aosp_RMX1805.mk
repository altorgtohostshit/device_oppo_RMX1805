# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from RMX1805 device
$(call inherit-product, device/oppo/RMX1805/device.mk)

# Inherit GMS, Pixel Features, and Modules.
-include vendor/google/gms/config.mk



# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

PRODUCT_BRAND := oppo
PRODUCT_DEVICE := RMX1805
PRODUCT_MANUFACTURER := oppo
PRODUCT_NAME := aosp_RMX1805
PRODUCT_MODEL := realme 2

# PRODUCT_GMS_CLIENTID_BASE := android-oppo
TARGET_VENDOR := oppo
TARGET_USE_JELLY := true
TARGET_VENDOR_PRODUCT_NAME := RMX1805
TARGET_INCLUDE_PIXEL_CHARGER := true
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1805"


#TARGET_GAPPS_ARCH := arm64
#WITH_GAPPS := true
#TARGET_INCLUDE_STOCK_ARCORE := false
#TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_BOOT_ANIMATION_RES := 720

# Maintainer
DEVICE_MAINTAINER :=AbhinavSama
