#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from M6763A device
$(call inherit-product, device/oppo/M6763A/device.mk)

PRODUCT_DEVICE := M6763A
PRODUCT_NAME := omni_M6763A
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := OPPO CPH1723
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6763_17031-user 7.1.1 N6F26Q 1539797164 release-keys"

BUILD_FINGERPRINT := OPPO/full_oppo6763_17031/oppo6763_17031:7.1.1/N6F26Q/1539797164:user/release-keys
