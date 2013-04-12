# Inherit AOSP device configuration for runnymede
$(call inherit-product, device/htc/runnymede/full_runnymede.mk)

PRODUCT_RELEASE_NAME := Sensation XL

TARGET_BOOTANIMATION_NAME := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_NAME := cm_runnymede
PRODUCT_DEVICE := runnymede
