# MachineX_ROM

MachineX ROM Mark 4.1 (5th of Oct 2017) - 3rd First public release version

- Patched SecSettings SysScope Status to show status "official" always
- Added Blue Light Filter in Quick Settings (togglable, only work with machinex kernel ;-)
- Added UPSM by patching SecSettings and serives.jar (also 3 Emergency* system apps were added)
- Fixed Torchlight dialog in SecSettings (torchlight_settings xml)
- Patched SecSettings to accept any FlipFont (duh... again as in QA1)
- Added unlocked menu for LED indicator/extended LED notification settings by patching SecSettings
- Added (unlocked) quicklaunch button settings by patching SystemUI
- Added 110 true type fonts (installed to user /data)
- Added more Galaxy S8 fonts and Android O emoji (installed to /system)
- Fixed SystemUI notification width, added new icons and colors (incluging global white) 
- Fixed SystemUI notification notification_panel_active_number_of_apps setting
- Fixed wrong ActionBar (3dot menu) layout in Phone (SecContacts_Phone_OSup app)
- Fixed wrong ActionBar (3dot menu) layout in ClockPackage_Osup app
- Added some S8 fonts to ClockPackage_Osup app
- Added new default caller icons in Phone (SecContacts_Phone_OSup app)
- Added black layer to MultiWindowTrayService
- Fixed layout bugs in AccuweatherPhone2015, updated WeatherDaemon2015
- Fixed layout bugs in TouchWiz launcher, updated TW texts and colors
- Fixed disappearing contact widgets in TouchWiz launcher
- Updated WebViewGoogle to the latest version (61.0.3163.98)
- Updated Google Play Store to the version 8.2.38.T-all [0] [FP] 169346653
- Updated Google Play services for instant apps (FAKE) to v.9999999 (no more "updating..." msg)
- Added the latest official Samsung Internet Browser (v.  6.0.01.10) with night mode
- Added Adguard Content Blocker(Version: 1.7.0) for Samsung Internet Browser
- Added and corrected black layer for Samsung Internet Browser
- Added SPenSdk3 3.0.224 (fixed drawing on pictures bug)
- Added SecLiveWallpaper app (checked with Muzei app)
- Added black/grey theme for SecGallery2013
- Updated Black_n_Blue layer theme with the latest overlays package
- Updated dark overlays for Sec MMS app (no more low contrast colors)
- Added Google Play Store black overlay
- Updated some more dark and black global overlays for Android/Touchwiz frameworks
- Added automatic brightness adjustment with zero delay
- Removed startDozingInternal call from services.jar (no more wakelocks from DreamManagerService)
- Removed Google voice input app from the ROM
- Removed settings.db (com.android.system.providers) and supersu data (depricated)
- Fixed SGUSBMassStorageEnabler (by mohammadag) ExtSdCard export ability ("/dev/block/vold/179:33")
- Added shutdown for Bluetooth Gatt service (temporary fix for BlueBorne, requires machinex kernel)
- Added some cleanup and integration in ROM-specific init.d scripts
- !!!IMPORANT Changed supersu (system-based) to magisk (systemless)
- !!!IMPORANT - Do not install TWRP's SuperSU after installation (no need)

==================================================================

MachineX ROM Mark 3-N3 (2nd Apr 2017) - 3rd cumulative patch
- Patched SecSettings to accept any FlipFont 
- Added many fonts (installed to user /data)
- Added status bar layout customizations (SystemUI)
- 

==================================================================

MachineX ROM Mark 3 (14th Mar 2017) - First public release version

==================================================================

MachineX ROM Mark 3-p2 (12th Mar 2017)

Framework Mods
> Correctly built odex and boot.oat/boot.art, so no more "Android is upgrading..." message on the system  boot completion.
Finally, correct reodex scripts were added
> 00_link_boot_art (init.d) as advised by Jasonrr

SecSettings mods:
> Added other custom settings to SeCSettings (colored icons)
> Added "Thanks to" filed with credits in "About ROM" section
> completely remox knox info from About device

Additional System APKs
>LockScreenEffects by xperiacle
> SG USB Mass Storage Enabler app by Mohammad Abu-Garbeyyeh
> BitSyko Layer manager app by sykopompos, bitstra, CallMeAldy, @bgill55

> Merged /system/usr/keylayout/Generic.kl
> Deleted Google Search app freom system apps
> added /system/app/GoogleCalendarSyncAdapter Version: 5.0.1-1602158
> added /system/app/GoogleContactsSyncAdapter Version: 4.2.2-573038

==================================================================

MachineX ROM Mark 2 N1 (3rd Mar 2017)
SecSettings mods:
> Added customsettings to SecSettings (thanks Robcore)
> 
SystemUI mods
> Robcore: Random Ink effect colors (+Settings)
> Robcore: 5 Unlock effects 
> Robcore: threw in Potato Gradient Code
> > Robcore: Some tweaks in Constants.smali; recent/FirstFrameAnimatorHelper.smali; wifi/WifiStatusReceiver.smali
> toggle_number=5 by defaulut in SystemUI /smali/com/android/systemui/qs/QSPanel.smali
> Clock position on the LockScreen (with settings)
> Lockscreen clock centered by default
> Center status bar clock by default

Additional System APKs
> Google Play Store (BlackOut team; com.android.vending) Version: 7.5.08.M-all [0] [PR] 146162341
> 

Overlays 
> Changed battery % text color (systemui overlay)
==================================================================

MachineX ROM Mark 2 (28th Feb 2017)
Framework Mods
> Patched services.jar (PackageManagerService) by amazing DexPatcher/HayStack by Lanchon(https://github.com/Lanchon/)
to enable signature spoofing globally


SecSettings mods:
> Enable the global signature spoofing enable/disable switch to the application section in developer settings (HayStack by Lanchon). 
> Enable "Developer settings" menu item by default (GridSettings.smali)
> Added item My Settings -> Custom settings 
- System configuration:
* Delay of the volume bar display.
* Flashlight (incl. Flashlight with off. Volume button to display the settings work time).
- Settings of the status bar:
* Displays the speed of the Internet (Traffic).
* Displays % of battery charge.

MicroG and system APKs
> microG Services Core (GmsCore.apk;  com.google.android.gms) Version: 0.2.4-64-gcbfb373
> microG Services Framework Proxy (GsfProxy.apk; com.google.android.gsf) Version: v0.1.0
> Mozilla UnifiedNlp Backend (MozillaUnifiedNlpBackend.apk; org.microg.nlp.backend.ichnaea) Version: 1.3.2
> NominatimGeocoderBackend (NominatimGeocoderBackend.apk; org.microg.nlp.backend.nominatim) Version: 1.1.1

> Google Play Store (official Phonesky.apk; com.android.vending) Version: 7.5.08.M-all [0] [PR] 146162341
> GoogleContactsSyncAdapter.apk (com.google.android.syncadapters.contacts) Version: 4.2.2-573038
> GoogleCalendarSyncAdapter.apk (Package: com.google.android.syncadapters.calendar ) Version: 5.0.1-1602158


Additional System APKs
> Signature Spoofing Checker (lanchon.sigspoof.checker) Version: 1.0
> OG YouTube, No Ads (com.google.android.youtube) Version: 11.16.99X

SystemUI mods:
> Charging Effects on Lock Screen (finalized) with /smali/com/android/keyguard/sec/KeyguardFestivalEffect*.smali festivaleffect/
> Added code for delay of the volume bar display.
> Added Black MachineX Keygard Wallpaper by default

binary files patches:
> patched libsurfaceflinger.so (No more logcat spam W/SurfaceFlinger(__): Fail to Open /sys/devices/platform/gpusysfs/fps)

==================================================================

MachineX ROM Mark 1 (22nd Feb 2017)
Framework Mods
> 5-ways reboot plus screenshot, torch and screen recording to the power menu
> TODO: Black backgrounds (https://goo.gl/3Fn4kI)
> No screen on/off when USB connector plugged in
> Back button to kill (...to finalize)
> Disable the Safe volume dialog box when connecting headphones
> Disable scrolling cache
> Autobrightness adjustment speed mod (delay cut by 50% in services.jar and framework.jar)
> Color Fade Memory Leak 5.0.x
> The color of the progress bar and slider in the volume during a call, and the color slider in the Media (framework.jar)
> 0.5x transitions of system animations by default

SystemUI mods:

> Unlocked additional items in the volume panel
> No sound when pressing "Vol+" or "Vol-" buttons (TW_Volume_control_.ogg)
> System Recents List Background transparent
> Transparent status bar at swype
> Zero width notification_side_padding
> Background bottom button bar (with a little more transparency)
> Hidden Quick Launch Button enabled
> Removed recents_google_button_kk from layout
> Full data on the lock screen and Quick Settings Panel (RUS only)
> Charging Effects on Lock Screen (to finalize )


SecSettings mods:
> Remove the dialogue with the bluetooth turned on. 
> Enable hidden Quick Launch Button Setting for SystemUI

SecSettingsProvider mods:
> Enable com.sec.android.theme.Black_color by default

SamsungCamera2 mods:
> Change settings (VideoBitrate, AudioBitrate, AudioSamplingRate) of mediaprofiles when recording video with resolutions of 3840*2160, 2560*1440, 1920*1080 (60fps), 1920*1080


TouchWizHome Mods
> 5x6 Apps Grid

Google apps mods
> Youtube and Play Store dark settings (TODO https://goo.gl/JpjdFn)


Other mods
> custom SGUSBMassStorageEnabler.apk with support for our device 


MEDIA mods
> S7 Edge Nougat Beta Sounds
> MachineX boot animation
> Samsung One font by default system-wide
> 

OVERLAYS BLACK THEMES
Packages modded:
android.v.overlay.apk (Volume panel)
com.android.contacts.overlay.apk 
com.android.mms.overlay.apk
com.android.packageinstaller.overlay.apk
com.android.settings.b.overlay.apk
com.android.settings.overlay.apk
com.android.systemui.overlay.apk
com.android.systemui.v.overlay.apk
com.samsung.android.clipboarduiservice.overlay.apk
com.samsung.android.sm.overlay.apk
com.sec.android.app.clockpackage.overlay.apk
com.sec.android.app.music.overlay.apk
com.sec.android.app.myfiles.overlay.apk
com.sec.android.app.popupcalculator.overlay.apk
com.sec.android.app.sbrowser.overlay.apk
com.sec.android.inputmethod.overlay.apk (Keyboard)

SYSTEM APPS Updates
> Google Play services Version          : 10.2.98 (238-146496160)
> Google Backup Transport Version       : 5.0.1-1602158
> Google Calendar Sync Version          : 5.0.1-1602158
> Google Contacts Sync Version          : 5.0.1-1602158
> Google Account Manager Version        : 5.1.1-2168912
> Google One Time Init Version          : 5.0.1-1602158
> Google Partner Setup Version          : 5.0.2-1900396
> Google Services Framework Version     : 5.0.1-1602158
> Google Play Store Version           	: 7.5.08.M-all [0] [PR] 146162341
> Google App Version           			: 6.12.25.21.arm
> Latest offline voice recognition packages (/system/usr/srec/)
> YouTube (NO ADS!!!) Version           : 12.05.53
> Android System WebView Version        : 56.0.2924.87
> AccuweatherPhone2015 Version          : 150626.603922
> Samsung keyboard Version      	    : 4.0
> Samsung Music Version           		: 16.1.91-16
> SBrowser Version    			        : 4.0.10-53
> Weather Daemon 2015 Version           : 150705.624993
> 
> 
