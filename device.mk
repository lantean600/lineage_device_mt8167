#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 27

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
# Init/ueventd modules provided by rootdir/Android.mk (MTK-specific)
PRODUCT_PACKAGES += \
    init.recovery.mt8167.rc \
    ueventd.mt8167.rc

# Vendor init scripts + fstab (converted from prebuilt_etc for LOS16/Android9 compat)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/factory_init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/factory_init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/factory_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/factory_init.rc \
    $(LOCAL_PATH)/rootdir/etc/init.aee.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.aee.rc \
    $(LOCAL_PATH)/rootdir/etc/init.common_svc.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.common_svc.rc \
    $(LOCAL_PATH)/rootdir/etc/init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/init.environ.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.environ.rc \
    $(LOCAL_PATH)/rootdir/etc/init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt8167.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/init.rilproxy.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.rilproxy.rc \
    $(LOCAL_PATH)/rootdir/etc/init.sensor_1_0.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.sensor_1_0.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.configfs.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.modem.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/meta_init.rc \
    $(LOCAL_PATH)/rootdir/etc/multi_init.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/multi_init.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt8167:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.mt8167 \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/EEBBK/S1S/S1S-vendor.mk)
