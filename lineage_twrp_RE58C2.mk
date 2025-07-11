#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/realme/RE58C2
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from RMX3261 device
$(call inherit-product, device/realme/RE58C2/device.mk)

PRODUCT_DEVICE := RE58C2
PRODUCT_NAME := twrp_RE58C2
PRODUCT_BRAND := realme
PRODUCT_MODEL := RE58C2
PRODUCT_MANUFACTURER := realme
