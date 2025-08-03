#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Y1 device
$(call inherit-product, device/duyaya/Y1/device.mk)

PRODUCT_DEVICE := Y1
PRODUCT_NAME := lineage_Y1
PRODUCT_BRAND := duyaya
PRODUCT_MODEL := Y1
PRODUCT_MANUFACTURER := duyaya

PRODUCT_GMS_CLIENTID_BASE := android-duyaya

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="T6742_32-userdebug 8.1.0 O11019 1559298527 test-keys"

BUILD_FINGERPRINT := alps/T6742_32/T6742_32:8.1.0/O11019/1564045065:user/test-keys
