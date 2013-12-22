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

#Kernel zImage
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/zImage:kernel

# Misc packages	
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface \
    Stk \
    static_busybox \
    make_ext4fs \
    setup_fs

# Prebuilts: /*
PRODUCT_COPY_FILES += \
    device/oppo/finder/prebuilt/root/init.rc:root/init.rc \
    device/oppo/finder/prebuilt/root/init.qcom.rc:root/init.qcom.rc \
    device/oppo/finder/prebuilt/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/oppo/finder/prebuilt/root/fstab.msm8660:root/fstab.msm8660 \
    device/oppo/finder/prebuilt/root/ueventd.qcom.rc:root/ueventd.qcom.rc

# Prebuilts: /lib/modules/*
PRODUCT_COPY_FILES += \
    device/oppo/finder/prebuilt/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	device/oppo/finder/prebuilt/system/lib/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
	device/oppo/finder/prebuilt/system/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	device/oppo/finder/prebuilt/system/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	device/oppo/finder/prebuilt/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/oppo/finder/prebuilt/system/lib/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
	device/oppo/finder/prebuilt/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko \
	device/oppo/finder/prebuilt/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
	device/oppo/finder/prebuilt/system/lib/modules/mmc_block_test.ko:system/lib/modules/mmc_block_test.ko \
	device/oppo/finder/prebuilt/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
	device/oppo/finder/prebuilt/system/lib/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
	device/oppo/finder/prebuilt/system/lib/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
	device/oppo/finder/prebuilt/system/lib/modules/qce.ko:system/lib/modules/qce.ko \
	device/oppo/finder/prebuilt/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/oppo/finder/prebuilt/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/oppo/finder/prebuilt/system/lib/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
	device/oppo/finder/prebuilt/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/oppo/finder/prebuilt/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	device/oppo/finder/prebuilt/system/lib/modules/test-iosched.ko:system/lib/modules/test-iosched.ko \
    device/oppo/finder/prebuilt/system/lib/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko

# Prebuilts: /system/etc/permissions/*
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
	
# Prebuilts: /system/bin/*	
PRODUCT_COPY_FILES += \
#   $(LOCAL_PATH)/prebuilt/system/bin/bridgemgrd:system/bin/bridgemgrd \
#	$(LOCAL_PATH)/prebuilt/system/bin/btnvtool:system/bin/btnvtool \
#	$(LOCAL_PATH)/prebuilt/system/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
#	$(LOCAL_PATH)/prebuilt/system/bin/ks:system/bin/ks \
#	$(LOCAL_PATH)/prebuilt/system/bin/mpdecision:system/bin/mpdecision \
#	$(LOCAL_PATH)/prebuilt/system/bin/netmgrd:system/bin/netmgrd \
#	$(LOCAL_PATH)/prebuilt/system/bin/port-bridge:system/bin/port-bridge \
#	$(LOCAL_PATH)/prebuilt/system/bin/qcks:system/bin/qcks \
#	$(LOCAL_PATH)/prebuilt/system/bin/qmiproxy:system/bin/qmiproxy \
#	$(LOCAL_PATH)/prebuilt/system/bin/qmuxd:system/bin/qmuxd \
#	$(LOCAL_PATH)/prebuilt/system/bin/rild:system/bin/rild \
#	$(LOCAL_PATH)/prebuilt/system/bin/rmt_storage:system/bin/rmt_storage \
#	$(LOCAL_PATH)/prebuilt/system/bin/usbhub:system/bin/usbhub \
#	$(LOCAL_PATH)/prebuilt/system/bin/usbhub_init:system/bin/usbhub_init \
#	$(LOCAL_PATH)/prebuilt/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
#	$(LOCAL_PATH)/prebuilt/system/bin/e2fsck:system/bin/e2fsck \
#	$(LOCAL_PATH)/prebuilt/system/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
#	$(LOCAL_PATH)/prebuilt/system/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
	$(LOCAL_PATH)/prebuilt/system/bin/qseecomd:system/bin/qseecomd \
	$(LOCAL_PATH)/prebuilt/system/bin/thermald:system/bin/thermald \
	$(LOCAL_PATH)/prebuilt/system/etc/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/prebuilt/system/etc/dbus.conf:system/etc/dbus.conf \
	$(LOCAL_PATH)/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/BCM4330B1_002_001_003_0379_0430.hcd:system/etc/firmware/BCM4330B1_002_001_003_0379_0430.hcd \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	$(LOCAL_PATH)/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	$(LOCAL_PATH)/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/prebuilt/system/lib/libacdbloader.so:system/lib/libacdbloader.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libaudcal.so:system/lib/libaudcal.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libaudioparsers.so:system/lib/libaudioparsers.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libcamera_client.so:system/lib/libcamera_client.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libdiag.so:system/lib/libdiag.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libdsutils.so:system/lib/libdsutils.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libEGL.so:system/lib/libEGL.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libgemini.so:system/lib/libgemini.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libGLES_trace.so:system/lib/libGLES_trace.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libGLESv1_CM.so:system/lib/libGLESv1_CM.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libGLESv2.so:system/lib/libGLESv2.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libgps.utils.so:system/lib/libgps.utils.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libhardware_legacy.so:system/lib/libhardware_legacy.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libidl.so:system/lib/libidl.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libimage-jpeg-dec-omx-comp.so:system/lib/libimage-jpeg-dec-omx-comp.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libimage-jpeg-enc-omx-comp.so:system/lib/libimage-jpeg-enc-omx-comp.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libimage-omx-common.so:system/lib/libimage-omx-common.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libloc_eng.so:system/lib/libloc_eng.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmipl.so:system/lib/libmmipl.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmmpo.so:system/lib/libmmmpo.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmosal.so:system/lib/libmmosal.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmparser.so:system/lib/libmmparser.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmstereo.so:system/lib/libmmstereo.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libnetmgr.so:system/lib/libnetmgr.so \
	$(LOCAL_PATH)/prebuilt/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxCore.so:system/lib/libOmxCore.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxVenc.so:system/lib/libOmxVenc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqdi.so:system/lib/libqdi.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqdp.so:system/lib/libqdp.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqmi.so:system/lib/libqmi.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqmiservices.so:system/lib/libqmiservices.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqueue.so:system/lib/libqueue.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libreference-ril.so:system/lib/libreference-ril.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libril.so:system/lib/libril.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_amrnb_common.so:system/lib/libstagefright_amrnb_common.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_avc_common.so:system/lib/libstagefright_avc_common.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_enc_common.so:system/lib/libstagefright_enc_common.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_foundation.so:system/lib/libstagefright_foundation.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_aacdec.so:system/lib/libstagefright_soft_aacdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_aacenc.so:system/lib/libstagefright_soft_aacenc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_amrdec.so:system/lib/libstagefright_soft_amrdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_amrnbenc.so:system/lib/libstagefright_soft_amrnbenc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_amrwbenc.so:system/lib/libstagefright_soft_amrwbenc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_flacenc.so:system/lib/libstagefright_soft_flacenc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_g711dec.so:system/lib/libstagefright_soft_g711dec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_h264dec.so:system/lib/libstagefright_soft_h264dec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_h264enc.so:system/lib/libstagefright_soft_h264enc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_mp3dec.so:system/lib/libstagefright_soft_mp3dec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_mpeg4dec.so:system/lib/libstagefright_soft_mpeg4dec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_mpeg4enc.so:system/lib/libstagefright_soft_mpeg4enc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_rawdec.so:system/lib/libstagefright_soft_rawdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_vorbisdec.so:system/lib/libstagefright_soft_vorbisdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_soft_vpxdec.so:system/lib/libstagefright_soft_vpxdec.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefright_yuv.so:system/lib/libstagefright_yuv.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libv8.so:system/lib/libv8.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libloc_ext.so:system/lib/libloc_ext.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_faceproc.so:system/lib/libmmcamera_faceproc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_frameproc.so:system/lib/libmmcamera_frameproc.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_hdr_lib.so:system/lib/libmmcamera_hdr_lib.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_image_stab.so:system/lib/libmmcamera_image_stab.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_interface2.so:system/lib/libmmcamera_interface2.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_statsproc31.so:system/lib/libmmcamera_statsproc31.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmcamera_wavelet_lib.so:system/lib/libmmcamera_wavelet_lib.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libmmstillomx.so:system/lib/libmmstillomx.so \
	$(LOCAL_PATH)/prebuilt/system/lib/libqcci_legacy.so:system/lib/libqcci_legacy.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
	$(LOCAL_PATH)/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/audio.primary.msm8660.so:system/lib/hw/audio.primary.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/audio_policy.msm8660.so:system/lib/hw/audio_policy.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/camera.msm8660.so:system/lib/hw/camera.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/gralloc.msm8660.so:system/lib/hw/gralloc.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/hwcomposer.msm8660.so:system/lib/hw/hwcomposer.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/hw/sensors.msm8660.so:system/lib/hw/sensors.msm8660.so \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/8660_handset.kl:system/lib/usr/keylayout/8660_handset.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/AVRCP.kl:system/lib/usr/keylayout/AVRCP.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/cyttsp-i2c.kl:system/lib/usr/keylayout/cyttsp-i2c.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/ffa-keypad.kl:system/lib/usr/keylayout/ffa-keypad.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/fluid-keypad.kl:system/lib/usr/keylayout/fluid-keypad.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Generic.kl:system/lib/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_05ac_Product_0239.kl:system/lib/usr/keylayout/Vendor_05ac_Product_0239.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_22b8_Product_093d.kl:system/lib/usr/keylayout/Vendor_22b8_Product_093d.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_045e_Product_028e.kl:system/lib/usr/keylayout/Vendor_045e_Product_028e.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_046d_Product_c216.kl:system/lib/usr/keylayout/Vendor_046d_Product_c216.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_046d_Product_c294.kl:system/lib/usr/keylayout/Vendor_046d_Product_c294.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_046d_Product_c299.kl:system/lib/usr/keylayout/Vendor_046d_Product_c299.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_046d_Product_c532.kl:system/lib/usr/keylayout/Vendor_046d_Product_c532.kl \
	$(LOCAL_PATH)/prebuilt/system/lib/usr/keylayout/Vendor_054c_Product_0268.kl:system/lib/usr/keylayout/Vendor_054c_Product_0268.kl
	
