#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from barley device
$(call inherit-product, device/lenovo/barley/device.mk)

PRODUCT_DEVICE := barley
PRODUCT_NAME := omni_barley
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := barley
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_barley_row_wifi-user 12 SP1A.210812.016 50 release-keys"

BUILD_FINGERPRINT := Lenovo/barley/barley:12/SP1A.210812.016/_241015_ROW:user/release-keys
