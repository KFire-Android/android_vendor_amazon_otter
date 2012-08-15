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

VENDOR_EXTRA := vendor/amazon/otter/proprietary

# Prebuilts for wla
PRODUCT_COPY_FILES += \
    $(VENDOR_EXTRA)/bin/wpa_client:/system/bin/wpa_client \
    $(VENDOR_EXTRA)/bin/wpa_client:/system/bin/wpa_supplicant \
    $(VENDOR_EXTRA)/lib/libwpa_client.so:system/lib/libwpa_client.so \
    $(VENDOR_EXTRA)/firmware/wlan/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    $(VENDOR_EXTRA)/firmware/wlan/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    $(VENDOR_EXTRA)/firmware/wlan/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    $(VENDOR_EXTRA)/firmware/wlan/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \

# Prebuilt omap4xxx files
PRODUCT_COPY_FILES += \
    $(VENDOR_EXTRA)/omap4xxx/hwcomposer.otter.so:system/vendor/lib/hw/hwcomposer.otter.so \
    $(VENDOR_EXTRA)/omap4xxx/libdomx.so:system/lib/libdomx.so \
    $(VENDOR_EXTRA)/omap4xxx/libion.so:system/lib/libion.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.MISC.SAMPLE.so:system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.VIDEO.DECODER.so:system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.VIDEO.H264E.so:system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
    $(VENDOR_EXTRA)/omap4xxx/libOMX_Core.so:system/lib/libOMX_Core.so \

