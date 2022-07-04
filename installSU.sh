adb root
adb remount

adb shell setenforce 0

adb push common/Superuser.apk /system/app/SuperSU.apk
adb shell chmod 0644 /system/app/SuperSU.apk
adb shell chcon u:object_r:system_file:s0 /system/app/SuperSU.apk

adb push common/install-recovery.sh /system/etc/install-recovery.sh
adb shell chmod 0755 /system/etc/install-recovery.sh
adb shell chcon u:object_r:system_file:s0 /system/etc/install-recovery.sh

adb shell ln -s /system/etc/install-recovery.sh /system/bin/install-recovery.sh


adb push armv7/su /system/xbin/su
adb shell chmod 0755 /system/xbin/su
adb shell chcon u:object_r:system_file:s0 /system/xbin/su

adb push armv7/su /system/bin/.ext/.su
adb shell chmod 0755 /system/bin/.ext/.su
adb shell chcon u:object_r:system_file:s0 /system/bin/.ext/.su

adb push armv7/su /system/xbin/daemonsu
adb shell chmod 0755 /system/xbin/daemonsu
adb shell chcon u:object_r:system_file:s0 /system/xbin/daemonsu


adb push armv7/supolicy /system/xbin/supolicy
adb shell chmod 0755 /system/xbin/supolicy
adb shell chcon u:object_r:system_file:s0 /system/xbin/supolicy


adb push armv7/libsupol.so /system/lib64/libsupol.so
adb shell chmod 0644 /system/lib64/libsupol.so
adb shell chcon u:object_r:system_file:s0 /system/lib64/libsupol.so


adb shell cp /system/bin/sh /system/xbin/sugote-mksh
adb shell chmod 0755 /system/xbin/sugote-mksh
adb shell chcon u:object_r:system_file:s0 /system/xbin/sugote-mksh

adb shell /system/xbin/su --install

adb reboot
