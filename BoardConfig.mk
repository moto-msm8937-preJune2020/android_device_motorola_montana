#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#               2018 The LineageOS Project
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
include device/motorola/msm8937-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/motorola/montana/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/montana
DEVICE_MANIFEST += $(DEVICE_PATH)/manifest.xml

# Asserts
TARGET_OTA_ASSERT_DEVICE := montana,montana_retail

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_LZ4C_DT := true
TARGET_KERNEL_CONFIG := montana_defconfig

# NFC
NXP_CHIP_TYPE := pn544
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616    #    16484 * 1024 mmcblk0p38
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456      #   262144 * 1024 mmcblk0p52
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3623878656    #  3538944 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272 # 25784303 * 1024 mmcblk0p54
BOARD_VENDORIMAGE_PARTITION_SIZE := 687865856

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# SELinux
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Vendor security patch
VENDOR_SECURITY_PATCH := 2019-08-01
