#!/bin/sh

BOOT_DIR=$1

mkdir $BOOT_DIR/vendor
mount -t ext4 -o ro /dev/mmcblk0p35 $BOOT_DIR/vendor

#mkdir $BOOT_DIR/nvdata
#mount -t ext4 -o ro /dev/mmcblk0p9 $BOOT_DIR/nvdata

#mkdir $BOOT_DIR/firmware
#mount -t ext4 -o ro /dev/mmcblk0p32 $BOOT_DIR/firmware

#mkdir -p /nvdata
#mkdir -p /firmware
#mkdir -p /system/etc/wifi
#mkdir -p /system/vendor/firmware/
mkdir -p /vendor/firmware

#mount --bind $BOOT_DIR/system/etc/wifi          /system/etc/wifi
#mount --bind $BOOT_DIR/system/vendor/firmware/  /system/vendor/firmware/
mount --bind $BOOT_DIR/vendor/firmware          /vendor/firmware
#mount --bind $BOOT_DIR/nvdata                   /nvdata
#mount --bind $BOOT_DIR/firmware                 /firmware
mount --bind $BOOT_DIR/vendor                   /vendor

#dd if=/nvdata/MACWLAN of=/proc/wifi/mac

#ip link set up dev wlan0
sleep 1
#ip link set down dev wlan0

/system/bin/surfaceflinger &
killall psplash
sleep 1
/usr/bin/psplash --angle $rotation --no-console-switch  &
sleep 1
/usr/bin/msm-fb-refresher