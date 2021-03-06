# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/athene/device.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aokp/configs/nfc_enhanced.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

$(call inherit-product-if-exists, vendor/motorola/msm8952/athene/athene-vendor.mk)

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := aokp_athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := athene
# Device identifier. This must come after all inclusions

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G4/G4 Plus"

