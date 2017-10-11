# Copyright (C) 2016-2017 Paranoid Android
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

# Check for target product
ifeq ($(TARGET_PRODUCT),pa_k3gxx)

# Inherit device configuration
$(call inherit-product, device/samsung/k3gxx/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Override AOSP build properties
PRODUCT_NAME := pa_k3gxx
PRODUCT_DEVICE := k3gxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G900H
PRODUCT_MANUFACTURER := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-G900H \
    PRODUCT_NAME=k3gxx \
    PRODUCT_DEVICE=k3gxx \
    TARGET_DEVICE=k3gxx \
    BUILD_FINGERPRINT="samsung/k3gxx/k3g:6.0.1/MMB29K/G900HXXU1CPF2:user/release-keys" \
    PRIVATE_BUILD_DESC="k3gxx-user 6.0.1 MMB29K G900HXXU1CPF2 release-keys"

# Paranoid Android platform
include vendor/pa/main.mk

endif
