#!/system/bin/sh

MODE=
DELAY=
OP=


CHANNEL=$2
POWER=$3
OP=$5

case $4 in
    "t")
        MODE="t"
        ;;
    "r")
        MODE="r"
        ;;
    *)
        exit -1
        ;;
esac

case $1 in
    "b")
        /system/xbin/wifi_test.sh b 2.4 11M $CHANNEL $POWER $MODE $OP
        ;;
    "g")
        /system/xbin//wifi_test.sh g 2.4 54M $CHANNEL $POWER $MODE $OP
        ;;
    "2.4n")
        /system/xbin/wifi_test.sh n 2.4 MCS7 $CHANNEL $POWER $MODE $OP
        ;;
    *)
        exit -1
        ;;
esac
