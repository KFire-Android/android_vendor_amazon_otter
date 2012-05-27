!#/bin/bash

# Copy over our product make file
if [ ! -e vendor/cyanogen/products/cyanogen_otter.mk ]
	do
		echo '# Inherit AOSP device configuration for Fire.
			$(call inherit-product, device/amazon/otter/otter.mk)
			# Inherit some common cyanogenmod stuff.
			$(call inherit-product, vendor/cyanogen/products/common.mk)
			
			#
			# Setup device specific product configuration.
			#
			PRODUCT_NAME := cyanogen_otter
			PRODUCT_BRAND := amazon
			PRODUCT_DEVICE := otter
			PRODUCT_MODEL := Amazon Kindle Fire
			PRODUCT_MANUFACTURER := amazon
			PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=otter PRODUCT_BOARD=omap4sdp BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"
			PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/tablet
			
			# Release name and versioning
			PRODUCT_RELEASE_NAME := otter
			PRODUCT_VERSION_DEVICE_SPECIFIC :=
				-include vendor/cyanogen/products/common_versions.mk

			# Inherit an override for versioning to infer different recoveries
			# only if it exists; and it should only exist in the twrp branch
			$(call inherit-product-if-exists, device/amazon/blaze/releasetools/versions.mk)

			PRODUCT_COPY_FILES += \
				vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip' >> vendor/cyaonogen/products/cyanogen_blaze.mk
		
		# Since the file wasn't there, assume the Android.mk file hasn't been updated either
		echo '
			
			# Put this at the end to avoid conflicts
			PRODUCT_MAKEFILES += \
				$(LOCAL_DIR)/cyanogen_blaze.mk \' >> vendor/cyanogen/producs/AndroidProducts.mk
fi

./vendor/cyanogen/get-rommanger
