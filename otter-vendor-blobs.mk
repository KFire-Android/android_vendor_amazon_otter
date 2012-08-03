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

