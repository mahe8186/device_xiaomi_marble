#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := KSSRAO
MATRIXX_CHIPSET := SM7475
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400

# Gapps
WITH_GMS := true
BUILD_GOOGLE_MESSAGE := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true
