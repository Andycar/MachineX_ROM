#!/system/xbin/sh
echo 'boot-recovery ' > /cache/recovery/command
echo '--update_package=/sdcard/update.zip' >> /cache/recovery/command
reboot recovery