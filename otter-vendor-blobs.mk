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


# Prebuilts /bin
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/bin/battery_log.sh:/system/bin/battery_log.sh \
    vendor/amazon/otter/proprietary/bin/idme:/system/bin/idme \
    vendor/amazon/otter/proprietary/bin/klog.sh:/system/bin/klog.sh \
    vendor/amazon/otter/proprietary/bin/temperature_log.sh:/system/bin/temperature_log.sh \

# Prebuilt /system/lib
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/lib/libidme.so:/system/lib/libidme.so \
    vendor/amazon/otter/proprietary/lib/hw/sensors.otter.so:/system/lib/hw/sensors.otter.so \

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
    vendor/amazon/otter/proprietary/imgtec/bin/pvrsrvctl_SGX540_120:/system/bin/pvrsrvctl \
    vendor/amazon/otter/proprietary/imgtec/etc/powervr.ini:/system/etc/powervr.ini \

# DOMX/OMAP4
ifdef CM_BUILD
PRODUCT_COPY_FILES += \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libdomx.so:/system/lib/libdomx.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libdrmdecrypt.so:/system/lib/libdrmdecrypt.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libI420colorconvert.so:/system/lib/libI420colorconvert.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libion.so:/system/lib/libion.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libmm_osal.so:/system/lib/libmm_osal.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libOMX_Core.so:/system/lib/libOMX_Core.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libstagefrighthw.so:/system/lib/libstagefrighthw.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/libtiutils.so:/system/lib/libtiutils.so \
    vendor/amazon/otter/proprietary/omap4xxx/lib/hw/camera.omap4.so:/system/lib/hw/camera.omap4.so \
    vendor/amazon/otter/proprietary/omap4xxx/vendor/lib/hw/hwcomposer.omap4.so:/system/vendor/lib/hw/hwcomposer.omap4.so \

endif
