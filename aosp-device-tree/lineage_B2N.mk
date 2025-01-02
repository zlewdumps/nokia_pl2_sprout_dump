#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from B2N device
$(call inherit-product, device/unknown/B2N/device.mk)

PRODUCT_DEVICE := B2N
PRODUCT_NAME := lineage_B2N
PRODUCT_BRAND := Unknown
PRODUCT_MODEL := Nokia 6.1
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Plate2_00WW-user 10 QKQ1.190828.002 00WW_4_15O release-keys"

BUILD_FINGERPRINT := Nokia/Plate2_00WW/PL2_sprout:10/QKQ1.190828.002/00WW_4_15O:user/release-keys
