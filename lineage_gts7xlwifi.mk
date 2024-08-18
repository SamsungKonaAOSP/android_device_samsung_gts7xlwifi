#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device classification
TARGET_IS_TABLET := true

# Fingerprint
TARGET_HAS_UDPFS := true

# RIL
TARGET_HAS_NO_RIL := true

# Wifi
TARGET_HAS_QCACLD_WIFI := true

# Inherit device configuration
$(call inherit-product, device/samsung/gts7xlwifi/device.mk)

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gts7xlwifi
PRODUCT_DEVICE := gts7xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T970
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_CHARACTERISTICS := tablet

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts7xlwifixx-user 11 RP1A.200720.012 T970XXS7DXH1 release-keys" \

BUILD_FINGERPRINT := "samsung/gts7xlwifixx/gts7xlwifi:11/RP1A.200720.012/T970XXS7DXH1:user/release-keys"
