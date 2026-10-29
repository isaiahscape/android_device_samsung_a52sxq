#
# Copyright (C) 2023 The PixelOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# NFC
TARGET_HAVE_SEC_NFC := true

# Inherit device configuration
$(call inherit-product, device/samsung/a52sxq/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := custom_a52sxq
PRODUCT_DEVICE := a52sxq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A528B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30

# Vendor fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a52sxqxx/a52sxq:11/RP1A.200720.012/A528BXXUAGXK8:user/release-keys" \
    BuildDesc="a52sxqxx-user 11 RP1A.200720.012 A528BXXUAGXK8 release-keys"
