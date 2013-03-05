# Copyright (C) 2009 The Android Open Source Project
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

## Inherit vendor proprietary files
$(call inherit-product, vendor/samsung/callisto/vendor_blobs.mk)

include device/samsung/msm7x27-common/common.mk

## Device specific overlay
DEVICE_PACKAGE_OVERLAYS := device/samsung/callisto/overlay

## Audio
PRODUCT_PACKAGES += \
    audio.primary.callisto \
    audio_policy.callisto

## Camera
PRODUCT_PACKAGES += \
    camera.callisto

## Audio
PRODUCT_PACKAGES += \
   audio_policy.callisto \
   audio.primary.callisto

## Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/callisto/ramdisk/init.gt-i5510.rc:root/init.gt-i5510.rc \
    device/samsung/callisto/ramdisk/ueventd.gt-i5510.rc:root/ueventd.gt-i5510.rc \
    device/samsung/callisto/ramdisk/callisto.rle:root/callisto.rle

## LDPI assets
PRODUCT_AAPT_PREF_CONFIG := ldpi
