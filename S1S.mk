#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from S1S device
$(call inherit-product, device/EEBBK/S1S/device.mk)

PRODUCT_DEVICE := S1S
PRODUCT_NAME := S1S
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S1S
PRODUCT_MANUFACTURER := EEBBK

PRODUCT_GMS_CLIENTID_BASE := android-EEBBK
