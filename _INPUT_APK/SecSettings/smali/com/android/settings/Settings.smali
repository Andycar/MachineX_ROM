.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$DrivingModeContentObserver;,
        Lcom/android/settings/Settings$RingerModeBroadcastReceiver;,
        Lcom/android/settings/Settings$MirrorLinkActivity;,
        Lcom/android/settings/Settings$AppNotificationSettingsActivity;,
        Lcom/android/settings/Settings$ToolboxListActivity;,
        Lcom/android/settings/Settings$ToolboxMenuActivity;,
        Lcom/android/settings/Settings$SmartBondingSettingsActivity;,
        Lcom/android/settings/Settings$SViewCoverEdgeSettingsActivity;,
        Lcom/android/settings/Settings$WeatherSettingsFragmentActivity;,
        Lcom/android/settings/Settings$SelectInfoCoverSettingsActivity;,
        Lcom/android/settings/Settings$FestivalEffectSettingsActivity;,
        Lcom/android/settings/Settings$SMotionGuideHub2014Activity;,
        Lcom/android/settings/Settings$RecommendedAppsListActivity;,
        Lcom/android/settings/Settings$AirplaneModeSettingsActivity;,
        Lcom/android/settings/Settings$ToddlerModeSettingsActivity;,
        Lcom/android/settings/Settings$SettingsEmergencyActivity;,
        Lcom/android/settings/Settings$SafetyCareDisasterActivity;,
        Lcom/android/settings/Settings$SafetyCareEmergencyModeActivity;,
        Lcom/android/settings/Settings$SafetyCareSettingsActivity;,
        Lcom/android/settings/Settings$HandwritingLanguageActivity;,
        Lcom/android/settings/Settings$AccountMenuActivity;,
        Lcom/android/settings/Settings$AccountSettingsActivity;,
        Lcom/android/settings/Settings$GeneralSettingsTab;,
        Lcom/android/settings/Settings$InputAndControlSettingsTab;,
        Lcom/android/settings/Settings$DisplaySettingsTab;,
        Lcom/android/settings/Settings$WallpaperSettingsActivity;,
        Lcom/android/settings/Settings$EasyModeAppActivity;,
        Lcom/android/settings/Settings$EasyModeActivity;,
        Lcom/android/settings/Settings$VoiceInputControlSettingsActivity;,
        Lcom/android/settings/Settings$ReadingModeSettingsActivity;,
        Lcom/android/settings/Settings$PenAirViewSettingsMenuActivity;,
        Lcom/android/settings/Settings$PenDetachmentOptionActivity;,
        Lcom/android/settings/Settings$NotificationPanelMenuActivity;,
        Lcom/android/settings/Settings$MultiWindowSettingsActivity;,
        Lcom/android/settings/Settings$ClockWidgetActivity;,
        Lcom/android/settings/Settings$TorchlightSettingsActivity;,
        Lcom/android/settings/Settings$MouseHoveringSettingsActivity;,
        Lcom/android/settings/Settings$AirViewSettingActivity;,
        Lcom/android/settings/Settings$PenAirViewHelpSettingActivity;,
        Lcom/android/settings/Settings$FingerAirViewHelpSettingActivity;,
        Lcom/android/settings/Settings$FingerAirViewSettingActivity;,
        Lcom/android/settings/Settings$ActiveKeySettingsActivity;,
        Lcom/android/settings/Settings$AirMotionSettingActivity;,
        Lcom/android/settings/Settings$SmartScrollAdvancedSettingsActivity;,
        Lcom/android/settings/Settings$SmartScreenSettingsActivity;,
        Lcom/android/settings/Settings$CloudSettingActivity;,
        Lcom/android/settings/Settings$DirectAccessActivity;,
        Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;,
        Lcom/android/settings/Settings$HomeSyncBackupAndRestoreActivity;,
        Lcom/android/settings/Settings$CloudVideoSyncSettingActivity;,
        Lcom/android/settings/Settings$CloudPictureSyncSettingActivity;,
        Lcom/android/settings/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity2;,
        Lcom/android/settings/Settings$DrivingModeSettingsActivity;,
        Lcom/android/settings/Settings$ContextualPageHelpActivity;,
        Lcom/android/settings/Settings$CustomizableKeySettingsActivity;,
        Lcom/android/settings/Settings$HomeSettingsActivity;,
        Lcom/android/settings/Settings$TRoamingSettingsActivity;,
        Lcom/android/settings/Settings$GlobalRoamingSettingsActivity;,
        Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceProfileSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceSettingsActivity;,
        Lcom/android/settings/Settings$NfcSettingsActivity;,
        Lcom/android/settings/Settings$PowerSettingsActivity;,
        Lcom/android/settings/Settings$PersonalPageSettingsActivity;,
        Lcom/android/settings/Settings$EasyModeSettingsActivity;,
        Lcom/android/settings/Settings$PenHelpFragmentActivity;,
        Lcom/android/settings/Settings$PenSettingsMenuActivity;,
        Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/settings/Settings$DualClockSettingActivity;,
        Lcom/android/settings/Settings$SBeamSettingsActivity;,
        Lcom/android/settings/Settings$NearbySettingsActivity;,
        Lcom/android/settings/Settings$MotionSettingsActivity;,
        Lcom/android/settings/Settings$ZenModeDNDSettingsActivity;,
        Lcom/android/settings/Settings$ZenModeSettingsActivity;,
        Lcom/android/settings/Settings$PrintJobSettingsActivity;,
        Lcom/android/settings/Settings$PrintSettingsActivity;,
        Lcom/android/settings/Settings$PaymentSettingsActivity;,
        Lcom/android/settings/Settings$TrustedCredentialsSettingsActivity;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$NotificationAccessSettingsActivity;,
        Lcom/android/settings/Settings$UserSettingsActivity;,
        Lcom/android/settings/Settings$NotificationStationActivity;,
        Lcom/android/settings/Settings$DreamSettingsActivity;,
        Lcom/android/settings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$WifiShareProfileActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$OneHandSideSoftKeyFragmentActivity;,
        Lcom/android/settings/Settings$OneHandEditMenuActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$DockSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$ColorChipReportActivity;,
        Lcom/android/settings/Settings$MagnifierSettingsActivity;,
        Lcom/android/settings/Settings$CaptioningSettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$AppOpsDetailsActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$BatterySaverSettingsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$PowerSavingModeSettings2014Activity;,
        Lcom/android/settings/Settings$UltraPowerSavingModeActivity;,
        Lcom/android/settings/Settings$PowerSavingMode2014Activity;,
        Lcom/android/settings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/settings/Settings$LockScreenSettingsActivity;,
        Lcom/android/settings/Settings$LockscreenMenuActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$ApnSettingsActivity;,
        Lcom/android/settings/Settings$UsageAccessSettingsActivity;,
        Lcom/android/settings/Settings$VoiceInputSettingsActivity;,
        Lcom/android/settings/Settings$NotificationAppListActivity;,
        Lcom/android/settings/Settings$NotificationSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiApSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$EthernetSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$ToddlerModeObserver;,
        Lcom/android/settings/Settings$HeaderAdapter;,
        Lcom/android/settings/Settings$NoHomeDialogFragment;,
        Lcom/android/settings/Settings$SettingsTabListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceProvisioned:I

.field private static mDirectSettingEnabler:Z

.field private static mFullModeinSmallTablet:Z

.field private static mIsFromSearch:Z

.field private static mSearchDepthCounter:I

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static misFromSettingsMainActivity:Z

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_KNOX:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private SettingsInAccountTab:[Ljava/lang/String;

.field private SettingsInApplicationsTab_2014:[Ljava/lang/String;

.field private SettingsInConnectionTab:[Ljava/lang/String;

.field private SettingsInConnectionTab_2013:[Ljava/lang/String;

.field private SettingsInDeviceTab:[Ljava/lang/String;

.field private SettingsInDeviceTab_2014:[Ljava/lang/String;

.field private SettingsInDisplay:[Ljava/lang/String;

.field private SettingsInGeneralTab:[Ljava/lang/String;

.field private SettingsInGeneralTab_2014:[Ljava/lang/String;

.field private SettingsInInputandControlTab:[Ljava/lang/String;

.field private SettingsInMoreTab:[Ljava/lang/String;

.field am:Landroid/media/AudioManager;

.field private currentSoundProfile:I

.field private drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

.field filter:Landroid/content/IntentFilter;

.field private isKioskContainer:Z

.field private isKioskPersonal:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAccountTabView:Landroid/view/View;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field mApplicationsTabView:Landroid/view/View;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field mConnectionTabView:Landroid/view/View;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field mDisplayTabView:Landroid/view/View;

.field private mDualFoldertype:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGeneralTabView:Landroid/view/View;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field mInputTabView:Landroid/view/View;

.field private mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

.field private mInternationalRoamingBlocked:Z

.field private final mJPNReceiver:Landroid/content/BroadcastReceiver;

.field private mJustCreated:Z

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mMSADialog:Landroid/app/AlertDialog$Builder;

.field mMoreTabView:Landroid/view/View;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneTabStyle:Z

.field mPrevSelectedActionBarIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field mTabletTabStyle:Z

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevSoundProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 341
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    .line 366
    sput-boolean v1, Lcom/android/settings/Settings;->sShowNoHomeNotice:Z

    .line 388
    sput v2, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 393
    sput-boolean v1, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 724
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 726
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 727
    sput-boolean v1, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 729
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 732
    sput v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 733
    sput-boolean v1, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 734
    sput-boolean v1, Lcom/android/settings/Settings;->misFromSettingsMainActivity:Z

    .line 2040
    const/16 v0, 0xa1

    new-array v0, v0, [Ljava/lang/String;

    const-class v3, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-class v1, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/myprofile/PersonalMessageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/toolbox/ToolboxList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.ethernet.EthernetSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.settings.notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.android.settings.fingerprint.FingerPrintManagerUI"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.android.settings.fingerprint.PaypalPayment"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.android.settings.fingerprint.FingerprintWebsignin"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/DrivingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings/myplace/MyPlaceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/android/settings/OneHandEditMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-class v2, Lcom/android/settings/AccountMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-class v2, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-class v2, Lcom/android/settings/ToddlerModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-class v2, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-class v2, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-class v2, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-class v2, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-class v2, Lcom/android/settings/FontMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-class v2, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-class v2, Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-class v2, Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-class v2, Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-class v2, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-class v2, Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-class v2, Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-class v2, Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-class v2, Lcom/android/settings/DockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-class v2, Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-class v2, Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-class v2, Lcom/android/settings/WeatherSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-class v2, Lcom/android/settings/MasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-class v2, Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-class v2, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-class v2, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-class v2, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-class v2, Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-class v2, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-class v2, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-class v2, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-class v2, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-class v2, Lcom/android/settings/LedIndicatorSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-class v2, Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-class v2, Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-class v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-class v2, Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-class v2, Lcom/android/settings/SmartcardCredentialSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-class v2, Lcom/android/settings/ReadingMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "com.android.settings.ContextualPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "com.android.settings.motion.MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "com.android.settings.AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "com.android.settings.colorblind.ColorChipReport"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "com.android.settings.safetycare.SafetyCareEmergencyMode"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "com.android.settings.safetycare.SafetyCareDisaster"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "com.android.settings.SettingsEmergencySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "com.android.settings.DCMHomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-class v2, Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-class v2, Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-class v2, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-class v2, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-class v2, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-class v2, Lcom/android/settings/ApplicationsSettingsVZW;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-class v2, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-class v2, Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-class v2, Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-class v2, Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "com.android.settings.TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-class v2, Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-class v2, Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-class v2, Lcom/android/settings/BlockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-class v2, Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-class v2, Lcom/android/settings/KidsHomeMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-class v2, Lcom/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "com.android.settings.myprofile.ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "com.android.settings.dualclock.DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "com.android.settings.mirrorlink.MirrorLink"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-class v2, Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "com.android.settings.festivaleffect.FestivalEffectSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-class v2, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 341
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 338
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 362
    iput v3, p0, Lcom/android/settings/Settings;->MHS_REQUEST:I

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    .line 373
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    .line 381
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mInternationalRoamingBlocked:Z

    .line 389
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 390
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 397
    const/16 v0, 0x69

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 517
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_KNOX:[I

    .line 585
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/Settings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    .line 669
    iput-boolean v3, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    .line 670
    iput-boolean v3, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    .line 674
    iput v3, p0, Lcom/android/settings/Settings;->mTetheredData:I

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 685
    iput-boolean v4, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    .line 686
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    new-instance v0, Lcom/android/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 711
    new-instance v0, Lcom/android/settings/Settings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$3;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    .line 721
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    .line 728
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;

    .line 759
    new-array v0, v7, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    .line 766
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v5

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v6

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TagsConnectingDevices"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    .line 786
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DateTimeSettings"

    aput-object v1, v0, v3

    const-string v1, "LocalePicker"

    aput-object v1, v0, v4

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v5

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v6

    const-string v1, "SpellCheckersSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UserDictionarySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LockScreenSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LockscreenMenuSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LedIndicatorSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ContextualPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ContextualPageHelp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "InformationTicker"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FingerAirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MouseHoveringSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PenHovering"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PenHelpFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PersonalVibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ReadingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CustomizableKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "TorchlightSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "VoiceInputControlSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    .line 830
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v3

    const-string v1, "BackupAssistantPlusSettings"

    aput-object v1, v0, v4

    const-string v1, "CloudPhotosSyncFragment"

    aput-object v1, v0, v5

    const-string v1, "CloudVideosSyncFragment"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    .line 840
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DeviceInfoSettings"

    aput-object v1, v0, v3

    const-string v1, "ManageApplications"

    aput-object v1, v0, v4

    const-string v1, "LocationSettings"

    aput-object v1, v0, v5

    const-string v1, "SecuritySettings"

    aput-object v1, v0, v6

    const-string v1, "notification.NotificationSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    .line 862
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v5

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v6

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PrintSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LocationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TagsConnectingDevices"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PaymentSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    .line 885
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notification.NotificationSettings"

    aput-object v1, v0, v3

    const-string v1, "DisplaySettings"

    aput-object v1, v0, v4

    const-string v1, "ReadingMode"

    aput-object v1, v0, v5

    const-string v1, "LedIndicatorSettings"

    aput-object v1, v0, v6

    const-string v1, "LockscreenMenuSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "WallpaperSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FontMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RecommendedAppsList"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CaptionPropertiesFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CallFeaturesSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ToolboxMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ToolboxList"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    .line 906
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v3

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v4

    const-string v1, "VoiceInputControlSettings"

    aput-object v1, v0, v5

    const-string v1, "HandwritingSearch"

    aput-object v1, v0, v6

    const-string v1, "DrivingModeSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SPenSettingsMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OneHandSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HandMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HandwritingLanguagePreference"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    .line 923
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HomeSettings"

    aput-object v1, v0, v3

    const-string v1, "AccountMenu"

    aput-object v1, v0, v4

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v5

    const-string v1, "CloudSetting"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SafetyAssuranceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ManageApplications"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PowerSavingMode2014"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PowerSavingModeUltra"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    .line 955
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UserDictionarySettings"

    aput-object v1, v0, v3

    const-string v1, "LockScreenSettings"

    aput-object v1, v0, v4

    const-string v1, "DisplaySettings"

    aput-object v1, v0, v5

    const-string v1, "LockscreenMenuSettings"

    aput-object v1, v0, v6

    const-string v1, "BlockSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LedIndicatorSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ContextualPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ContextualPageHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "InformationTicker"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FingerAirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MouseHoveringSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PenHovering"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PenHelpFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PersonalVibration"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ReadingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CustomizableKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TorchlightSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "VoiceInputControlSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "FingerPrintManagerUI"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ToolboxMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ToolboxList"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "RecommendedAppsList"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SMotionGuideHub2014"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    .line 998
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HomeSettings"

    aput-object v1, v0, v3

    const-string v1, "AccountMenu"

    aput-object v1, v0, v4

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v5

    const-string v1, "CloudSetting"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SafetyAssuranceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PowerSavingMode2014"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PowerSavingModeUltra"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "InputMethodAndLanguageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "KeyboardLayoutPickerFragment"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    .line 1034
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ManageApplications"

    aput-object v1, v0, v3

    const-string v1, "LaunchApplication"

    aput-object v1, v0, v4

    const-string v1, "ApplicationsSettingsVZW"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    .line 5798
    new-instance v0, Lcom/android/settings/Settings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$8;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5974
    new-instance v0, Lcom/android/settings/Settings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$9;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    .line 6492
    new-instance v0, Lcom/android/settings/Settings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$10;-><init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    .line 6520
    return-void

    .line 397
    :array_0
    .array-data 4
        0x7f100698
        0x7f100655
        0x7f100657
        0x7f100656
        0x7f10065e
        0x7f100659
        0x7f10065f
        0x7f100667
        0x7f10065c
        0x7f1006a0
        0x7f1006a1
        0x7f1006f5
        0x7f1006ae
        0x7f1006a7
        0x7f1006a3
        0x7f1006a2
        0x7f100688
        0x7f1006d8
        0x7f1006d9
        0x7f1006a6
        0x7f1006da
        0x7f1006db
        0x7f1006dc
        0x7f10069b
        0x7f10063f
        0x7f100640
        0x7f1006af
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f100677
        0x7f100647
        0x7f100648
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067e
        0x7f100679
        0x7f100695
        0x7f10063e
        0x7f1006ec
        0x7f10067f
        0x7f100680
        0x7f100683
        0x7f100681
        0x7f10066c
        0x7f10067a
        0x7f100646
        0x7f100646
        0x7f10065b
        0x7f1006e4
        0x7f100658
        0x7f1006e5
        0x7f100666
        0x7f100661
        0x7f100668
        0x7f1006e6
        0x7f10066b
        0x7f10066e
        0x7f10066d
        0x7f1006e7
        0x7f1006ab
        0x7f1006ac
        0x7f10068a
        0x7f10064a
        0x7f10068e
        0x7f10068f
        0x7f100690
        0x7f1006e9
        0x7f100693
        0x7f1006d0
        0x7f1006b1
        0x7f100645
        0x7f100691
        0x7f100694
        0x7f100686
        0x7f1006eb
        0x7f100697
        0x7f1006b5
        0x7f100641
        0x7f10063c
        0x7f1006ea
        0x7f100699
        0x7f10069a
        0x7f10069c
        0x7f1006ed
        0x7f10069e
        0x7f1006ee
        0x7f100662
        0x7f10069f
        0x7f100692
        0x7f1006ef
        0x7f10068d
        0x7f10069d
        0x7f1006cd
        0x7f100669
        0x7f100671
        0x7f10066a
        0x7f10065d
        0x7f100685
        0x7f1006f3
        0x7f1006a4
        0x7f100644
        0x7f100654
    .end array-data

    .line 517
    :array_1
    .array-data 4
        0x7f100655
        0x7f100657
        0x7f100667
        0x7f10065c
        0x7f1006a0
        0x7f1006a1
        0x7f1006a7
        0x7f1006a3
        0x7f1006a2
        0x7f100688
        0x7f1006d8
        0x7f1006d9
        0x7f1006a6
        0x7f1006da
        0x7f1006db
        0x7f1006dc
        0x7f10069b
        0x7f10063f
        0x7f1006af
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f100677
        0x7f100647
        0x7f100648
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067e
        0x7f10063e
        0x7f100640
        0x7f1006ec
        0x7f10067f
        0x7f100680
        0x7f100681
        0x7f10065b
        0x7f1006e4
        0x7f100658
        0x7f1006e5
        0x7f100661
        0x7f10068e
        0x7f10068f
        0x7f100690
        0x7f100693
        0x7f1006b1
        0x7f100691
        0x7f1006ea
        0x7f100699
        0x7f10069a
        0x7f10069c
        0x7f1006ed
        0x7f100692
        0x7f10069d
        0x7f1006cd
        0x7f100644
        0x7f1006df
        0x7f1006de
        0x7f100696
        0x7f100684
        0x7f10069f
        0x7f1006dd
        0x7f100654
    .end array-data

    .line 585
    :array_2
    .array-data 4
        0x7f100655
        0x7f100657
        0x7f100667
        0x7f1006a1
        0x7f1006a3
        0x7f1006a6
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f1006ca
        0x7f100677
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067f
        0x7f100680
        0x7f100681
        0x7f10065b
        0x7f100690
        0x7f100646
        0x7f1006bd
        0x7f1006c9
        0x7f1006cb
        0x7f10069c
        0x7f1006cc
        0x7f10069d
        0x7f1006b5
        0x7f10069f
        0x7f1006d0
        0x7f1006d5
        0x7f1006cd
        0x7f1006d3
        0x7f1006d4
        0x7f100659
        0x7f100656
        0x7f10065e
        0x7f1006e4
        0x7f100658
        0x7f100683
        0x7f100667
        0x7f10069b
        0x7f100669
        0x7f100671
        0x7f10066a
        0x7f1006e5
        0x7f10065a
        0x7f1006e1
        0x7f100694
        0x7f10069f
        0x7f1006d2
        0x7f1006b8
        0x7f1006b9
        0x7f10068e
        0x7f10068f
        0x7f100697
        0x7f1006b0
        0x7f1006bb
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/Settings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 338
    sput-boolean p0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$2300()J
    .locals 2

    .prologue
    .line 338
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 338
    sput p0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/settings/Settings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget v0, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/Settings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/Settings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget v0, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/settings/Settings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/Settings;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    return-void
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 5944
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5945
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5946
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5947
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5949
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 3867
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3869
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 3901
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3870
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3871
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3872
    :cond_2
    iget v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchTopLevelHeaderId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3875
    :cond_3
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3876
    iget-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3889
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3890
    .local v2, "parentHeaderTitleRes":I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3891
    .local v1, "parentFragmentClass":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3892
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3893
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3894
    if-eqz v2, :cond_0

    .line 3895
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3898
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parentFragmentClass":Ljava/lang/String;
    .end local v2    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 5953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5954
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5956
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5957
    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5958
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5959
    return-object v0
.end method

.method private getSelectedTabFromFragmentClass()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5507
    sget-boolean v5, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSelectedTabFromFragmentClass() mFragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 5510
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    const-string v6, "DCMHomeSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5511
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5512
    new-instance v2, Ljava/lang/Long;

    const-wide/32 v4, 0x7f100685

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 5513
    sput v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 5604
    :cond_1
    :goto_0
    return v1

    .line 5516
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 5517
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5518
    :cond_4
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v2

    .line 5519
    goto :goto_0

    .line 5516
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5523
    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_b

    .line 5524
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5525
    :cond_9
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5523
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5530
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 5531
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5532
    :cond_d
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v1, v3

    .line 5533
    goto/16 :goto_0

    .line 5530
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5537
    :cond_10
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5538
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5539
    :cond_12
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v1, v4

    .line 5540
    goto/16 :goto_0

    .line 5537
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5543
    .end local v0    # "i":I
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5545
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1a

    .line 5546
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5547
    :cond_17
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move v1, v2

    .line 5548
    goto/16 :goto_0

    .line 5545
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5552
    :cond_1a
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1e

    .line 5553
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5554
    :cond_1c
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5552
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5559
    :cond_1e
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 5560
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5561
    :cond_20
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move v1, v3

    .line 5562
    goto/16 :goto_0

    .line 5559
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5566
    :cond_23
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5567
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5568
    :cond_25
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v1, v4

    .line 5569
    goto/16 :goto_0

    .line 5566
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5574
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2d

    .line 5575
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5576
    :cond_2a
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move v1, v2

    .line 5577
    goto/16 :goto_0

    .line 5574
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5581
    :cond_2d
    const/4 v0, 0x0

    :goto_a
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_31

    .line 5582
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    :cond_2e
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 5583
    :cond_2f
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5581
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5588
    :cond_31
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 5589
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 5590
    :cond_33
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_34

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v1, v3

    .line 5591
    goto/16 :goto_0

    .line 5588
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5595
    :cond_36
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5596
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 5597
    :cond_38
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_39

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v1, v4

    .line 5598
    goto/16 :goto_0

    .line 5595
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    move v1, v2

    .line 5604
    goto/16 :goto_0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5486
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 5487
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 5488
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5489
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5490
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 5494
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 5764
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5766
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 5767
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 5768
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 5770
    :cond_0
    sget-boolean v3, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "Settings"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5777
    :cond_1
    :goto_0
    return v2

    .line 5774
    :catch_0
    move-exception v0

    .line 5775
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Settings"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOrangeCustomer()Z
    .locals 1

    .prologue
    .line 5477
    const/4 v0, 0x0

    return v0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 5498
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 5499
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 5500
    const/4 v1, 0x1

    .line 5502
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 3862
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSORY"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 3723
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100659

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10065b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100686

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3728
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10067e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3729
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100679

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100682

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    return-void
.end method

.method private setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 5608
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 5609
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .line 5611
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5612
    if-eqz v1, :cond_0

    .line 5613
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5614
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5621
    :cond_0
    :goto_0
    return-void

    .line 5619
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5618
    :catch_1
    move-exception v2

    goto :goto_0

    .line 5617
    :catch_2
    move-exception v2

    goto :goto_0

    .line 5616
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 3923
    move-object v0, p1

    .line 3924
    .local v0, "switchId":Ljava/lang/String;
    const-string v1, "com.android.settings.SPenSettingsMenu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3925
    const-string v0, "com.android.settings.PenSettingsMenu"

    .line 3927
    :cond_0
    return-object v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 2241
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 2243
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 2326
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2328
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2329
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 2331
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 2332
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2333
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2334
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2335
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2336
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2337
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2339
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 2340
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 2342
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2343
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2345
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 2347
    :catch_0
    move-exception v3

    .line 2348
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchTopLevelHeaderId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 3904
    const/4 v0, -0x1

    .line 3905
    .local v0, "switchId":I
    packed-switch p1, :pswitch_data_0

    .line 3910
    move v0, p1

    .line 3914
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3915
    const v1, 0x7f10069b

    if-ne p1, v1, :cond_0

    .line 3916
    const v0, 0x7f100675

    .line 3919
    :cond_0
    return v0

    .line 3907
    :pswitch_0
    const v0, 0x7f10063f

    .line 3908
    goto :goto_0

    .line 3905
    :pswitch_data_0
    .packed-switch 0x7f10063e
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2724
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v40, v0

    const-string v41, "show"

    sget-object v42, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v43, "eng"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    invoke-interface/range {v40 .. v42}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 2727
    .local v36, "showDev":Z
    const/4 v12, 0x0

    .line 2729
    .local v12, "i":I
    const-string v40, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/UserManager;

    .line 2730
    .local v38, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->clear()V

    .line 2733
    const/16 v27, 0x0

    .line 2734
    .local v27, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v26

    .line 2735
    .local v26, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v26, :cond_0

    .line 2736
    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v27

    .line 2740
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_fa

    .line 2741
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceActivity$Header;

    .line 2743
    .local v11, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    long-to-int v13, v0

    .line 2746
    .local v13, "id":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    const/16 v41, 0x64

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_d

    const/16 v19, 0x1

    .line 2750
    .local v19, "isKnoxUser":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_1

    .line 2752
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 2754
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2

    .line 2756
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 2760
    :cond_2
    const/16 v33, 0x0

    .line 2761
    .local v33, "removed":Z
    if-eqz v27, :cond_3

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2763
    .local v9, "element":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 2764
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 2766
    .local v39, "val":I
    and-int v40, v39, v27

    if-eqz v40, :cond_3

    .line 2768
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2769
    const/16 v33, 0x1

    .line 2773
    .end local v9    # "element":Ljava/lang/Integer;
    .end local v39    # "val":I
    :cond_3
    if-nez v33, :cond_0

    .line 2775
    const v40, 0x7f100686

    move/from16 v0, v40

    if-ne v13, v0, :cond_e

    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "shopdemo"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 2779
    .local v35, "shop":I
    const/4 v5, 0x1

    .line 2780
    .local v5, "bEnable":Z
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v41, "enterprise_policy"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2781
    .local v28, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v40

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v40

    if-nez v40, :cond_4

    .line 2782
    const/4 v5, 0x0

    .line 2784
    :cond_4
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_5

    const-string v40, "Settings"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_5
    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    if-nez v5, :cond_7

    .line 2787
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3660
    .end local v5    # "bEnable":Z
    .end local v28    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v35    # "shop":I
    :cond_7
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_f7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    if-ne v0, v11, :cond_f7

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x7f10063d

    cmp-long v40, v40, v42

    if-eqz v40, :cond_f7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v40

    if-nez v40, :cond_f7

    if-nez v19, :cond_f7

    .line 3663
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3678
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    if-nez v40, :cond_9

    .line 3680
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 3682
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_a

    .line 3684
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 3688
    :cond_a
    if-eqz v27, :cond_b

    .line 3689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3690
    .restart local v9    # "element":Ljava/lang/Integer;
    if-eqz v9, :cond_b

    .line 3691
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 3693
    .restart local v39    # "val":I
    and-int v40, v39, v27

    if-eqz v40, :cond_b

    .line 3695
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3702
    .end local v9    # "element":Ljava/lang/Integer;
    .end local v39    # "val":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    if-ne v0, v11, :cond_0

    .line 3704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v40, v0

    if-nez v40, :cond_c

    invoke-static {v11}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v40

    if-eqz v40, :cond_c

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x7f10063d

    cmp-long v40, v40, v42

    if-eqz v40, :cond_c

    .line 3707
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3708
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v40

    if-eqz v40, :cond_c

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_c

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x7f100645

    cmp-long v40, v40, v42

    if-nez v40, :cond_c

    .line 3709
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3712
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2746
    .end local v19    # "isKnoxUser":Z
    .end local v33    # "removed":Z
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2788
    .restart local v19    # "isKnoxUser":Z
    .restart local v33    # "removed":Z
    :cond_e
    const v40, 0x7f1006a6

    move/from16 v0, v40

    if-ne v13, v0, :cond_11

    .line 2789
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_f

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_f

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_f

    .line 2791
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2792
    :cond_f
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_10

    .line 2793
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2794
    :cond_10
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2795
    const v40, 0x7f0a11fb

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 2797
    :cond_11
    const v40, 0x7f1006da

    move/from16 v0, v40

    if-ne v13, v0, :cond_13

    .line 2798
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_12

    .line 2799
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2800
    :cond_12
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2801
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2803
    :cond_13
    const v40, 0x7f1006db

    move/from16 v0, v40

    if-ne v13, v0, :cond_17

    .line 2804
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_14

    .line 2805
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2806
    :cond_14
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 2807
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2809
    :cond_15
    const-string v40, "ro.product.device"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2810
    .local v7, "device":Ljava/lang/String;
    if-eqz v7, :cond_16

    const-string v40, "ms01"

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_16

    const/16 v40, 0x1

    :goto_4
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 2811
    .local v20, "isMS01":Ljava/lang/Boolean;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_7

    if-eqz v19, :cond_7

    .line 2812
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2810
    .end local v20    # "isMS01":Ljava/lang/Boolean;
    :cond_16
    const/16 v40, 0x0

    goto :goto_4

    .line 2814
    .end local v7    # "device":Ljava/lang/String;
    :cond_17
    const v40, 0x7f1006dc

    move/from16 v0, v40

    if-ne v13, v0, :cond_19

    .line 2815
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_18

    .line 2816
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2817
    :cond_18
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2818
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2820
    :cond_19
    const v40, 0x7f1006a2

    move/from16 v0, v40

    if-ne v13, v0, :cond_1a

    .line 2821
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.feature.multiwindow"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2822
    .local v3, "UseMultiWindow":Z
    if-nez v3, :cond_7

    .line 2823
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2825
    .end local v3    # "UseMultiWindow":Z
    :cond_1a
    const v40, 0x7f100675

    move/from16 v0, v40

    if-ne v13, v0, :cond_1b

    .line 2826
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2827
    const v40, 0x7f0a1e81

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 2829
    :cond_1b
    const v40, 0x7f1006a1

    move/from16 v0, v40

    if-ne v13, v0, :cond_1e

    .line 2830
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v40

    if-eqz v40, :cond_1c

    .line 2831
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2834
    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.app.wallpaperchooser"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2835
    .local v2, "Info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_7

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_7

    .line 2836
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2837
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    if-nez v40, :cond_1d

    .line 2838
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2840
    :cond_1d
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    const-string v41, "com.sec.android.app.wallpaperchooser"

    const-string v42, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual/range {v40 .. v42}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2841
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    const v41, 0x10008000

    invoke-virtual/range {v40 .. v41}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2843
    .end local v2    # "Info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v40

    goto/16 :goto_2

    .line 2847
    :cond_1e
    const v40, 0x7f1006dd

    move/from16 v0, v40

    if-ne v13, v0, :cond_1f

    .line 2848
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2849
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2851
    :cond_1f
    const v40, 0x7f10063d

    move/from16 v0, v40

    if-ne v13, v0, :cond_22

    .line 2852
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v40

    if-eqz v40, :cond_21

    :cond_20
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2853
    :cond_21
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2855
    :cond_22
    const v40, 0x7f1006e5

    move/from16 v0, v40

    if-ne v13, v0, :cond_23

    .line 2857
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2859
    :cond_23
    const v40, 0x7f100694

    move/from16 v0, v40

    if-ne v13, v0, :cond_24

    .line 2860
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->needsDockSettings()Z

    move-result v40

    if-nez v40, :cond_7

    .line 2861
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2862
    :cond_24
    const v40, 0x7f100673

    move/from16 v0, v40

    if-eq v13, v0, :cond_7

    const v40, 0x7f10067b

    move/from16 v0, v40

    if-eq v13, v0, :cond_7

    .line 2864
    const v40, 0x7f100657

    move/from16 v0, v40

    if-ne v13, v0, :cond_25

    .line 2866
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "android.hardware.wifi"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 2867
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2870
    :cond_25
    const v40, 0x7f100656

    move/from16 v0, v40

    if-ne v13, v0, :cond_28

    .line 2871
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_26

    .line 2872
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2875
    :cond_26
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.oem.smartwifisupport"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 2876
    .local v4, "appState":I
    const/16 v40, 0x2

    move/from16 v0, v40

    if-ne v4, v0, :cond_7

    .line 2877
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2879
    .end local v4    # "appState":I
    :catch_1
    move-exception v14

    .line 2880
    .local v14, "ie":Ljava/lang/IllegalArgumentException;
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_27

    const-string v40, "Settings"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_27
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2885
    .end local v14    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_28
    const v40, 0x7f1006e4

    move/from16 v0, v40

    if-ne v13, v0, :cond_29

    .line 2888
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2890
    :cond_29
    const v40, 0x7f100658

    move/from16 v0, v40

    if-ne v13, v0, :cond_2a

    .line 2904
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2906
    :cond_2a
    const v40, 0x7f100666

    move/from16 v0, v40

    if-ne v13, v0, :cond_2b

    .line 2907
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    .line 2908
    const-string v40, "CTC"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 2909
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2915
    :cond_2b
    const v40, 0x7f100661

    move/from16 v0, v40

    if-ne v13, v0, :cond_2d

    .line 2918
    const-string v40, "CTC"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2c

    if-eqz v19, :cond_7

    .line 2919
    :cond_2c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2921
    :cond_2d
    const v40, 0x7f100659

    move/from16 v0, v40

    if-ne v13, v0, :cond_2e

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "android.hardware.bluetooth"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 2924
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2926
    :cond_2e
    const v40, 0x7f100690

    move/from16 v0, v40

    if-ne v13, v0, :cond_30

    .line 2927
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_7

    .line 2928
    :cond_2f
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2930
    :cond_30
    const v40, 0x7f10065f

    move/from16 v0, v40

    if-ne v13, v0, :cond_33

    .line 2932
    const-string v40, "network_management"

    invoke-static/range {v40 .. v40}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v29

    .line 2934
    .local v29, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-nez v40, :cond_32

    const/16 v22, 0x1

    .line 2936
    .local v22, "isOthersUser":Z
    :goto_5
    :try_start_2
    invoke-interface/range {v29 .. v29}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v40

    if-eqz v40, :cond_31

    if-eqz v22, :cond_7

    .line 2937
    :cond_31
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2939
    :catch_2
    move-exception v40

    goto/16 :goto_2

    .line 2934
    .end local v22    # "isOthersUser":Z
    :cond_32
    const/16 v22, 0x0

    goto :goto_5

    .line 2942
    .end local v29    # "netManager":Landroid/os/INetworkManagementService;
    :cond_33
    const v40, 0x7f100678

    move/from16 v0, v40

    if-ne v13, v0, :cond_34

    .line 2944
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2945
    const-string v40, "com.android.settings.fuelgauge.PowerUsageSummary"

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2946
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2947
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    move/from16 v40, v0

    if-nez v40, :cond_7

    .line 2948
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2951
    :cond_34
    const v40, 0x7f100663

    move/from16 v0, v40

    if-ne v13, v0, :cond_36

    .line 2953
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v40

    if-eqz v40, :cond_35

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2955
    :cond_35
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2957
    :cond_36
    const v40, 0x7f100664

    move/from16 v0, v40

    if-ne v13, v0, :cond_38

    .line 2959
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v40

    if-eqz v40, :cond_37

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2960
    :cond_37
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2962
    :cond_38
    const v40, 0x7f100665

    move/from16 v0, v40

    if-ne v13, v0, :cond_3a

    .line 2963
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v40

    if-eqz v40, :cond_39

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2964
    :cond_39
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2966
    :cond_3a
    const v40, 0x7f100666

    move/from16 v0, v40

    if-ne v13, v0, :cond_3b

    .line 2967
    const-string v40, "CTC"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 2968
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2970
    :cond_3b
    const v40, 0x7f10065e

    move/from16 v0, v40

    if-ne v13, v0, :cond_3d

    .line 2971
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_3c

    const-string v40, "BRI"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_3c

    .line 2975
    :cond_3c
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2977
    :cond_3d
    const v40, 0x7f100699

    move/from16 v0, v40

    if-ne v13, v0, :cond_40

    .line 2978
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_3e

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_3f

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_3f

    .line 2979
    :cond_3e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2980
    :cond_3f
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2981
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2983
    :cond_40
    const v40, 0x7f10069a

    move/from16 v0, v40

    if-ne v13, v0, :cond_44

    .line 2984
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_41

    .line 2985
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2986
    :cond_41
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_42

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_43

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_43

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_43

    .line 2987
    :cond_42
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2988
    :cond_43
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 2989
    const-string v40, "com.android.settings.motion2013.MotionSettings"

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 2992
    :cond_44
    const v40, 0x7f1006dc

    move/from16 v0, v40

    if-ne v13, v0, :cond_46

    .line 2993
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_45

    .line 2994
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2995
    :cond_45
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 2996
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2998
    :cond_46
    const v40, 0x7f10069c

    move/from16 v0, v40

    if-ne v13, v0, :cond_48

    .line 2999
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_47

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3000
    :cond_47
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3002
    :cond_48
    const v40, 0x7f10069d

    move/from16 v0, v40

    if-ne v13, v0, :cond_4a

    .line 3003
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_49

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_49

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3006
    :cond_49
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3008
    :cond_4a
    const v40, 0x7f1006cd

    move/from16 v0, v40

    if-ne v13, v0, :cond_4c

    .line 3009
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v40

    if-eqz v40, :cond_4b

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3010
    :cond_4b
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3012
    :cond_4c
    const v40, 0x7f10069b

    move/from16 v0, v40

    if-ne v13, v0, :cond_4d

    .line 3018
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3019
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3021
    :cond_4d
    const v40, 0x7f100688

    move/from16 v0, v40

    if-ne v13, v0, :cond_4f

    .line 3022
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4e

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3023
    :cond_4e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3025
    :cond_4f
    const v40, 0x7f1006ed

    move/from16 v0, v40

    if-ne v13, v0, :cond_50

    .line 3026
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3027
    :cond_50
    const v40, 0x7f1006ab

    move/from16 v0, v40

    if-ne v13, v0, :cond_52

    .line 3028
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-eqz v40, :cond_51

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_51

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_51

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_51

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3032
    :cond_51
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3034
    :cond_52
    const v40, 0x7f1006ac

    move/from16 v0, v40

    if-ne v13, v0, :cond_54

    .line 3035
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-eqz v40, :cond_53

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_53

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_53

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3039
    :cond_53
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3041
    :cond_54
    const v40, 0x7f10068a

    move/from16 v0, v40

    if-ne v13, v0, :cond_56

    .line 3042
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-nez v40, :cond_55

    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_55

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3045
    :cond_55
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3047
    :cond_56
    const v40, 0x7f1006e8

    move/from16 v0, v40

    if-ne v13, v0, :cond_58

    .line 3049
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_57

    const-string v40, "com.sec.KidsSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3050
    :cond_57
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3052
    :cond_58
    const v40, 0x7f100693

    move/from16 v0, v40

    if-ne v13, v0, :cond_5a

    .line 3053
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_59

    .line 3058
    const-string v40, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3054
    :cond_59
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3060
    :cond_5a
    const v40, 0x7f10063c

    move/from16 v0, v40

    if-ne v13, v0, :cond_5b

    .line 3071
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3072
    :cond_5b
    const v40, 0x7f1006b1

    move/from16 v0, v40

    if-ne v13, v0, :cond_5c

    .line 3073
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3074
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3076
    :cond_5c
    const v40, 0x7f10063e

    move/from16 v0, v40

    if-ne v13, v0, :cond_5d

    .line 3081
    const-string v40, "no_modify_accounts"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3082
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3084
    :cond_5d
    const v40, 0x7f10069f

    move/from16 v0, v40

    if-ne v13, v0, :cond_5e

    .line 3085
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3086
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3090
    :cond_5e
    const v40, 0x7f100697

    move/from16 v0, v40

    if-ne v13, v0, :cond_5f

    .line 3093
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3095
    :cond_5f
    const v40, 0x7f1006ee

    move/from16 v0, v40

    if-ne v13, v0, :cond_60

    .line 3098
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3100
    :cond_60
    const v40, 0x7f100662

    move/from16 v0, v40

    if-ne v13, v0, :cond_61

    .line 3102
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3103
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3105
    :cond_61
    const v40, 0x7f100646

    move/from16 v0, v40

    if-ne v13, v0, :cond_62

    .line 3107
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3109
    :cond_62
    const v40, 0x7f100679

    move/from16 v0, v40

    if-ne v13, v0, :cond_67

    .line 3111
    const/16 v21, 0x1

    .line 3112
    .local v21, "isMultipleUsersAllowed":Z
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v40

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v40

    if-nez v40, :cond_63

    .line 3113
    const/16 v21, 0x0

    .line 3116
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "shopdemo"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 3117
    .restart local v35    # "shop":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v40

    if-eqz v40, :cond_64

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v40

    if-nez v40, :cond_64

    if-eqz v21, :cond_64

    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_65

    .line 3121
    :cond_64
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3122
    :cond_65
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_66

    .line 3124
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3126
    :cond_66
    const v40, 0x7f0a1c9c

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 3127
    const v40, 0x7f0a1c9d

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3130
    .end local v21    # "isMultipleUsersAllowed":Z
    .end local v35    # "shop":I
    :cond_67
    const v40, 0x7f100641

    move/from16 v0, v40

    if-ne v13, v0, :cond_6a

    .line 3131
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v40

    if-nez v40, :cond_68

    const-string v40, "no_modify_accounts"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_69

    .line 3132
    :cond_68
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3135
    :cond_69
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.cloudagent"

    const/16 v42, 0x5

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 3136
    :catch_3
    move-exception v8

    .line 3137
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3140
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6a
    const v40, 0x7f1006b3

    move/from16 v0, v40

    if-ne v13, v0, :cond_6f

    .line 3141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_6b

    const-string v40, "SPR"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_6b

    const-string v40, "BST"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_6b

    .line 3143
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3144
    :cond_6b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6d

    .line 3145
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_6c

    const-string v40, "Settings"

    const-string v41, "Samsung FOTA devices"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_6c
    const-string v40, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3148
    :cond_6d
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_6e

    const-string v40, "Settings"

    const-string v41, "Samsung non-FOTA devices"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_6e
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 3150
    .local v15, "intent":Landroid/content/Intent;
    const-string v40, "android.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3151
    const/high16 v40, 0x10200000

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3152
    iput-object v15, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 3154
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_6f
    const v40, 0x7f1006b4

    move/from16 v0, v40

    if-ne v13, v0, :cond_71

    .line 3155
    const-string v40, "ro.csc.sales_code"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3157
    .local v34, "salesCode":Ljava/lang/String;
    const-string v40, "VZW"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_70

    .line 3158
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3161
    :cond_70
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.fotaclient"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3162
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 3163
    :catch_4
    move-exception v8

    .line 3164
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v40, "Settings"

    const-string v41, "Verizon OMADM devices"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 3166
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v40, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3167
    const/high16 v40, 0x10200000

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3168
    iput-object v15, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 3171
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v34    # "salesCode":Ljava/lang/String;
    :cond_71
    const v40, 0x7f1006b2

    move/from16 v0, v40

    if-ne v13, v0, :cond_72

    .line 3172
    const/16 v24, 0x1

    .line 3174
    .local v24, "isSprintDsa":Z
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sprint.dsa"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3180
    :goto_6
    if-nez v24, :cond_7

    .line 3181
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3175
    :catch_5
    move-exception v8

    .line 3176
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v24, 0x0

    goto :goto_6

    .line 3183
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24    # "isSprintDsa":Z
    :cond_72
    const v40, 0x7f1006e9

    move/from16 v0, v40

    if-ne v13, v0, :cond_73

    .line 3185
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3187
    :cond_73
    const v40, 0x7f10068b

    move/from16 v0, v40

    if-ne v13, v0, :cond_74

    .line 3189
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3191
    :cond_74
    const v40, 0x7f100669

    move/from16 v0, v40

    if-ne v13, v0, :cond_7b

    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "android.hardware.nfc"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_75

    .line 3196
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3198
    :cond_75
    const/16 v31, 0x0

    .line 3200
    .local v31, "nfcsummary":Ljava/lang/CharSequence;
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.android.settings.nfcsummary"

    invoke-virtual/range {v40 .. v41}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 3201
    if-eqz v31, :cond_76

    .line 3202
    move-object/from16 v0, v31

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3203
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3208
    :cond_76
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3209
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v30

    .line 3210
    .local v30, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_77

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v40

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_78

    .line 3211
    :cond_77
    const v40, 0x7f0a0372

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3205
    .end local v30    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_6
    move-exception v8

    .line 3206
    .local v8, "e":Ljava/lang/NullPointerException;
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_76

    const-string v40, "CSCAppRes"

    const-string v41, "No data for CSCAppResourceUri"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3212
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v30    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_78
    invoke-virtual/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v40

    const/16 v41, 0x5

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_79

    .line 3213
    const v40, 0x7f0a0370

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3214
    :cond_79
    invoke-virtual/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_7a

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v40

    const/16 v41, 0x4

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 3215
    :cond_7a
    const v40, 0x7f0a0371

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3220
    .end local v30    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v31    # "nfcsummary":Ljava/lang/CharSequence;
    :cond_7b
    const v40, 0x7f100671

    move/from16 v0, v40

    if-ne v13, v0, :cond_7c

    .line 3221
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3222
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3225
    :cond_7c
    const v40, 0x7f10066a

    move/from16 v0, v40

    if-ne v13, v0, :cond_7f

    .line 3227
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v40

    if-nez v40, :cond_7d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v40

    if-nez v40, :cond_7e

    .line 3228
    :cond_7d
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3230
    :cond_7e
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3231
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3234
    :cond_7f
    const v40, 0x7f10066d

    move/from16 v0, v40

    if-ne v13, v0, :cond_80

    .line 3236
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3238
    :cond_80
    const v40, 0x7f10066e

    move/from16 v0, v40

    if-ne v13, v0, :cond_81

    .line 3240
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3241
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3243
    :cond_81
    const v40, 0x7f10066f

    move/from16 v0, v40

    if-ne v13, v0, :cond_83

    .line 3244
    const/16 v25, 0x1

    .line 3246
    .local v25, "isSupportMirrorLink":Z
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.samsung.android.app.mirrorlink"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3250
    if-nez v25, :cond_7

    .line 3252
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3247
    :catch_7
    move-exception v8

    .line 3248
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x0

    .line 3250
    if-nez v25, :cond_7

    .line 3252
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3250
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v40

    if-eqz v25, :cond_82

    .line 3252
    :goto_8
    throw v40

    :cond_82
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 3255
    .end local v25    # "isSupportMirrorLink":Z
    :cond_83
    const v40, 0x7f100670

    move/from16 v0, v40

    if-ne v13, v0, :cond_84

    .line 3257
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.app.kieswifi"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 3258
    :catch_8
    move-exception v8

    .line 3259
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3262
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_84
    const v40, 0x7f100645

    move/from16 v0, v40

    if-ne v13, v0, :cond_87

    .line 3263
    const-string v40, "DCM"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_85

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isDocomoSettingsDisabled()Z

    move-result v40

    if-eqz v40, :cond_86

    .line 3264
    :cond_85
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3268
    :cond_86
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.nttdocomo.android.docomoset"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_2

    .line 3269
    :catch_9
    move-exception v8

    .line 3270
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3273
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_87
    const v40, 0x7f10066c

    move/from16 v0, v40

    if-ne v13, v0, :cond_88

    .line 3274
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v40

    if-nez v40, :cond_7

    .line 3275
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3277
    :cond_88
    const v40, 0x7f100667

    move/from16 v0, v40

    if-ne v13, v0, :cond_8b

    .line 3279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-nez v40, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-nez v40, :cond_89

    const-string v40, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3280
    :cond_89
    const-string v40, "ro.product.name"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3281
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v40

    const-string v41, "wilcoxlte"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_8a

    const/16 v40, 0x1

    :goto_9
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 3282
    .local v18, "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-nez v40, :cond_7

    .line 3283
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3281
    .end local v18    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_8a
    const/16 v40, 0x0

    goto :goto_9

    .line 3286
    .end local v7    # "device":Ljava/lang/String;
    :cond_8b
    const v40, 0x7f10067a

    move/from16 v0, v40

    if-ne v13, v0, :cond_8c

    .line 3299
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3301
    :cond_8c
    const v40, 0x7f100682

    move/from16 v0, v40

    if-ne v13, v0, :cond_8e

    .line 3303
    if-eqz v36, :cond_8d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3304
    :cond_8d
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3306
    :cond_8e
    const v40, 0x7f1006ec

    move/from16 v0, v40

    if-ne v13, v0, :cond_8f

    .line 3307
    const-string v40, "no_modify_accounts"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    if-nez v19, :cond_7

    .line 3308
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3310
    :cond_8f
    const v40, 0x7f1006f0

    move/from16 v0, v40

    if-ne v13, v0, :cond_91

    .line 3312
    if-eqz v36, :cond_90

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v40

    if-nez v40, :cond_7

    .line 3313
    :cond_90
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3315
    :cond_91
    const v40, 0x7f10068e

    move/from16 v0, v40

    if-ne v13, v0, :cond_95

    .line 3316
    const-string v40, "ro.multisim.simslotcount"

    const/16 v41, 0x1

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 3317
    .local v37, "simSlotCount":I
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v40

    if-eqz v40, :cond_92

    .line 3318
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3319
    :cond_92
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-nez v40, :cond_93

    .line 3320
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3321
    :cond_93
    const/16 v40, 0x2

    move/from16 v0, v37

    move/from16 v1, v40

    if-ge v0, v1, :cond_94

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-eqz v40, :cond_94

    .line 3323
    if-eqz p1, :cond_7

    .line 3324
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3325
    :cond_94
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-eqz v40, :cond_7

    const-string v40, "CDMA"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3327
    if-eqz p1, :cond_7

    .line 3328
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3331
    .end local v37    # "simSlotCount":I
    :cond_95
    const v40, 0x7f10068f

    move/from16 v0, v40

    if-ne v13, v0, :cond_9a

    .line 3332
    const-string v40, "Settings"

    const-string v41, "simcard_management_chn:only China model except for CTC use this item"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v40

    if-nez v40, :cond_96

    .line 3334
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3335
    :cond_96
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v41, "com.sec.android.app.simcardmgr"

    invoke-static/range {v40 .. v41}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_97

    .line 3336
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3337
    :cond_97
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-nez v40, :cond_98

    .line 3338
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3339
    :cond_98
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-eqz v40, :cond_99

    const-string v40, "CDMA"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_99

    .line 3340
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3341
    :cond_99
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_7

    .line 3342
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3344
    :cond_9a
    const v40, 0x7f1006eb

    move/from16 v0, v40

    if-ne v13, v0, :cond_9c

    .line 3345
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_9b

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v40

    if-nez v40, :cond_7

    .line 3346
    :cond_9b
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3350
    :cond_9c
    const v40, 0x7f10065b

    move/from16 v0, v40

    if-ne v13, v0, :cond_9f

    .line 3351
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-nez v40, :cond_9d

    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9e

    :cond_9d
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3353
    :cond_9e
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3357
    :cond_9f
    const v40, 0x7f10065c

    move/from16 v0, v40

    if-ne v13, v0, :cond_a0

    .line 3358
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3360
    :cond_a0
    const v40, 0x7f1006ae

    move/from16 v0, v40

    if-ne v13, v0, :cond_a2

    .line 3361
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_a1

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3362
    :cond_a1
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3365
    :cond_a2
    const v40, 0x7f1006b6

    move/from16 v0, v40

    if-ne v13, v0, :cond_a3

    .line 3367
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3370
    :cond_a3
    const v40, 0x7f10065d

    move/from16 v0, v40

    if-ne v13, v0, :cond_a4

    .line 3372
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3375
    :cond_a4
    const v40, 0x7f10065a

    move/from16 v0, v40

    if-ne v13, v0, :cond_a9

    .line 3376
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-nez v40, :cond_a5

    .line 3377
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3379
    :cond_a5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_a8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-nez v40, :cond_a8

    const/16 v23, 0x1

    .line 3381
    .local v23, "isSecondaryUser":Z
    :goto_a
    const-string v40, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 3383
    .local v6, "cm":Landroid/net/ConnectivityManager;
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a6

    .line 3386
    :cond_a6
    if-nez v23, :cond_a7

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v40

    if-eqz v40, :cond_a7

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_a7

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    const-string v40, "ATT"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3387
    :cond_a7
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3379
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    .end local v23    # "isSecondaryUser":Z
    :cond_a8
    const/16 v23, 0x0

    goto :goto_a

    .line 3392
    :cond_a9
    const v40, 0x7f100646

    move/from16 v0, v40

    if-ne v13, v0, :cond_aa

    .line 3395
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3397
    :cond_aa
    const v40, 0x7f1006e3

    move/from16 v0, v40

    if-ne v13, v0, :cond_ab

    .line 3399
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3400
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3402
    :cond_ab
    const v40, 0x7f100685

    move/from16 v0, v40

    if-ne v13, v0, :cond_ac

    .line 3403
    const-string v40, "DCM"

    const-string v41, "ro.csc.sales_code"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3404
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3406
    :cond_ac
    const v40, 0x7f100678

    move/from16 v0, v40

    if-eq v13, v0, :cond_7

    .line 3408
    const v40, 0x7f1006e0

    move/from16 v0, v40

    if-ne v13, v0, :cond_af

    .line 3409
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3410
    .local v16, "isChinaNal":Ljava/lang/String;
    if-eqz v16, :cond_ad

    const-string v40, "ChinaNalSecurity"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_ae

    .line 3411
    :cond_ad
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3414
    :cond_ae
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.app.capabilitymanager"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_2

    .line 3415
    :catch_a
    move-exception v8

    .line 3416
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3419
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "isChinaNal":Ljava/lang/String;
    :cond_af
    const v40, 0x7f1006e6

    move/from16 v0, v40

    if-ne v13, v0, :cond_b0

    .line 3420
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3421
    :cond_b0
    const v40, 0x7f10066b

    move/from16 v0, v40

    if-ne v13, v0, :cond_b2

    .line 3422
    invoke-virtual/range {v38 .. v38}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3423
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_b1

    const-string v40, "Settings"

    const-string v41, "Restrict mode - remove Nearby devices"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_b1
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3426
    :cond_b2
    const v40, 0x7f100667

    move/from16 v0, v40

    if-ne v13, v0, :cond_b5

    .line 3427
    const-string v40, "ro.product.name"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3428
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_b3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v40

    const-string v41, "wilcoxlte"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_b3

    const/16 v40, 0x1

    :goto_b
    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 3430
    .restart local v18    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_b4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-nez v40, :cond_b4

    const/16 v22, 0x1

    .line 3431
    .restart local v22    # "isOthersUser":Z
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-eqz v40, :cond_7

    if-eqz v22, :cond_7

    .line 3432
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-nez v40, :cond_7

    .line 3433
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3428
    .end local v18    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    .end local v22    # "isOthersUser":Z
    :cond_b3
    const/16 v40, 0x0

    goto :goto_b

    .line 3430
    .restart local v18    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_b4
    const/16 v22, 0x0

    goto :goto_c

    .line 3436
    .end local v7    # "device":Ljava/lang/String;
    .end local v18    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_b5
    const v40, 0x7f1006e1

    move/from16 v0, v40

    if-ne v13, v0, :cond_b6

    .line 3437
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3438
    :cond_b6
    const v40, 0x7f100692

    move/from16 v0, v40

    if-ne v13, v0, :cond_b8

    .line 3439
    const-string v40, "ro.product.name"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3440
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_b7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v40

    const-string v41, "jactivelte"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_b7

    const/16 v17, 0x1

    .line 3441
    .local v17, "isDeviceJactive":Z
    :goto_d
    if-nez v17, :cond_7

    .line 3442
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3440
    .end local v17    # "isDeviceJactive":Z
    :cond_b7
    const/16 v17, 0x0

    goto :goto_d

    .line 3444
    .end local v7    # "device":Ljava/lang/String;
    :cond_b8
    const v40, 0x7f1006ef

    move/from16 v0, v40

    if-ne v13, v0, :cond_b9

    .line 3445
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3446
    :cond_b9
    const v40, 0x7f10068c

    move/from16 v0, v40

    if-ne v13, v0, :cond_ba

    .line 3448
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3450
    :cond_ba
    const v40, 0x7f1006a8

    move/from16 v0, v40

    if-ne v13, v0, :cond_bb

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "shopdemo"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 3453
    .restart local v35    # "shop":I
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3455
    .end local v35    # "shop":I
    :cond_bb
    const v40, 0x7f10068d

    move/from16 v0, v40

    if-ne v13, v0, :cond_bf

    .line 3456
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_bc

    .line 3457
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3459
    :cond_bc
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_bd

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_be

    .line 3460
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0a0dd9

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3461
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3464
    :cond_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0a0dd8

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3465
    const/16 v40, 0x0

    move/from16 v0, v40

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3467
    :cond_bf
    const v40, 0x7f10064a

    move/from16 v0, v40

    if-ne v13, v0, :cond_c2

    .line 3468
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    if-eqz v40, :cond_c1

    const/16 v22, 0x1

    .line 3469
    .restart local v22    # "isOthersUser":Z
    :goto_e
    const-string v40, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v40 .. v40}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_c0

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_c0

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_c0

    if-eqz v22, :cond_7

    .line 3471
    :cond_c0
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3468
    .end local v22    # "isOthersUser":Z
    :cond_c1
    const/16 v22, 0x0

    goto :goto_e

    .line 3473
    :cond_c2
    const v40, 0x7f100691

    move/from16 v0, v40

    if-ne v13, v0, :cond_c3

    .line 3478
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.sec.android.app.safetyassurance"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_2

    .line 3479
    :catch_b
    move-exception v8

    .line 3480
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3483
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c3
    const v40, 0x7f1006b0

    move/from16 v0, v40

    if-ne v13, v0, :cond_c4

    .line 3485
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3487
    :cond_c4
    const v40, 0x7f1006e7

    move/from16 v0, v40

    if-ne v13, v0, :cond_c5

    .line 3488
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3489
    :cond_c5
    const v40, 0x7f10069e

    move/from16 v0, v40

    if-ne v13, v0, :cond_c7

    .line 3490
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/Settings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v40

    if-eqz v40, :cond_c6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isVoiceControlEnabled()Z

    move-result v40

    if-eqz v40, :cond_c6

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v40

    if-nez v40, :cond_c6

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3491
    :cond_c6
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3493
    :cond_c7
    const v40, 0x7f1006ea

    move/from16 v0, v40

    if-ne v13, v0, :cond_c8

    .line 3494
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3495
    :cond_c8
    const v40, 0x7f100643

    move/from16 v0, v40

    if-ne v13, v0, :cond_c9

    .line 3496
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3497
    :cond_c9
    const v40, 0x7f10066b

    move/from16 v0, v40

    if-ne v13, v0, :cond_ca

    .line 3498
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3499
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3501
    :cond_ca
    const v40, 0x7f100698

    move/from16 v0, v40

    if-ne v13, v0, :cond_cc

    .line 3502
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "shopdemo"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 3503
    .restart local v35    # "shop":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_cb

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_cb

    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_7

    .line 3504
    :cond_cb
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3506
    .end local v35    # "shop":I
    :cond_cc
    const v40, 0x7f100695

    move/from16 v0, v40

    if-ne v13, v0, :cond_ce

    .line 3508
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    const-string v41, "com.skyfire.browser.toolbar.att"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v32

    .line 3510
    .local v32, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_cd

    if-eqz v32, :cond_cd

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v40, v0

    if-nez v40, :cond_7

    .line 3511
    :cond_cd
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_2

    .line 3513
    .end local v32    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_c
    move-exception v8

    .line 3514
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3515
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_7

    const-string v40, "Settings"

    const-string v41, "Browser Bar is not found"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3518
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ce
    const v40, 0x7f10063f

    move/from16 v0, v40

    if-ne v13, v0, :cond_cf

    .line 3522
    const-string v40, "no_modify_accounts"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3523
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3525
    :cond_cf
    const v40, 0x7f100640

    move/from16 v0, v40

    if-ne v13, v0, :cond_d0

    .line 3526
    const-string v40, "no_modify_accounts"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3527
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3529
    :cond_d0
    const v40, 0x7f100687

    move/from16 v0, v40

    if-ne v13, v0, :cond_d2

    .line 3530
    const-string v40, "CTC"

    const-string v41, "ro.csc.sales_code"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    move/from16 v40, v0

    if-nez v40, :cond_7

    .line 3531
    :cond_d1
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3533
    :cond_d2
    const v40, 0x7f100660

    move/from16 v0, v40

    if-ne v13, v0, :cond_d3

    .line 3534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v40

    if-eqz v40, :cond_7

    .line 3535
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v40

    if-nez v40, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v40

    if-nez v40, :cond_7

    .line 3536
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3538
    :cond_d3
    const v40, 0x7f10065b

    move/from16 v0, v40

    if-ne v13, v0, :cond_d4

    .line 3539
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3540
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3541
    :cond_d4
    const v40, 0x7f1006b6

    move/from16 v0, v40

    if-ne v13, v0, :cond_d5

    .line 3542
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3543
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3544
    :cond_d5
    const v40, 0x7f1006a9

    move/from16 v0, v40

    if-ne v13, v0, :cond_d6

    .line 3548
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3550
    :cond_d6
    const v40, 0x7f1006aa

    move/from16 v0, v40

    if-ne v13, v0, :cond_d7

    .line 3552
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3554
    :cond_d7
    const v40, 0x7f10067d

    move/from16 v0, v40

    if-ne v13, v0, :cond_d8

    .line 3555
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3556
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3557
    :cond_d8
    const v40, 0x7f1006a4

    move/from16 v0, v40

    if-ne v13, v0, :cond_d9

    .line 3560
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3561
    :cond_d9
    const v40, 0x7f1006f3

    move/from16 v0, v40

    if-ne v13, v0, :cond_da

    .line 3562
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3563
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3564
    :cond_da
    const v40, 0x7f10064b

    move/from16 v0, v40

    if-ne v13, v0, :cond_dd

    .line 3565
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_db

    .line 3566
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    const-string v41, ":android:show_fragment"

    const-string v42, "com.android.contacts.preference.DisplayOptionsPreferenceFragment"

    invoke-virtual/range {v40 .. v42}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3568
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    const-string v41, ":android:no_headers"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3570
    :cond_db
    const-string v40, "DCM"

    const-string v41, "ro.csc.sales_code"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_dc

    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3571
    :cond_dc
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3573
    :cond_dd
    const v40, 0x7f10064c

    move/from16 v0, v40

    if-ne v13, v0, :cond_de

    .line 3574
    const-string v40, "DCM"

    const-string v41, "ro.csc.sales_code"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3575
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3577
    :cond_de
    const v40, 0x7f10064d

    move/from16 v0, v40

    if-ne v13, v0, :cond_df

    .line 3578
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3579
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3581
    :cond_df
    const v40, 0x7f10064e

    move/from16 v0, v40

    if-ne v13, v0, :cond_e0

    .line 3582
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3583
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3585
    :cond_e0
    const v40, 0x7f10064f

    move/from16 v0, v40

    if-ne v13, v0, :cond_e1

    .line 3586
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3587
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3589
    :cond_e1
    const v40, 0x7f100650

    move/from16 v0, v40

    if-ne v13, v0, :cond_e3

    .line 3590
    const-string v40, "KDI"

    const-string v41, "ro.csc.sales_code"

    invoke-static/range {v41 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e2

    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e2

    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v41, "com.android.mms"

    invoke-static/range {v40 .. v41}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3591
    :cond_e2
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3593
    :cond_e3
    const v40, 0x7f100651

    move/from16 v0, v40

    if-ne v13, v0, :cond_e7

    .line 3594
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v40

    if-nez v40, :cond_e4

    const-string v40, "XAR"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e4

    const-string v40, "XAC"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_e5

    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "easy_mode_switch"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_e6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "easy_mode_splanner"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_e6

    .line 3598
    :cond_e5
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3599
    :cond_e6
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3600
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3602
    :cond_e7
    const v40, 0x7f100652

    move/from16 v0, v40

    if-ne v13, v0, :cond_e9

    .line 3603
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v40

    if-nez v40, :cond_e8

    const-string v40, "XAR"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e8

    const-string v40, "XAC"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "easy_mode_switch"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "easy_mode_splanner"

    const/16 v42, 0x0

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    if-nez v40, :cond_7

    .line 3605
    :cond_e8
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3607
    :cond_e9
    const v40, 0x7f100649

    move/from16 v0, v40

    if-ne v13, v0, :cond_eb

    .line 3608
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v41, "com.samsung.android.coreapps"

    invoke-static/range {v40 .. v41}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getBaseContext()Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x4

    invoke-static/range {v40 .. v41}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v40

    if-gez v40, :cond_7

    .line 3609
    :cond_ea
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3611
    :cond_eb
    const v40, 0x7f100653

    move/from16 v0, v40

    if-ne v13, v0, :cond_f1

    .line 3612
    const-string v10, "com.vlingo.midas.gui.ConversationActivity"

    .line 3613
    .local v10, "fragment":Ljava/lang/String;
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_ec

    .line 3614
    invoke-static {}, Lcom/android/settings/Utils;->hasKLook()Z

    move-result v40

    if-eqz v40, :cond_f0

    .line 3615
    const-string v10, "com.vlingo.midas.settings.twopane.SettingsScreenTwoPane"

    .line 3621
    :cond_ec
    :goto_f
    sget-boolean v40, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v40, :cond_ed

    const-string v40, "Settings"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "fragment of svoice : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_ed
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    if-eqz v40, :cond_ee

    .line 3623
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    const-string v41, "com.vlingo.midas"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3625
    :cond_ee
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v40

    const-string v41, "SEC_FLOATING_FEATURE_SVOICE_CONFIG_FOR_GEAR"

    invoke-virtual/range {v40 .. v41}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_ef

    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3627
    :cond_ef
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3618
    :cond_f0
    const-string v10, "com.vlingo.midas.settings.SettingsScreen"

    goto :goto_f

    .line 3629
    .end local v10    # "fragment":Ljava/lang/String;
    :cond_f1
    const v40, 0x7f1006d0

    move/from16 v0, v40

    if-ne v13, v0, :cond_f2

    .line 3633
    const-string v40, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v40

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3635
    :cond_f2
    const v40, 0x7f100654

    move/from16 v0, v40

    if-ne v13, v0, :cond_f3

    .line 3636
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3637
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3639
    :cond_f3
    const v40, 0x7f100647

    move/from16 v0, v40

    if-ne v13, v0, :cond_f4

    .line 3640
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    goto/16 :goto_2

    .line 3643
    :cond_f4
    const v40, 0x7f100648

    move/from16 v0, v40

    if-ne v13, v0, :cond_f5

    .line 3644
    const-string v40, "VZW"

    sget-object v41, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    goto/16 :goto_2

    .line 3647
    :cond_f5
    const v40, 0x7f1006b5

    move/from16 v0, v40

    if-ne v13, v0, :cond_f6

    .line 3648
    sget-object v40, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v40 .. v40}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 3649
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3653
    :cond_f6
    const v40, 0x7f1006c6

    move/from16 v0, v40

    if-ne v13, v0, :cond_7

    .line 3654
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v40

    const-string v41, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v40 .. v41}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_7

    .line 3655
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3664
    :cond_f7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_f8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    if-ne v0, v11, :cond_f8

    if-eqz v19, :cond_f8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-nez v40, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v40

    if-nez v40, :cond_f8

    .line 3667
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3668
    :cond_f8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_f9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    if-ne v0, v11, :cond_f9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v40, v0

    if-eqz v40, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v40

    if-nez v40, :cond_f9

    .line 3670
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3671
    :cond_f9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v12, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v40

    if-ne v0, v11, :cond_8

    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v40

    if-nez v40, :cond_8

    .line 3673
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3719
    .end local v11    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v13    # "id":I
    .end local v19    # "isKnoxUser":Z
    .end local v33    # "removed":Z
    :cond_fa
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5421
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5423
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 5426
    .local v0, "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 5428
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 5432
    .end local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :goto_0
    return v1

    .line 5428
    .restart local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5432
    .end local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 2398
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2399
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 2402
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2403
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2404
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2405
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2406
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 2411
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2412
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2415
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 2409
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 2415
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3937
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2423
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 2435
    :cond_0
    :goto_0
    return-object v0

    .line 2425
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 2428
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2432
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3932
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2374
    if-eqz p1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2376
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2378
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2383
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public highlightHeaderWithoutScroll(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2387
    if-eqz p1, :cond_0

    .line 2388
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2389
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2390
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2393
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 2223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2224
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2226
    :goto_1
    return v1

    .line 2223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2226
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1503
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 5408
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 5410
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 5411
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x1610

    const/4 v3, 0x0

    .line 3956
    if-nez p1, :cond_2

    .line 3957
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3958
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 3959
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 3960
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 3985
    :cond_0
    :goto_0
    return-void

    .line 3962
    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 3967
    :cond_2
    const/16 v1, 0x160f

    if-ne p1, v1, :cond_4

    .line 3968
    if-ne p2, v4, :cond_0

    .line 3969
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Settings"

    const-string v2, "Search direct back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->setResult(I)V

    .line 3971
    sput-boolean v3, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 3972
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 3973
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0

    .line 3978
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 3979
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 3980
    const-string v1, "Settings"

    const-string v2, "SBeam help back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 5454
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 5456
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 5457
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 5459
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3990
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 3991
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setResult(I)V

    .line 3993
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 3994
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    const v8, 0x7f070036

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2551
    sget v7, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v7, :cond_10

    .line 2553
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v6

    .line 2555
    .local v6, "tabIndex":I
    if-gez v6, :cond_2

    .line 2556
    invoke-direct {p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v6

    .line 2559
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 2591
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2619
    .end local v6    # "tabIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2620
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 2623
    :cond_3
    sget v7, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_5

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2624
    iget-object v7, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2625
    .local v4, "index":Ljava/lang/Integer;
    if-nez v4, :cond_12

    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_12

    iget v7, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-eq v7, v8, :cond_12

    .line 2627
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2628
    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2633
    :goto_1
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-lez v7, :cond_5

    .line 2634
    iput v12, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 2642
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_5
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v7, :cond_9

    .line 2643
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 2644
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iget-wide v8, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v10, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1d

    .line 2645
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 2646
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2647
    :cond_6
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f10064a

    cmp-long v7, v8, v10

    if-nez v7, :cond_15

    .line 2648
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2649
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2651
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_13

    .line 2652
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2658
    :cond_7
    :goto_4
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2659
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2660
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "args_from_search"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2661
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2662
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2663
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2665
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2673
    :goto_5
    iput-boolean v12, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2718
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_6
    iput-boolean v12, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2721
    .end local v3    # "i":I
    :cond_9
    return-void

    .line 2561
    .restart local v6    # "tabIndex":I
    :pswitch_0
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2564
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2565
    const v7, 0x7f07003d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2566
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2567
    const v7, 0x7f070046

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2569
    :cond_b
    const v7, 0x7f07003c

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2573
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2574
    const v7, 0x7f07005e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2575
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2576
    const v7, 0x7f070063

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2578
    :cond_d
    const v7, 0x7f07000e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2582
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2583
    const v7, 0x7f070020

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2584
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2585
    const v7, 0x7f07005d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2587
    :cond_f
    const v7, 0x7f070073

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2611
    .end local v6    # "tabIndex":I
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2612
    const v7, 0x7f07005f

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2614
    :cond_11
    const v7, 0x7f0700c8

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2629
    .restart local v4    # "index":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 2631
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 2635
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_12
    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 2636
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-lez v7, :cond_5

    .line 2637
    iput v12, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    goto/16 :goto_2

    .line 2654
    .end local v4    # "index":Ljava/lang/Integer;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "i":I
    :cond_13
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 2655
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 2667
    :cond_14
    const-string v7, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 2668
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2669
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2670
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2671
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 2674
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_15
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f100691

    cmp-long v7, v8, v10

    if-nez v7, :cond_18

    .line 2675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2676
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2678
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_17

    .line 2679
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2685
    :cond_16
    :goto_7
    const-string v7, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 2686
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.app.safetyassurance"

    const-string v8, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2687
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2688
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2689
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2681
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_17
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_16

    .line 2682
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_7

    .line 2691
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_18
    sget v7, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_19

    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v7, :cond_19

    .line 2692
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2693
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2694
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_6

    .line 2696
    :cond_19
    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065c

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1a

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006dd

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1a

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065d

    cmp-long v7, v8, v10

    if-nez v7, :cond_1b

    .line 2702
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2703
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2704
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_6

    .line 2706
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2707
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_6

    .line 2712
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2713
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_6

    .line 2643
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 2559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 2465
    .local v1, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-class v5, Lcom/android/settings/DreamSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2487
    :cond_1
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2493
    :cond_2
    const-class v5, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2494
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2495
    .local v4, "temp":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 2496
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2502
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_3
    const-class v5, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2503
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2504
    .restart local v4    # "temp":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 2505
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2510
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2512
    const-class v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2514
    :cond_5
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2518
    :cond_6
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2520
    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2521
    .local v3, "isWifiSettingsFragment":Z
    const-class v5, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2523
    .local v2, "isBtSettingsFragment":Z
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    .line 2524
    :cond_7
    const-string v5, "settings:guide_is_on"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2527
    :cond_8
    const/4 v0, 0x0

    .line 2529
    .local v0, "guideExtra":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 2530
    const-string v0, "wifi"

    .line 2538
    :cond_9
    :goto_0
    const-string v5, "settings:guide_mode"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2542
    .end local v0    # "guideExtra":Ljava/lang/String;
    .end local v2    # "isBtSettingsFragment":Z
    .end local v3    # "isWifiSettingsFragment":Z
    :cond_a
    const-class v5, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2543
    return-object v1

    .line 2532
    .restart local v0    # "guideExtra":Ljava/lang/String;
    .restart local v2    # "isBtSettingsFragment":Z
    .restart local v3    # "isWifiSettingsFragment":Z
    :cond_b
    if-nez v2, :cond_c

    const-class v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2534
    :cond_c
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f10002c

    const/4 v8, 0x1

    const v7, 0x7f10002d

    const/4 v6, 0x0

    .line 1742
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1744
    sget v4, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v4, v8, :cond_0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v4, :cond_5

    .line 1746
    :cond_1
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1747
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, -0x3

    .line 1749
    .local v2, "mTextSize":I
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1750
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1751
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1752
    iget-object v4, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1753
    iget-object v4, p0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1771
    :goto_0
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    .line 1772
    invoke-direct {p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 1775
    :cond_2
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    if-eqz v4, :cond_5

    .line 1776
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1777
    .local v0, "bar":Landroid/app/ActionBar;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_8

    .line 1778
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1785
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "mTextSize":I
    :cond_5
    :goto_1
    return-void

    .line 1754
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "mTextSize":I
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1755
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1756
    iget-object v4, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1757
    iget-object v4, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1758
    iget-object v4, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 1760
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f03f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1761
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1762
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1763
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1764
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1765
    iget-object v4, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1766
    iget-object v4, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1767
    iget-object v4, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1768
    iget-object v4, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1780
    .end local v3    # "padding":I
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_8
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1072
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_0

    const-string v27, "VerificationLog"

    const-string v28, "onCreate"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    sput-object p0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 1074
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 1076
    new-instance v27, Lcom/android/settings/Settings$DrivingModeContentObserver;

    new-instance v28, Landroid/os/Handler;

    invoke-direct/range {v28 .. v28}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$DrivingModeContentObserver;-><init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 1077
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "driving_mode_on"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    move-object/from16 v30, v0

    invoke-virtual/range {v27 .. v30}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1078
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->isKioskContainer:Z

    .line 1079
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v27, v0

    if-eqz v27, :cond_22

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->isKioskPersonal:Z

    .line 1080
    const-string v27, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1083
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "settings:ui_options"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "settings:ui_options"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setUiOptions(I)V

    .line 1091
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v27

    if-nez v27, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1095
    :cond_2
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_3

    const-string v27, "VerificationLog"

    const-string v28, "setup spilt"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setUiOptions(I)V

    .line 1100
    :cond_4
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1102
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    .line 1103
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "p4noteltevzw"

    const-string v28, "ro.product.name"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 1104
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setMultiPane(Z)V

    .line 1107
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "device_provisioned"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 1110
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v26

    .line 1112
    .local v26, "window":Landroid/view/Window;
    if-eqz v26, :cond_8

    .line 1113
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1114
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    or-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1116
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1120
    .end local v15    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "window":Landroid/view/Window;
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    .line 1121
    const-string v27, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 1122
    .local v19, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v20

    .line 1123
    .local v20, "mUserHandle":Landroid/os/UserHandle;
    new-instance v27, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 1128
    const-string v27, "development"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1131
    const-string v27, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$DisplaySettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$InputAndControlSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$GeneralSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_23

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "settings_listui"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_23

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "settings_listui"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_24

    const/16 v27, 0x1

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    .line 1139
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-nez v27, :cond_b

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    .line 1141
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 1142
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 1147
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1148
    new-instance v27, Lcom/android/settings/Settings$ToddlerModeObserver;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$ToddlerModeObserver;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    .line 1161
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 1162
    const v27, 0x7f0b0082

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTheme(I)V

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->preventTabsEmbeddedOnActionBar()V

    .line 1166
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1167
    .local v8, "className":Ljava/lang/String;
    const-class v27, Lcom/android/settings/SubSettings;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1168
    .local v14, "isSubSettings":Z
    if-eqz v14, :cond_e

    .line 1169
    const v27, 0x7f0b00b2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTheme(I)V

    .line 1172
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 1173
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1174
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1178
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1205
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 1206
    :cond_f
    const-string v27, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    sput-boolean v27, Lcom/android/settings/Settings;->misFromSettingsMainActivity:Z

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1208
    .local v13, "intent":Landroid/content/Intent;
    const-string v27, "extra_from_search"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    sput-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 1209
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v27, :cond_11

    .line 1210
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1211
    const-string v27, "extra_header_id"

    const-wide/16 v28, -0x1

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    sput-wide v28, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 1212
    const-string v27, "extra_setting_value"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 1213
    const-string v27, "extra_fragment_bundle_key"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 1214
    const-string v27, "extra_second_fragment_bundle_key"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1216
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_10

    const-string v27, "SettingsSearch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "extra_parent_preference_key"

    const-string v30, "None"

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_10
    const-string v27, "extra_depth_counter_key"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 1219
    sget v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    add-int/lit8 v27, v27, 0x1

    sput v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 1220
    sget v27, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_25

    const/16 v27, 0x1

    :goto_3
    sput-boolean v27, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 1226
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 1231
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 1233
    .local v7, "bar":Landroid/app/ActionBar;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1234
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_28

    .line 1236
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-eqz v27, :cond_27

    .line 1237
    :cond_14
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 1238
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_26

    .line 1240
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1252
    :goto_4
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1255
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 1256
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 1258
    :cond_15
    const-string v27, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1259
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x4

    add-int/lit8 v18, v27, -0x3

    .line 1261
    .local v18, "mTextSize":I
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 1262
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-eqz v27, :cond_29

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    .line 1307
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a103d

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1310
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1bff

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1316
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1c01

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1322
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1e0d

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1328
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1381
    :goto_6
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 1382
    if-eqz p1, :cond_2f

    .line 1383
    const-string v27, "com.android.settings.ACTION_BAR_INDEX"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1384
    .local v21, "savedIndex":I
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-le v0, v1, :cond_16

    .line 1385
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1386
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 1387
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_16

    const-string v27, "Settings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Restore Tab index : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    .end local v7    # "bar":Landroid/app/ActionBar;
    .end local v9    # "display":Landroid/view/Display;
    .end local v18    # "mTextSize":I
    .end local v21    # "savedIndex":I
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v27

    if-nez v27, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 1399
    const v27, 0x7f0a01d9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 1402
    :cond_17
    if-eqz p1, :cond_18

    .line 1403
    const-string v27, "com.android.settings.CURRENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1404
    const-string v27, "com.android.settings.PARENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1408
    :cond_18
    if-eqz p1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1413
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/android/settings/Settings$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$4;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1423
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/high16 v28, 0x7f030000

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1433
    :cond_1b
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 1434
    :cond_1c
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v27, :cond_1e

    .line 1435
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_1d

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 1438
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "extra_tab_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1439
    .local v24, "tap_index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1447
    .end local v24    # "tap_index":I
    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-nez v27, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_1f

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_33

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_33

    .line 1450
    :cond_1f
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    const/16 v29, 0x80

    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1452
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_33

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_33

    .line 1453
    const/16 v25, 0x0

    .line 1454
    .local v25, "tempView":Landroid/view/View;
    const/4 v11, 0x0

    .line 1455
    .local v11, "index":I
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "com.android.settings.SETTING_HEADER_ID"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1457
    .local v23, "tabName":Ljava/lang/String;
    if-eqz v23, :cond_33

    .line 1458
    const-string v27, "display_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1466
    :cond_20
    :goto_8
    if-eqz v25, :cond_33

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    .line 1468
    .local v16, "mBar":Landroid/app/ActionBar;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActionBar;->getTabCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_32

    .line 1469
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v17

    .line 1470
    .local v17, "mTab":Landroid/app/ActionBar$Tab;
    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    if-eqz v27, :cond_21

    .line 1471
    move v11, v10

    .line 1468
    :cond_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1079
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v14    # "isSubSettings":Z
    .end local v16    # "mBar":Landroid/app/ActionBar;
    .end local v17    # "mTab":Landroid/app/ActionBar$Tab;
    .end local v19    # "mUm":Landroid/os/UserManager;
    .end local v20    # "mUserHandle":Landroid/os/UserHandle;
    .end local v23    # "tabName":Ljava/lang/String;
    .end local v25    # "tempView":Landroid/view/View;
    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1131
    .restart local v19    # "mUm":Landroid/os/UserManager;
    .restart local v20    # "mUserHandle":Landroid/os/UserHandle;
    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 1136
    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1220
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "isSubSettings":Z
    :cond_25
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 1242
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v7    # "bar":Landroid/app/ActionBar;
    :cond_26
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1246
    :cond_27
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 1247
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1250
    :cond_28
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1267
    .restart local v9    # "display":Landroid/view/Display;
    .restart local v18    # "mTextSize":I
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1273
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1279
    :cond_2b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1293
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1331
    :cond_2d
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2e

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a103d

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1334
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1bff

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1340
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1c00

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1346
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1c01

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1352
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 1357
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a103d

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1359
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a103e

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1365
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a06c2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1371
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a042f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1377
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 1390
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_7

    .line 1460
    .end local v7    # "bar":Landroid/app/ActionBar;
    .end local v9    # "display":Landroid/view/Display;
    .end local v18    # "mTextSize":I
    .restart local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "index":I
    .restart local v23    # "tabName":Ljava/lang/String;
    .restart local v25    # "tempView":Landroid/view/View;
    :cond_30
    :try_start_1
    const-string v27, "input_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_8

    .line 1462
    :cond_31
    const-string v27, "general_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_8

    .line 1474
    .restart local v10    # "i":I
    .restart local v16    # "mBar":Landroid/app/ActionBar;
    :cond_32
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1484
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v16    # "mBar":Landroid/app/ActionBar;
    .end local v23    # "tabName":Ljava/lang/String;
    .end local v25    # "tempView":Landroid/view/View;
    :cond_33
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v27

    const-string v28, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_IMAGE_STARTING_WINDOW"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_36

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, ":android:show_fragment"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1486
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v27

    if-nez v27, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-nez v27, :cond_37

    :cond_34
    const/16 v22, 0x1

    .line 1488
    .local v22, "singlePane":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    move/from16 v27, v0

    if-nez v27, :cond_36

    if-nez p1, :cond_36

    if-eqz v12, :cond_35

    if-nez v22, :cond_36

    .line 1489
    :cond_35
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 1494
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v22    # "singlePane":Z
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1495
    return-void

    .line 1486
    .restart local v12    # "initialFragment":Ljava/lang/String;
    :cond_37
    const/16 v22, 0x0

    goto :goto_b

    .line 1478
    .end local v12    # "initialFragment":Ljava/lang/String;
    :catch_0
    move-exception v27

    goto :goto_a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f02063f

    const/16 v7, 0xcb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5885
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5887
    iget-boolean v3, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v3, :cond_4

    .line 5888
    const v3, 0x7f0a1041

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5889
    .local v1, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5890
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5891
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/Settings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 5900
    .end local v1    # "mMenuItem":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    const-string v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5901
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 5902
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.providers.settingsearch"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5906
    const/16 v3, 0xcc

    const v4, 0x7f0a06c7

    invoke-interface {p1, v5, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 5907
    .local v2, "mMenuSearch":Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5908
    const v3, 0x7f020013

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5911
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v2    # "mMenuSearch":Landroid/view/MenuItem;
    :cond_3
    return v6

    .line 5893
    :cond_4
    const v3, 0x7f0a1042

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5894
    .restart local v1    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5895
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5896
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/Settings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 9
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f02063f

    const v7, 0x10008000

    const/16 v6, 0xcb

    const/4 v5, 0x0

    .line 5845
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 5846
    .local v2, "return_val":Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5847
    iget-boolean v3, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v3, :cond_1

    .line 5848
    const v3, 0x7f0a1041

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5849
    .local v1, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5850
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5852
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5853
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5854
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 5877
    :goto_0
    const/4 v2, 0x1

    .line 5879
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "mMenuItem":Landroid/view/MenuItem;
    .end local v2    # "return_val":Z
    :cond_0
    return v2

    .line 5868
    .restart local v2    # "return_val":Z
    :cond_1
    const v3, 0x7f0a1042

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5869
    .restart local v1    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5870
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5872
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5873
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5874
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2021
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2022
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 2023
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 2026
    iget-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    if-eqz v0, :cond_1

    .line 2027
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 2030
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 2444
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2445
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2446
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2447
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2448
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2449
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2450
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2454
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 12
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5245
    const/4 v5, 0x0

    .line 5246
    .local v5, "revert":Z
    iget-object v8, p0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v8, :cond_3

    .line 5247
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5249
    .local v0, "airPlaneMode":I
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    .line 5250
    if-ne v0, v6, :cond_1

    .line 5251
    iget-object v6, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1a1b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a01dd

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/android/settings/Settings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/Settings$7;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5259
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5260
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 5337
    .end local v0    # "airPlaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 5263
    .restart local v0    # "airPlaneMode":I
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5264
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5265
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.InternationalRoamingTab"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5271
    :goto_1
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5272
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5273
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5268
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.InternationalRoaming_SingleDual"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 5275
    .end local v0    # "airPlaneMode":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100683

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    if-eqz v8, :cond_4

    .line 5278
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5280
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 5282
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 5286
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006b8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006b9

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10068e

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    if-eqz v8, :cond_6

    .line 5289
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.NetworkManagement"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5291
    .restart local v3    # "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 5292
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 5298
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006ec

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 5299
    const/4 v5, 0x1

    .line 5302
    :cond_7
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006a2

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 5303
    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_a

    move v1, v6

    .line 5305
    .local v1, "bAccessControlDisabled":Z
    :goto_2
    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_b

    move v2, v6

    .line 5308
    .local v2, "bBasicMode":Z
    :goto_3
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5312
    .end local v1    # "bAccessControlDisabled":Z
    .end local v2    # "bBasicMode":Z
    :cond_8
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100657

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 5313
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "toddler_mode_switch"

    const/4 v10, -0x2

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 5329
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 5331
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_e

    .line 5332
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/Settings;->highlightHeaderWithoutScroll(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v7

    .line 5303
    goto :goto_2

    .restart local v1    # "bAccessControlDisabled":Z
    :cond_b
    move v2, v7

    .line 5305
    goto :goto_3

    .line 5315
    .end local v1    # "bAccessControlDisabled":Z
    :cond_c
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f5

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5322
    :cond_d
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f3

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 5334
    :cond_e
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 2034
    iget-boolean v0, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    if-eqz v0, :cond_0

    .line 2035
    const/4 v0, 0x0

    .line 2037
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2231
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 2232
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2233
    :cond_0
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 2234
    :cond_1
    const/4 v0, 0x1

    .line 2236
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5438
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 5441
    .local v0, "retval":Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 5445
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    .line 5446
    const/4 v0, 0x1

    .line 5449
    :cond_0
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1507
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10065c

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1006dd

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10065d

    if-ne v1, v2, :cond_1

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1514
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0, p2}, Lcom/android/settings/Settings$HeaderAdapter;->access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V

    .line 1518
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2354
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2357
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2358
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 2361
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2365
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2367
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2368
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 2371
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 5916
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5918
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5929
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    .line 5930
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 5933
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 5920
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v1, :cond_4

    .line 5921
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5924
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0

    .line 5923
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 5918
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1936
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1938
    iget-object v5, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_0

    .line 1940
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_1

    .line 1948
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1954
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1955
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1956
    iget-object v5, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1957
    .local v4, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v4, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v5, :cond_2

    .line 1958
    check-cast v4, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v4    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1955
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1941
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1942
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1949
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1950
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1962
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings_listui"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 1963
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1964
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ActivityName"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v5, "register"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1966
    iget-object v5, p0, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1969
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_5

    .line 1971
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1977
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1978
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v3, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v5, :cond_6

    .line 1979
    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1982
    :cond_6
    iget-object v5, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1984
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1993
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1995
    :try_start_3
    iget-object v5, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2003
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2004
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2006
    :try_start_4
    iget-object v5, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2013
    :cond_8
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2014
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2017
    :cond_9
    return-void

    .line 1972
    :catch_2
    move-exception v1

    .line 1973
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 1996
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1997
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 2007
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 2008
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 5342
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 5343
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5344
    const v3, 0x7f0a06d7

    .line 5354
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5355
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5356
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_search"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5357
    sget v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 5358
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_8

    .line 5359
    sget-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceStartFragment , mSearchDepthCounter : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 5361
    .local v2, "args":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 5362
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "args":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5365
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v0, "extra_from_search"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5367
    sget v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 5368
    iget-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5369
    iget-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5376
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5377
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 5379
    const/4 v0, 0x1

    .line 5386
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_2
    return v0

    .line 5345
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5347
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5348
    const v3, 0x7f0a021f

    goto/16 :goto_0

    .line 5350
    :cond_6
    const v3, 0x7f0a021d

    goto/16 :goto_0

    .line 5372
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5373
    iget-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 5384
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 5386
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 1816
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1817
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1818
    :cond_0
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1819
    sput-wide v2, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 1822
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1826
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1827
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "VerificationLog"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v4

    .line 1830
    .local v4, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    .line 1835
    :cond_1
    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1836
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1837
    iget-object v7, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1838
    .local v6, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v7, v6, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v7, :cond_2

    .line 1839
    check-cast v6, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v6    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v6}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1836
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    .end local v2    # "i":I
    :cond_3
    new-instance v7, Lcom/android/settings/Settings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$5;-><init>(Lcom/android/settings/Settings;)V

    iput-object v7, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1858
    iget-object v7, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1861
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 1862
    .local v5, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v7, v5, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v7, :cond_4

    .line 1863
    check-cast v5, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v5    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v5}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1867
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    if-eqz v7, :cond_b

    .line 1868
    iput-boolean v11, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 1873
    :goto_1
    iget-object v7, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1874
    iget-object v7, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH_TO_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1876
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "settings_listui"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 1877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1878
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "ActivityName"

    const-string v8, "com.android.settings.Settings"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v7, "IconName"

    const-string v8, "Search;"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string v7, "register"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1881
    iget-object v7, p0, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1885
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1886
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "com.android.settings.Search"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1887
    iget-object v7, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1890
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1891
    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_2
    invoke-static {p0, v7}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1892
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 1903
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1904
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1905
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1906
    iget-object v7, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1909
    :cond_7
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "VerificationLog"

    const-string v8, "Executed"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1915
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "toddler_mode_switch"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    const/4 v10, -0x2

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1919
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1920
    .local v3, "intentfilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1921
    iget-object v7, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1925
    .end local v3    # "intentfilter":Landroid/content/IntentFilter;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1926
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v11, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1932
    :cond_a
    return-void

    .line 1870
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    goto/16 :goto_1

    .line 1891
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_c
    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1794
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1797
    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1798
    const-string v1, "com.android.settings.CURRENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1800
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 1801
    const-string v1, "com.android.settings.PARENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1804
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1806
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1807
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 1808
    .local v0, "savedIndex":I
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Tab index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2
    const-string v1, "com.android.settings.ACTION_BAR_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1812
    .end local v0    # "savedIndex":I
    :cond_3
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 5467
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 5469
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/Settings;)V

    .line 5471
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 5396
    if-nez p1, :cond_0

    .line 5397
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 5403
    :goto_0
    return-void

    .line 5399
    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5401
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 5391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    const/16 v5, 0x160f

    const/4 v4, 0x1

    .line 1677
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_4

    .line 1678
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_0
    if-nez p2, :cond_1

    .line 1690
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1692
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_1
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1694
    sget v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v1, v4, :cond_3

    .line 1695
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1696
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1704
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1705
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1706
    const-string v1, "extra_depth_counter_key"

    sget v2, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1708
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1711
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1737
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1699
    :cond_3
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1700
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1712
    :cond_4
    sget-boolean v1, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v1, :cond_6

    .line 1713
    if-nez p2, :cond_5

    .line 1714
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1715
    .restart local p2    # "args":Landroid/os/Bundle;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/Settings;->mIsFromSearch:Z

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1717
    :cond_5
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1718
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/Settings;->mIsFromSearch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1719
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1720
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    const-class v1, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1721
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1722
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1733
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2247
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 2248
    iput-object v3, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2249
    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2252
    :cond_0
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2255
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment"

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2258
    :cond_1
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2259
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_4

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 2260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2262
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2264
    sget v2, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_6

    .line 2265
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 2266
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2274
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2275
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    const-string v2, "extra_depth_counter_key"

    sget v3, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2280
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2281
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2282
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2285
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2288
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2289
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2290
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 2294
    :cond_5
    return-void

    .line 2269
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 2270
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
