#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# call the common setup
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Graphics
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Init files
PRODUCT_PACKAGES += \
    init.gts7xlwifi.rc

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# WiFi
PRODUCT_PACKAGES += \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Inherit gts7xlwifi blobs
$(call inherit-product, vendor/samsung/gts7xlwifi/gts7xlwifi-vendor.mk)
