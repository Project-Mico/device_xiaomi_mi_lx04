#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mi_lx04 device
$(call inherit-product, device/xiaomi/lx04/device.mk)

PRODUCT_DEVICE := lx04
PRODUCT_NAME := full_lx04
PRODUCT_BRAND := XiaoAiTongXue
PRODUCT_MODEL := LX04
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lx04-user 8.1.0 O11019 1661495989 test-keys"

BUILD_FINGERPRINT := XiaoAiTongXue/lx04/lx04:8.1.0/O11019/1661495989:user/test-keys
