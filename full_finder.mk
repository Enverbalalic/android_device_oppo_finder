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

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Device identifier
PRODUCT_NAME := full_finder
PRODUCT_DEVICE := finder
PRODUCT_BRAND := oppo
PRODUCT_MANUFACTURER := oppo
PRODUCT_MODEL := Finder-X907

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oppo/finder/device.mk)
$(call inherit-product-if-exists, vendor/oppo/finder/full_finder.mk)
