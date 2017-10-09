#!/system/bin/sh

mount -o remount,rw /system > /dev/null;

ln -sf /system/lib/libbluetooth_jni.so /system/app/Bluetooth/lib/arm/libbluetooth_jni.so
ln -sf /system/lib/libcommonpawrapper.so	/system/app/RootPA/lib/arm/libcommonpawrapper.so
#ln -sf /system/lib/libswiftkeysdk-java.so	/system/app/SamsungIME/lib/arm/libswiftkeysdk-java.so
#ln -sf /system/lib/libsbrowser.so	/system/app/SBrowser/lib/arm/libsbrowser.so
#ln -sf /system/lib/libssecv8.so	/system/app/SBrowser/lib/arm/libssecv8.so
#ln -sf /system/lib/libstlport_sh_521.so	/system/app/SBrowser/lib/arm/libstlport_sh_521.so
#ln -sf /system/lib/libwbs.so	/system/app/SBrowser/lib/arm/libwbs.so
ln -sf /system/lib/libjni_emailencryption.so	/system/app/SecEmail_K/lib/arm/libjni_emailencryption.so
ln -sf /system/lib/libprintspooler_jni.so	/system/app/SPrintSpooler/lib/arm/libprintspooler_jni.so
ln -sf /system/lib/libnfc_nci_jni.so /system/app/NfcNci/lib/arm/libnfc_nci_jni.so
ln -sf /system/lib/libjni_pacprocessor.so /system/app/PacProcessor/lib/arm/libjni_pacprocessor.so
ln -sf /system/lib/libdefcontainer_jni.so /system/priv-app/DefaultContainerService/lib/arm/libdefcontainer_jni.so