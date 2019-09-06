#
# Copyright (C) 2018 The LineageOS Project
#
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/huawei/atomu/device.mk)

PRODUCT_BRAND := HUAWEI
PRODUCT_DEVICE := atomu-common
PRODUCT_MANUFACTURER := huawei
PRODUCT_MODEL := ATU-LXX
PRODUCT_NAME := lineage_atomu

PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_VENDOR_PRODUCT_NAME := atomu

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="atomu" \
    PRODUCT_NAME="atomu" \
    PRIVATE_BUILD_DESC="ATU-L22-user 8.0.0 HUAWEIATU-L22 154(C636) release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "HUAWEI/ATU-L22/HWATU-QG:8.0.0/HUAWEIATU-L22/154(C636):user/release-keys"
