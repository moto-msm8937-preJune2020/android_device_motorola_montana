#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Properties
$(call inherit-product, device/motorola/montana/vendor_prop.mk)

# Audio
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8937_mot_montana_camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/msm8937_mot_montana_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695f60_chromatix.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/mot_ov5695_l5695f60_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3p3_chromatix.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/s5k3p3_chromatix.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    com.android.nfc_extras \
    NfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    SecureElement \
    Tag \
    com.android.nfc_extras \
    android.hardware.nfc@1.1-service

PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.nfc_extras.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/perfboostsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfboostsconfig.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi_device.rc

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-montana.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.msm8937
