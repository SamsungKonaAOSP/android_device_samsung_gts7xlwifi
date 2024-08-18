#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gts7xlwifi

# Kernel
TARGET_KERNEL_CONFIG += vendor/samsung/gts7xlwifi.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := gts7xlwifi
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# UDFPS
TARGET_USES_FOD_ZPOS := true
