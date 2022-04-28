#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
-include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X01BD

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_X01BD,X01BD

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/vintf/device_framework_compatibility_matrix.xml

# Kernel
KERNEL_DEFCONFIG := asus/X01BD_defconfig

# Inherit the proprietary files
-include vendor/asus/X01BD/BoardConfigVendor.mk
