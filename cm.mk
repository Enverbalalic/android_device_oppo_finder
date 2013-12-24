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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/finder/full_finder.mk)

# Optional CM packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable
    
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=X907 \
    BUILD_FINGERPRINT="OPPO/msm8660_surf/msm8660_surf:4.4.2/KOT49H/eng.oppo.214859:user/release-keys" \
    PRIVATE_BUILD_DESC="msm8660_surf-user 4.4.2 KOT49H eng.oppo.214859 release-keys"

# Device specific
PRODUCT_NAME    := cm_finder
PRODUCT_DEVICE  := finder
