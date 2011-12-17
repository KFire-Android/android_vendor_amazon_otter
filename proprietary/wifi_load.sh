#!/system/bin/sh

WIFI_PATH=/system/etc/wifi
WIFI_DRV=tiwlan_drv.ko
WLAN_IF=tiwlan0
#MODULE_DIR=/lib/modules/`uname -r`

#----------------------------------------------------------------------
check_files () {
    err=0;
    for i in $WLAN_CU_ST $WIFI_DRV tiwlan.ini firmware.bin
    do
        if [ ! -e $WIFI_PATH/$i ]; then
            echo "$WIFI_PATH/$i : does not exist"
            err=1;
        fi
    done

    if [ $err != 0 ]; then
        #echo "Error"
        exit -1
    fi

    if [ -e $WIFI_PATH/$MAP_FILE ]; then
        echo "Remove $MAP_FILE"
        rm -f $WIFI_PATH/$MAP_FILE
    fi
}

check_module_link () {
    if [ ! -e $MODULE_DIR ]; then
        mkdir -p $MODULE_DIR
    fi

    cd $MODULE_DIR

    if [ ! -e $MODULE_DIR/$WIFI_DRV ]; then
        ln -s $WIFI_PATH/$WIFI_DRV .
    fi
}

#check_files
#check_module_link
#-----------------------------------------------------------------------
cd $WIFI_PATH
insmod $WIFI_DRV
sleep 2
start wlan_loader
#wlan_loader -f /system/etc/wifi/firmware.bin -i /system/etc/wifi/tiwlan.ini -e /data/misc/wifi/nvs_map.bin

exit 

#start wpa_supplicant


