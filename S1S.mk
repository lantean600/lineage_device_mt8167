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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_neostra8167_tb_n-user 7.0 NRD90M 1528788477 release-keys"

BUILD_FINGERPRINT := acer/B1-870_ww_gen1/acer_Zipp:7.0/NRD90M/1528788477:user/release-keys
