#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9916416:e432e4618253035604916eec536be616b1f1cc6a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8742912:95f174e30023083ccd4cd8d0060f1dc29e6cd529 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery e432e4618253035604916eec536be616b1f1cc6a 9916416 95f174e30023083ccd4cd8d0060f1dc29e6cd529:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
