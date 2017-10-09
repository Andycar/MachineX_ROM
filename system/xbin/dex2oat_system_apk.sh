# The idea of this Script was borrowed from Wolfbreak from xda. THanks to him!

# odex app
APP="/system/app/*/*.apk"
# odex priv-app
PRIVAPP="/system/priv-app/*/*.apk"

# mount system
mount -o remount,rw rootfs
mount -o remount,rw /system

# system app
for i in $APP
do
	odex $i
	echo $i
done

# system priv-app
for i in $PRIVAPP
do
	odex $i
	echo $i
done

mount -o remount,ro rootfs
mount -o remount,ro /system