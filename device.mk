#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := mi

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt8167 \
    init.mt8167.usb.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.sensor_1_0.rc \
    meta_init.modem.rc \
    meta_init.rc \
    init.project.rc \
    meta_init.connectivity.rc \
    meta_init.project.rc \
    init.mt8167.rc \
    factory_init.connectivity.rc \
    init.modem.rc \
    multi_init.rc \
    init.connectivity.rc \
    ueventd.rc \
    init.rc \
    init.recovery.mt8167.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/mi_lx04/mi_lx04-vendor.mk)
