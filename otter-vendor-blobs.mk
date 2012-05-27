# Copyright (C) 2010 The Android Open Source Project
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

PROPRIETARY_BLOB_PATH := vendor/amazon/otter/proprietary
# All the blobs necessary for Kindle Fire
PRODUCT_COPY_FILES  += \
	$(PROPRIETARY_BLOB_PATH)/alsa.conf:/system/usr/share/alsa.conf \
	$(PROPRIETARY_BLOB_PATH)/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
	$(PROPRIETARY_BLOB_PATH)/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \
	$(PROPRIETARY_BLOB_PATH)/base_image_app_m3.xem3:/system/lib/ducati/base_image_app_m3.xem3 \
	$(PROPRIETARY_BLOB_PATH)/base_image_sys_m3.xem3:/system/lib/ducati/base_image_sys_m3.xem3 \
	$(PROPRIETARY_BLOB_PATH)/d2c_test:/system/bin/d2c_test \
	$(PROPRIETARY_BLOB_PATH)/en-US_lh0_sg.bin:/system/tts/lang_pico/en-US_lh0_sg.bin \
	$(PROPRIETARY_BLOB_PATH)/en-US_ta.bin:/system/tts/lang_pico/en-US_ta.bin \
	$(PROPRIETARY_BLOB_PATH)/es-ES_ta.bin:/system/tts/lang_pico/es-ES_ta.bin \
	$(PROPRIETARY_BLOB_PATH)/es-ES_zl0_sg.bin:/system/tts/lang_pico/es-ES_zl0_sg.bin \
	$(PROPRIETARY_BLOB_PATH)/event-log-tags:/system/etc/event-log-tags \
	$(PROPRIETARY_BLOB_PATH)/gralloc.default.so:/system/lib/hw/gralloc.default.so \
	$(PROPRIETARY_BLOB_PATH)/gralloc.omap4.so:/system/vendor/lib/hw/gralloc.omap4.so \
	$(PROPRIETARY_BLOB_PATH)/hostap:/system/bin/hostap \
	$(PROPRIETARY_BLOB_PATH)/hostapd.conf:/system/etc/wifi/softap/hostapd.conf \
	$(PROPRIETARY_BLOB_PATH)/icudt44l.dat:/system/usr/icu/icudt44l.dat \
	$(PROPRIETARY_BLOB_PATH)/libaudiopolicy.so:/system/lib/libaudiopolicy.so \
	$(PROPRIETARY_BLOB_PATH)/libaudiomodemgeneric.so:/system/lib/libaudiomodemgeneric.so \
	$(PROPRIETARY_BLOB_PATH)/libaudioeffect_jni.so:/system/lib/libaudioeffect_jni.so \
	$(PROPRIETARY_BLOB_PATH)/libdrm1.so:/system/lib/libdrm1.so \
	$(PROPRIETARY_BLOB_PATH)/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
	$(PROPRIETARY_BLOB_PATH)/libGLESv1_CM.so:/system/lib/libGLESv1_CM.so \
	$(PROPRIETARY_BLOB_PATH)/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
	$(PROPRIETARY_BLOB_PATH)/libGLESv1_CM_ORG_CF3D.so:/system/vendor/lib/egl/libGLESv1_CM_ORG_CF3D.so \
	$(PROPRIETARY_BLOB_PATH)/libGLESv2.so:/system/lib/libGLESv2.so \
	$(PROPRIETARY_BLOB_PATH)/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
	$(PROPRIETARY_BLOB_PATH)/libglslcompiler.so:/system/vendor/lib/libglslcompiler.so \
	$(PROPRIETARY_BLOB_PATH)/libIMGegl.so:/system/vendor/lib/libIMGegl.so \
	$(PROPRIETARY_BLOB_PATH)/libjni_pinyinime.so:/system/lib/libjni_pinyinime.so \
	$(PROPRIETARY_BLOB_PATH)/libjnigraphics.so:/system/lib/libjnigraphics.so \
	$(PROPRIETARY_BLOB_PATH)/libmedia_jni.so:/system/lib/libmedia_jni.so \
	$(PROPRIETARY_BLOB_PATH)/librs_jni.so:/system/lib/librs_jni.so \
	$(PROPRIETARY_BLOB_PATH)/librtp_jni.so:/system/lib/librtp_jni.so \
	$(PROPRIETARY_BLOB_PATH)/libsrec_jni.so:/system/lib/libsrec_jni.so \
	$(PROPRIETARY_BLOB_PATH)/libomap_mm_library_jni.so:/system/lib/libomap_mm_library_jni.so \
	$(PROPRIETARY_BLOB_PATH)/libnetutils.so:/system/lib/libnetutils.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.IMAGE.JPEGD.so:/system/lib/libOMX.TI.DUCATI1.IMAGE.JPEGD.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.VP7D.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.VP7D.so \
	$(PROPRIETARY_BLOB_PATH)/libomxcameraadapter.so:/system/lib/libomxcameraadapter.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.IMAGE.JPEGD.so:/system/lib/system/lib/libOMX.TI.DUCATI1.IMAGE.JPEGD.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.H264D.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264D.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.MPEG4D.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4D.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX.TI.DUCATI1.VIDEO.VP6D.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.VP6D.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX_Core.so:/system/lib/libOMX_Core.so \
	$(PROPRIETARY_BLOB_PATH)/libOMX_CoreOsal.so:/system/lib/libOMX_CoreOsal.so \
	$(PROPRIETARY_BLOB_PATH)/libomx_proxy_common.so:/system/lib/libomx_proxy_common.so \
	$(PROPRIETARY_BLOB_PATH)/libomx_rpc.so:/system/lib/libomx_rpc.so \
	$(PROPRIETARY_BLOB_PATH)/libpvr2d.so:/system/vendor/lib/libpvr2d.so \
	$(PROPRIETARY_BLOB_PATH)/libpvrANDROID_WSEGL.so:/system/vendor/lib/libpvrANDROID_WSEGL.so \
	$(PROPRIETARY_BLOB_PATH)/libPVRScopeServices.so:/system/vendor/lib/libPVRScopeServices.so \
	$(PROPRIETARY_BLOB_PATH)/libreference-ril.so:/system/lib/libreference-ril.so \
	$(PROPRIETARY_BLOB_PATH)/libril.so:/system/lib/libril.so \
	$(PROPRIETARY_BLOB_PATH)/libRS.so:/system/lib/libRS.so \
	$(PROPRIETARY_BLOB_PATH)/libsrv_init.so:/system/vendor/lib/libsrv_init.so \
	$(PROPRIETARY_BLOB_PATH)/libsrv_um.so:/system/vendor/lib/libsrv_um.so \
	$(PROPRIETARY_BLOB_PATH)/libssl.so:/system/lib/libssl.so \
	$(PROPRIETARY_BLOB_PATH)/libttssynthproxy.so:/system/lib/libttssynthproxy.so \
	$(PROPRIETARY_BLOB_PATH)/libusc.so:/system/vendor/lib/libusc.so \
	$(PROPRIETARY_BLOB_PATH)/lights.omap4.so:/system/lib/hw/lights.omap4.so \
	$(PROPRIETARY_BLOB_PATH)/omap-keypad.kcm.bin:/system/usr/keychars/omap-keypad.kcm.bin \
	$(PROPRIETARY_BLOB_PATH)/omap-keypad.kl:/system/usr/keylayout/omap-keypad.kl \
	$(PROPRIETARY_BLOB_PATH)/overlay.omap4.so:/system/lib/hw/overlay.omap4.so \
	$(PROPRIETARY_BLOB_PATH)/pvrsrvinit:/system/bin/pvrsrvinit \
	$(PROPRIETARY_BLOB_PATH)/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \
	$(PROPRIETARY_BLOB_PATH)/qwerty.kl:/system/usr/keylayout/qwerty.kl \
	$(PROPRIETARY_BLOB_PATH)/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \
	$(PROPRIETARY_BLOB_PATH)/rild:/system/bin/rild \
	$(PROPRIETARY_BLOB_PATH)/sensors.omap4sdp.so:/system/lib/hw/sensors.omap4sdp.so \
	$(PROPRIETARY_BLOB_PATH)/syslink_daemon.out:/system/bin/syslink_daemon.out \
	$(PROPRIETARY_BLOB_PATH)/tiap_loader:/system/bin/tiap_loader \
	$(PROPRIETARY_BLOB_PATH)/vold:/system/bin/vold \
	$(PROPRIETARY_BLOB_PATH)/battery_log.sh:/system/bin/battery_log.sh \
	$(PROPRIETARY_BLOB_PATH)/klog.sh:/system/bin/klog.sh \
	$(PROPRIETARY_BLOB_PATH)/temperature_log.sh:/system/bin/temperature_log.sh \
	$(PROPRIETARY_BLOB_PATH)/touch_firmware.sh:/system/bin/touch_firmware.sh \
	$(PROPRIETARY_BLOB_PATH)/firmware.bin:/system/etc/wifi/firmware.bin \
	$(PROPRIETARY_BLOB_PATH)/firmware_ap.bin:/system/etc/wifi/softap/firmware_ap.bin \
	$(PROPRIETARY_BLOB_PATH)/TIInit_7.2.31.bts:/system/lib/firmware/TIInit_7.2.31.bts \
	$(PROPRIETARY_BLOB_PATH)/TIInit_10.4.27.22.bts:/system/lib/firmware/TIInit_10.4.27.22.bts \
	$(PROPRIETARY_BLOB_PATH)/TIInit_10.6.15.25.bts:/system/lib/firmware/TIInit_10.6.15.25.bts \
	$(PROPRIETARY_BLOB_PATH)/TIInit_10.6.15.39.bts:/system/lib/firmware/TIInit_10.6.15.39.bts \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/bcm203x.ko:/system/lib/modules/drivers/bluetooth/bcm203x.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/bfusb.ko:/system/lib/modules/drivers/bluetooth/bfusb.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/bpa10x.ko:/system/lib/modules/drivers/bluetooth/bpa10x.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/btusb.ko:/system/lib/modules/drivers/bluetooth/btusb.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/hci_uart.ko:/system/lib/modules/drivers/bluetooth/hci_uart.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/drivers/bluetooth/hci_vhci.ko:/system/lib/modules/drivers/bluetooth/hci_vhci.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/net/bluetooth/bluetooth.ko:/system/lib/modules/net/bluetooth/bluetooth.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/net/bluetooth/l2cap.ko:/system/lib/modules/net/bluetooth/l2cap.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/net/bluetooth/bnep/bnep.ko:/system/lib/modules/net/bluetooth/bnep/bnep.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/net/bluetooth/hidp/hidp.ko:/system/lib/modules/net/bluetooth/hidp/hidp.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/net/bluetooth/rfcomm/rfcomm.ko:/system/lib/modules/net/bluetooth/rfcomm/rfcomm.ko \
	$(PROPRIETARY_BLOB_PATH)/lib/modules/compat/compat.ko:/system/lib/modules/compat/compat.ko \
	$(PROPRIETARY_BLOB_PATH)/hostapd.conf:/system/etc/wifi/softap/hostapd.conf \
	$(PROPRIETARY_BLOB_PATH)/tiap_drv.ko:/system/etc/wifi/softap/tiap_drv.ko \
	$(PROPRIETARY_BLOB_PATH)/tiwlan.ini:/system/etc/wifi/tiwlan.ini \
	$(PROPRIETARY_BLOB_PATH)/tiwlan.ini.activemode:/system/etc/wifi/tiwlan.ini.activemode \
	$(PROPRIETARY_BLOB_PATH)/tiwlan_ap.ini:/system/etc/wifi/softap/tiwlan_ap.ini \
	$(PROPRIETARY_BLOB_PATH)/tiwlan_drv.ko:/system/etc/wifi/tiwlan_drv.ko \
	$(PROPRIETARY_BLOB_PATH)/wlan_loader:/system/bin/wlan_loader \
	$(PROPRIETARY_BLOB_PATH)/wlan_cu.st:/system/etc/wifi/wlan_cu.st \
	$(PROPRIETARY_BLOB_PATH)/run_wlancu.sh:/system/xbin/run_wlancu.sh \
	$(PROPRIETARY_BLOB_PATH)/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
	$(PROPRIETARY_BLOB_PATH)/idme:/system/bin/idme
