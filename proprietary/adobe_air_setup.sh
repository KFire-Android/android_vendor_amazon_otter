#!/system/bin/sh

if ls /data/data/com.adobe.air/lib/libCore.so; then
	echo '/data/data/com.adobe.air/lib/libCore.so already exists'
else
	ln -s /system/lib/libCore.so /data/data/com.adobe.air/lib/libCore.so
fi

if ls /data/data/com.adobe.air/lib/libstagefright_froyo.so; then
	echo '/data/data/com.adobe.air/lib/libstagefright_froyo.so already exists'
else
	ln -s /system/lib/libstagefright_froyo.so /data/data/com.adobe.air/lib/libstagefright_froyo.so
fi

if ls /data/data/com.adobe.air/lib/libstagefright_honeycomb.so; then
	echo '/data/data/com.adobe.air/lib/libstagefright_honeycomb.so already exists'
else
	ln -s /system/lib/libstagefright_honeycomb.so /data/data/com.adobe.air/lib/libstagefright_honeycomb.so
fi

if ls /data/data/com.adobe.air/lib/libysshared.so; then
	echo '/data/data/com.adobe.air/lib/libysshared.so already exists'
else
	ln -s /system/lib/libysshared.so /data/data/com.adobe.air/lib/libysshared.so
fi
