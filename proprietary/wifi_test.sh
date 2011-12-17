#!/system/bin/sh
# Program:
# 	Control codes for WiFi test.
# History:
# 2010/10/20	SevenLin(seven.lin@quantatw.com)	First release
#

# Target MAC address
MAC=08:00:28:EF:DE:6C
# Delay msec to send packets
Delay=1000

WIFI_PATH=/system/etc/wifi
WIFI_DRV=tiwlan_drv.ko
WLAN_IF=tiwlan0
PACKET_SIZE=1024
OP=

wifi_init() {
    echo "======= WiFi initialization ======="

    cd $WIFI_PATH
    insmod $WIFI_DRV
    sleep 3
    start wlan_loader
    sleep 3
    ifconfig $WLAN_IF up
    sleep 1

	#echo -e "/ w p 1 l 2 f 2 \n / q \n" | wlan_cu -b	
	#echo "/ w p 1 l 2 f 2 \n / q \n"
}

wifi_reset() {
	echo "======= WiFi reset ======="

	ifconfig $WLAN_IF down
	sleep 3	
	ifconfig $WLAN_IF up
	sleep 3	

	#echo -e "/ w p 1 l 2 f 2 \n / q \n" | wlan_cu -b	
	#echo "/ w p 1 l 2 f 2 \n / q \n"
}

#wifi_reset

MODE=
BAND=
CHANNEL=
POWER=
RATE=
PREAMBLE=
FREQ=
CMD=""

case $1 in
    "b")
        BAND="b";;
    "g")
        BAND="g";;
    "n")
        BAND="n";;
    *)  
        exit -1;;
esac

case $2 in
    "2.4")
        FREQ=0;;
    *)
        exit -1;
esac

case $3 in
    "11M")
        #$RATE="11M";;
        #RATE="0x00000020"
        RATE="32"
        PREAMBLE="0"
        ;;
    "54M")
        #$RATE="54M";;
        #RATE="0x00001000"
        RATE="4096"
        PREAMBLE="4"
        ;;
    "MCS7")
        #$RATE="MCS7";;
        #RATE="0x00100000"
        RATE="1048576"
        PREAMBLE="6"
        ;;
    *)
        exit -1;
esac

CHANNEL=$4
POWER=$5

case $6 in
    "r")
        MODE="r";;
    "t")
        MODE="t";;
    *)
        exit -1;
esac

case $7 in
    "s")
        OP="s";;
    "p")
        OP="p";;
    *)
        exit -1;
esac


if [ "$OP" == "s" ]; then
    echo "======= WiFi initialization ======="
    echo -e "/ w p 1 l 2 f 2 \n / q \n" | wlan_cu -b	
fi

echo -e "Set Wifi:\n    BAND = $2 GHz\n    RATE = $3"
echo -e "    CHANNEL = $4\n    POWER = $5\n"

echo -e "/ t r h $FREQ $CHANNEL \n / q \n" | wlan_cu -b
echo -e "/ t r h $FREQ $CHANNEL \n / q \n"


case $MODE in
    "r")
        case $OP in
            "s")
                echo "======= WiFi RX test starts ======="
    		echo -e "/ r l 0 \n / q \n" | wlan_cu -b	
    		echo -e "/ r l 0 \n / q \n" 	
                echo -e "/ t r s r \n / t r s s \n / q \n" | wlan_cu -b
                echo -e "/ t r s r \n / t r s s \n / q \n"
                ;;
            "p")
                echo "======= WiFi RX test ends ======="
                #rm /wifi_rx.txt
                echo -e "/ t r s p \n / t r s g \n / q \n" | wlan_cu -b
                echo -e "/ t r s p \n / t r s g \n / q \n"
                #echo -e "/ t r s p \n / t r s g \n / q \n" | wlan_cu -b > /wifi_rx.txt
                ;;
            *)
                exit -1;;
        esac
        ;;
    "t")
        case $OP in
            "s")
                echo "======= WiFi TX test starts ======="
                case $BAND in
                    "b")
                        CMD="/ t r t n $Delay $RATE $PACKET_SIZE 0 $POWER 0 3 0 0 $PREAMBLE 0 0 1 1 $MAC \n / q \n"
                        ;;
                    "g")
                        CMD="/ t r t n $Delay $RATE $PACKET_SIZE 0 $POWER 0 3 0 0 $PREAMBLE 0 0 1 1 $MAC \n / q \n"
                        ;;
                    "n")
                        CMD="/ t r t n $Delay $RATE $PACKET_SIZE 0 $POWER 0 3 0 0 $PREAMBLE 0 0 1 0 $MAC \n / q \n"
                        ;;
                esac
                #CMD="/ t r t n $Delay $RATE $PACKET_SIZE 0 $POWER 0 3 0 0 $PREAMBLE 0 0 1 1 $MAC \n / q"
                echo -e "$CMD" | wlan_cu -b
                echo -e "$CMD"
                ;;
            "p")
                echo "======= WiFi TX test ends ======="
                echo -e "/ t r t s \n / q \n" | wlan_cu -b
                echo -e "/ t r t s \n / q \n"
                ;;
            *)
                exit -1;;
        esac
        ;;
esac
