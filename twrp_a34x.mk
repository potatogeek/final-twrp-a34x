# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a34x device
$(call inherit-product, device/samsung/a34x/device.mk)


PRODUCT_DEVICE := a34x
PRODUCT_NAME := twrp_a34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A346B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a34xxx-user 12 SP1A.210812.016 A346BXXU4BWK2 release-keys"

BUILD_FINGERPRINT := samsung/a34xxx/a34x:12/SP1A.210812.016/A346BXXU4BWK2:user/release-keys
