#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Add overlay
DEVICE_PACKAGE_OVERLAYS += device/oppo/finder/overlay

# Define kind of DPI
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#Date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Misc packages	
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface \
    Stk \
    static_busybox \
    make_ext4fs \
    setup_fs
    
# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Vold and storage
PRODUCT_COPY_FILES += \
    device/oppo/finder/configs/vold.fstab:system/etc/vold.fstab

# Media
PRODUCT_COPY_FILES += \
   	device/oppo/finder/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/oppo/finder/configs/media_codecs.xml:system/etc/media_codecs.xml \
	device/oppo/finder/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/oppo/finder/configs/audio_effects.conf:system/etc/audio_effects.conf

# Thermald
PRODUCT_COPY_FILES += \
    device/oppo/finder/configs/thermald-finder.conf:system/etc/thermald.conf

# Init stuff
PRODUCT_COPY_FILES += \
    device/oppo/finder/configs/root/init.rc:root/init.rc \
    device/oppo/finder/configs/root/init.qcom.rc:root/init.qcom.rc \
    device/oppo/finder/configs/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/oppo/finder/configs/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/oppo/finder/configs/fstab.finder:root/fstab.finder \
    device/oppo/finder/configs/qcominit/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
	device/oppo/finder/configs/qcominit/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/oppo/finder/configs/qcominit/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	device/oppo/finder/configs/qcominit/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# Key layouts and kcm keymaps
PRODUCT_COPY_FILES += \
    device/oppo/finder/configs/keys/8660_handset.kl:system/usr/keylayout/8660_handset.kl\
    device/oppo/finder/configs/keys/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml
	
# GPS configuration
PRODUCT_COPY_FILES += \
	device/oppo/finder/configs/gps.conf:system/etc/gps.conf
	
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072
	ro.sf.lcd_density=240
	
# Debugging
PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	service.adb.enable=1 \
	sys.usb.config=adb \
	ro.debuggable=1 \
	persist.service.adb.enable=1

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# FS tools
PRODUCT_PACKAGES += \
    e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8660 \
	gralloc.msm8660 \
	copybit.msm8660

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	ro.adb.secure=0

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Other apps
PRODUCT_PACKAGES += \
    Apollo \
   	DSPManager \
   	libcyanogen-dsp \
    libncurses \
    bash \
    CMFileManager \
    LockClock \
    Torch \
	CMTorch \
	Trebuchet \

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
