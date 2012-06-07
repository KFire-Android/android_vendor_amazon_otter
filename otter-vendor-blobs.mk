# Copyright (C) 2012 The Android Open Source Project
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

# Prebuilt libraries that are needed to build open-source libraries
# Copyright (C) 2012 The Android Open Source Project
#
# All the blobs necessary for Kindle Fire

# TI-Connectivity / 127x .ini file
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    vendor/amazon/otter/proprietary/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    vendor/amazon/otter/proprietary/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    vendor/amazon/otter/proprietary/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin.orig \
    vendor/amazon/otter/proprietary/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini \

# Prebuilts /bin
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/bin/rild:/system/bin/rild \
    vendor/amazon/otter/proprietary/bin/strace:/system/bin/strace \
    vendor/amazon/otter/proprietary/bin/temperature_log.sh:/system/bin/temperature_log.sh \
    vendor/amazon/otter/proprietary/bin/battery_log.sh:/system/bin/battery_log.sh \
    vendor/amazon/otter/proprietary/bin/klog.sh:/system/bin/klog.sh \
    vendor/amazon/otter/proprietary/bin/fix-mac.sh:/system/bin/fix-mac.sh \
    vendor/amazon/otter/proprietary/bin/idme:/system/bin/idme \
    vendor/amazon/otter/proprietary/bin/wpa_cli:/system/bin/wpa_cli \
    vendor/amazon/otter/proprietary/bin/wpa_supplicant:/system/bin/wpa_supplicant \

# Prebuilts /system/etc
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/etc/gps.conf:/system/etc/gps.conf \
    vendor/amazon/otter/proprietary/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    vendor/amazon/otter/proprietary/etc/vold.conf:/system/etc/vold.conf \
    vendor/amazon/otter/proprietary/etc/vold.fstab:/system/etc/vold.fstab \
    vendor/amazon/otter/proprietary/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \

#   vendor/amazon/otter/proprietary/usr/keychars/qtouch-touchscreen.kcm:/system/usr/keychars/qtouch-touchscreen.kcm \
#   vendor/amazon/otter/proprietary/usr/keylayout/qtouch-touchscreen.kl:/system/usr/keylayout/qtouch-touchscreen.kl \
#   vendor/amazon/otter/proprietary/usr/idc/omap-keypad.idc:/system/usr/idc/omap-keypad.idc \
#   vendor/amazon/otter/proprietary/usr/keychars/omap-keypad.kcm:/system/usr/keychars/omap-keypad.kcm \
#   vendor/amazon/otter/proprietary/usr/keylayout/omap-keypad.kl:/system/usr/keylayout/omap-keypad.kl \
# Prebuilt /system/usr
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/usr/idc/ilitek_i2c.idc:/system/usr/idc/ilitek_i2c.idc \
    vendor/amazon/otter/proprietary/usr/idc/twl6030_pwrbutton.idc:/system/usr/idc/twl6030_pwrbutton.idc \
    vendor/amazon/otter/proprietary/usr/keylayout/twl6030_pwrbutton.kl:/system/usr/keylayout/twl6030_pwrbutton.kl \
    vendor/amazon/otter/proprietary/usr/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \

# Prebuilt /system/lib
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/lib/sensors.otter.so:/system/lib/hw/sensors.otter.so \
    vendor/amazon/otter/proprietary/lib/libidme.so:/system/lib/libidme.so \
    vendor/amazon/otter/proprietary/lib/libwpa_client.so:/system/lib/libwpa_client.so \

# Graphics
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/imgtec/lib/hw/gralloc.omap4430.so:/system/vendor/lib/hw/gralloc.omap4430.so \
    vendor/amazon/otter/proprietary/imgtec/lib/egl/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/egl/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libglslcompiler_SGX540_120.so:/system/vendor/lib/libglslcompiler_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libIMGegl_SGX540_120.so:/system/vendor/lib/libIMGegl_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libpvr2d_SGX540_120.so:/system/vendor/lib/libpvr2d_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libpvrANDROID_WSEGL_SGX540_120.so:/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libPVRScopeServices_SGX540_120.so:/system/vendor/lib/libPVRScopeServices_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libsrv_init_SGX540_120.so:/system/vendor/lib/libsrv_init_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libsrv_um_SGX540_120.so:/system/vendor/lib/libsrv_um_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/lib/libusc_SGX540_120.so:/system/vendor/lib/libusc_SGX540_120.so \
    vendor/amazon/otter/proprietary/imgtec/bin/pvrsrvinit_SGX540_120:/system/bin/pvrsrvinit \
    vendor/amazon/otter/proprietary/imgtec/bin/pvrsrvctl:/system/bin/pvrsrvctl \
    vendor/amazon/otter/proprietary/imgtec/etc/powervr.ini:/system/etc/powervr.ini \

# Temporarily use prebuilt DOMX
# Prebuilts /system/lib
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/lib/libdomx.so:/system/lib/libdomx.so \
    vendor/amazon/otter/proprietary/lib/libmm_osal.so:/system/lib/libmm_osal.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
    vendor/amazon/otter/proprietary/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
    vendor/amazon/otter/proprietary/lib/libOMX_Core.so:/system/lib/libOMX_Core.so \

