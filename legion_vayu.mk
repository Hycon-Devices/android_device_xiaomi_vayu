#
# Copyright (C) 2018-2021 AOSP
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common Legion OS configurations
$(call inherit-product, vendor/legion/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=chdelacr

PRODUCT_NAME := legion_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="vayu"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
