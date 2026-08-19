#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# MTK recovery init configuration files
# NOTE: init.rc / ueventd.rc are provided by system/core/rootdir (do not redefine)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt8167.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.recovery.mt8167.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.mt8167.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/ueventd.mt8167.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Vendor APKs (Android 9 forbids APKs in PRODUCT_COPY_FILES -> BUILD_PREBUILT)
# Paths mirror the original PRODUCT_COPY_FILES destinations.

include $(CLEAR_VARS)
LOCAL_MODULE       := mediatek-res
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ../../../../vendor/EEBBK/S1S/proprietary/vendor/framework/mediatek-res/mediatek-res.apk
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/framework/mediatek-res
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := FwkPlugin
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ../../../../vendor/EEBBK/S1S/proprietary/vendor/plugin/FwkPlugin/FwkPlugin.apk
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/plugin/FwkPlugin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := DataProtection
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ../../../../vendor/EEBBK/S1S/proprietary/vendor/plugin/DataProtection/DataProtection.apk
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/plugin/DataProtection
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := MTKLogger
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ../../../../vendor/EEBBK/S1S/proprietary/vendor/app/MTKLogger/MTKLogger.apk
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/app/MTKLogger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := MTKThermalManager
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ../../../../vendor/EEBBK/S1S/proprietary/vendor/app/MTKThermalManager/MTKThermalManager.apk
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)/app/MTKThermalManager
include $(BUILD_PREBUILT)
