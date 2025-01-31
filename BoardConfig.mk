#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/chef

# Assertions
TARGET_OTA_ASSERT_DEVICE := chef

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := lineageos_chef_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8998

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0A0000000
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# RIL
ENABLE_VENDOR_RIL_SERVICE := false

# Treble
PRODUCT_SHIPPING_API_LEVEL := 27

# Wifi
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"

# inherit from the proprietary version
-include vendor/motorola/chef/BoardConfigVendor.mk
