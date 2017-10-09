.class Lcom/android/settings/SettingsActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private isKioskContainer:Z

.field private final isTablet:Z

.field private final mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

.field private final mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

.field private final mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

.field private final mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

.field private final mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

.field private final mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field public mSettingViewClicklistener:Landroid/view/View$OnClickListener;

.field private final mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private final mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

.field private final mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

.field private final mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5178
    invoke-direct {p0, p1, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5042
    iput v4, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mTetheredData:I

    .line 5059
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v5}, Lcom/android/settings/SettingsActivity$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    .line 5066
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v5}, Lcom/android/settings/SettingsActivity$HeaderAdapter$2;-><init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    .line 5073
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v5}, Lcom/android/settings/SettingsActivity$HeaderAdapter$3;-><init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 6168
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter$4;-><init>(Lcom/android/settings/SettingsActivity$HeaderAdapter;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    .line 5179
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 5180
    iput-object p3, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 5181
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5182
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->isKioskContainer:Z

    .line 5186
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 5214
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 5219
    new-instance v1, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 5224
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5225
    new-instance v1, Lcom/android/settings/ToddlerModeSwitchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/ToddlerModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    .line 5231
    :goto_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 5232
    iput-object p4, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 5240
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    .line 5242
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5243
    new-instance v1, Lcom/android/settings/DrivingModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 5248
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5249
    :cond_0
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 5254
    :goto_2
    new-instance v1, Lcom/android/settings/MobileDataEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    .line 5256
    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 5263
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    .line 5268
    new-instance v1, Lcom/android/settings/location/LocationModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/location/LocationModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    .line 5269
    new-instance v1, Lcom/android/settings/motion/MotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 5271
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5272
    new-instance v1, Lcom/android/settings/motion2014/MotionEnabler2014;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion2014/MotionEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    .line 5277
    :goto_3
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5278
    new-instance v1, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 5283
    :goto_4
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5284
    new-instance v1, Lcom/android/settings/AirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 5290
    :goto_5
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5291
    new-instance v1, Lcom/android/settings/motion2013/AirMotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion2013/AirMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    .line 5296
    :goto_6
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5297
    new-instance v1, Lcom/android/settings/motion2013/PalmMotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion2013/PalmMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    .line 5301
    :goto_7
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 5303
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5304
    new-instance v1, Lcom/android/settings/AirCommandEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirCommandEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    .line 5308
    :goto_8
    new-instance v1, Lcom/android/settings/MultiWindowEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    .line 5311
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    .line 5320
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 5322
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v1

    if-nez v1, :cond_c

    .line 5323
    :cond_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 5330
    :goto_9
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v1, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 5335
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    .line 5338
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_e

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :goto_a
    invoke-static {v1}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    move-object v1, p1

    .line 5339
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1, v2, v5}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 5342
    :cond_2
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5343
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x7f040191

    iput v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 5344
    const/16 v1, 0x144

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 5345
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_f

    move v1, v3

    :goto_b
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->isTablet:Z

    .line 5349
    return-void

    .line 5227
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    goto/16 :goto_0

    .line 5245
    :cond_4
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    goto/16 :goto_1

    .line 5251
    :cond_5
    new-instance v1, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    goto/16 :goto_2

    .line 5274
    :cond_6
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    goto/16 :goto_3

    .line 5280
    :cond_7
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    goto/16 :goto_4

    .line 5286
    :cond_8
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    goto/16 :goto_5

    .line 5293
    :cond_9
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    goto/16 :goto_6

    .line 5299
    :cond_a
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    goto/16 :goto_7

    .line 5306
    :cond_b
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    goto/16 :goto_8

    .line 5324
    :cond_c
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5325
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5, v2}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_9

    .line 5327
    :cond_d
    iput-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_9

    :cond_e
    move-object v1, v2

    .line 5338
    goto :goto_a

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_f
    move v1, v4

    .line 5347
    goto :goto_b
.end method

.method static synthetic access$2100(Lcom/android/settings/SettingsActivity$HeaderAdapter;)Lcom/android/settings/personalpage/PersonalPageEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .prologue
    .line 4977
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/SettingsActivity$HeaderAdapter;)Lcom/android/settings/smartbonding/SmartBondingEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .prologue
    .line 4977
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity$HeaderAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 4977
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const-wide/32 v4, 0x7f10065b

    .line 5094
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006dd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065d

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5097
    :cond_0
    const/4 v0, 0x5

    .line 5138
    :goto_0
    return v0

    .line 5099
    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 5100
    const/4 v0, 0x0

    goto :goto_0

    .line 5101
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100657

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100659

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100656

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006b6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10068c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10069d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10068d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100693

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 5134
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 5101
    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10069c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006ed

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10065e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100660

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100699

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006e4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100658

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006da

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006db

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006dc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006cd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100669

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10066a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10069e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10066b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f100661

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 5135
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f10063d

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 5136
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 5138
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5082
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5083
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5084
    return-void
.end method

.method private setCheckBoxTypeValue(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f1004db

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 6234
    :cond_0
    :goto_0
    return-void

    .line 6182
    :sswitch_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 6183
    .local v0, "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 6184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 6183
    goto :goto_1

    :cond_2
    move v2, v3

    .line 6184
    goto :goto_2

    .line 6219
    .end local v0    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :sswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 6220
    .restart local v0    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 6221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_4

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6225
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6226
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto :goto_0

    :cond_3
    move v1, v3

    .line 6220
    goto :goto_3

    :cond_4
    move v2, v3

    .line 6221
    goto :goto_4

    .line 6229
    .end local v0    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :sswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 6230
    .restart local v0    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_5

    .line 6180
    :sswitch_data_0
    .sparse-switch
        0x7f10065c -> :sswitch_0
        0x7f10065d -> :sswitch_2
        0x7f1006dd -> :sswitch_1
    .end sparse-switch
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "_switch"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6161
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2900()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 6162
    .local v0, "value":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 6163
    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->access$2502(Z)Z

    .line 6164
    return-void

    .end local v0    # "value":Z
    :cond_0
    move v0, v1

    .line 6161
    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5987
    iget-object v1, p1, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5988
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5990
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5991
    iget-object v1, p1, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5992
    iget-object v1, p1, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5993
    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5088
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5089
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V
    .locals 10
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 5881
    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5883
    iget-object v5, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5885
    .local v0, "accType":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5886
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 5894
    .end local v0    # "accType":Ljava/lang/String;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5896
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100690

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 5898
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5901
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a158f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5905
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5906
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 5907
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5932
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5935
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100657

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100659

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5937
    :cond_2
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5951
    :cond_3
    :goto_1
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f10065a

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 5952
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 5955
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2800()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5956
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a082f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5957
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0831

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5984
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_4
    :goto_2
    return-void

    .line 5889
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_5
    :try_start_0
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5890
    :catch_0
    move-exception v2

    .line 5891
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 5941
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "summary":Ljava/lang/CharSequence;
    :cond_6
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f100659

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 5942
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v6, p1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5948
    :cond_7
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5963
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_8
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5964
    iget-object v5, p2, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 5154
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5145
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5146
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 5147
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 5149
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 5354
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    .line 5355
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v5}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    .line 5356
    .local v6, "headerType":I
    const/4 v10, 0x0

    .line 5358
    .local v10, "view":Landroid/view/View;
    if-nez p2, :cond_3

    .line 5359
    new-instance v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsActivity$1;)V

    .line 5360
    .local v7, "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    packed-switch v6, :pswitch_data_0

    .line 5501
    :goto_0
    invoke-virtual {v10, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5508
    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 5866
    :cond_0
    :goto_2
    :pswitch_0
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100658

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 5877
    :cond_1
    return-object v10

    .line 5373
    :pswitch_1
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x1010208

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v10    # "view":Landroid/view/View;
    move-object v11, v10

    .line 5374
    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 5379
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040228

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5382
    const v11, 0x7f1004dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5383
    const v11, 0x7f1004dd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5384
    const v11, 0x7f1004de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5385
    const v11, 0x7f1004df

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    goto :goto_0

    .line 5389
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040227

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5392
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5393
    const v11, 0x7f100086

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5394
    const v11, 0x7f1000b8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5395
    const v11, 0x7f1003a5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    goto/16 :goto_0

    .line 5464
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040194

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5465
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5466
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5468
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5470
    const v11, 0x7f100065

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 5476
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f04018f

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5478
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5479
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5481
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5483
    const v11, 0x7f1003a4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 5484
    const v11, 0x7f100199

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 5488
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v11, :cond_2

    .line 5489
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5490
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5495
    :goto_3
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5497
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 5492
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x10900a8

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5493
    const v11, 0x1020006

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_3

    .line 5503
    .end local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    :cond_3
    move-object/from16 v10, p2

    .line 5504
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 5520
    :pswitch_7
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x1010208

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5521
    .restart local v10    # "view":Landroid/view/View;
    if-nez v7, :cond_4

    .line 5522
    new-instance v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .end local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsActivity$1;)V

    .restart local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    :cond_4
    move-object v11, v10

    .line 5523
    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5524
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 5529
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040228

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5532
    const v11, 0x7f1004dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5533
    const v11, 0x7f1004dd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5534
    const v11, 0x7f1004de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5535
    const v11, 0x7f1004df

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    .line 5537
    invoke-virtual {v10, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5539
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v12, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5540
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 5543
    .local v8, "iconSummary":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 5544
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5546
    :cond_5
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 5568
    .end local v8    # "iconSummary":Ljava/lang/CharSequence;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040227

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5570
    const v11, 0x7f1004d8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5571
    const v11, 0x7f1004d9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5572
    const v11, 0x7f1004da

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5573
    const v11, 0x7f1004db

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 5575
    invoke-virtual {v10, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5577
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v12, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5578
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5579
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 5581
    .local v9, "summaryCheck":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 5582
    .local v4, "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 5583
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5584
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5589
    :goto_4
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10065c

    cmp-long v11, v12, v14

    if-nez v11, :cond_9

    .line 5590
    const v11, 0x7f10065c

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5613
    :cond_6
    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5614
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5616
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5617
    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2400()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 5618
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2500()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    int-to-long v12, v11

    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2600()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 5619
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    .line 5620
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/SettingsActivity;->access$2502(Z)Z

    goto/16 :goto_2

    .line 5586
    :cond_8
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 5594
    :cond_9
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006dd

    cmp-long v11, v12, v14

    if-nez v11, :cond_b

    .line 5595
    const v11, 0x7f1006dd

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5596
    const v11, 0x7f1004db

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 5597
    .restart local v4    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_adjust_touch"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v4, v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .line 5600
    :cond_b
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10065d

    cmp-long v11, v12, v14

    if-nez v11, :cond_6

    .line 5601
    const v11, 0x7f10065d

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5605
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 5606
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5607
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5608
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5609
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_5

    .line 5650
    .end local v4    # "check":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v9    # "summaryCheck":Ljava/lang/CharSequence;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040194

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5651
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5652
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5653
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5654
    const v11, 0x7f100065

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 5655
    invoke-virtual {v10, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5659
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100657

    cmp-long v11, v12, v14

    if-nez v11, :cond_10

    .line 5660
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5661
    const v11, 0x7f100657

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5662
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "toddler_mode_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 5663
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5664
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5665
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 5797
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 5798
    :cond_d
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2400()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 5799
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2500()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2600()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_e

    .line 5800
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    .line 5806
    :cond_e
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 5810
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setClickable(Z)V

    .line 5813
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 5677
    :cond_10
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006e4

    cmp-long v11, v12, v14

    if-nez v11, :cond_11

    .line 5678
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v11, :cond_c

    .line 5679
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_7

    .line 5680
    :cond_11
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100658

    cmp-long v11, v12, v14

    if-nez v11, :cond_12

    .line 5686
    :cond_12
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100661

    cmp-long v11, v12, v14

    if-nez v11, :cond_13

    .line 5687
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v11, :cond_c

    .line 5688
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/MobileDataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5691
    :cond_13
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10065b

    cmp-long v11, v12, v14

    if-nez v11, :cond_14

    .line 5692
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5694
    :cond_14
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006b6

    cmp-long v11, v12, v14

    if-nez v11, :cond_15

    .line 5695
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5696
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 5697
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5698
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5699
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_7

    .line 5701
    :cond_15
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10068d

    cmp-long v11, v12, v14

    if-nez v11, :cond_16

    .line 5702
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v11, :cond_c

    .line 5703
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5704
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/DrivingModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 5705
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 5706
    const-string v11, ""

    iput-object v11, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 5707
    const/4 v11, 0x0

    iput v11, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_7

    .line 5710
    :cond_16
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10069e

    cmp-long v11, v12, v14

    if-nez v11, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v11

    if-nez v11, :cond_17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 5711
    const v11, 0x7f10069e

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5712
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v11, :cond_c

    .line 5713
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5714
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/VoiceInputControlEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5716
    :cond_17
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100693

    cmp-long v11, v12, v14

    if-nez v11, :cond_19

    .line 5717
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5718
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2000()Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "Settings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPowerSavingEnabler.setSwitch(holder.switch_)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5720
    :cond_19
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10065e

    cmp-long v11, v12, v14

    if-nez v11, :cond_1a

    .line 5721
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5722
    :cond_1a
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100660

    cmp-long v11, v12, v14

    if-nez v11, :cond_1b

    .line 5723
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/location/LocationModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5724
    :cond_1b
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100699

    cmp-long v11, v12, v14

    if-nez v11, :cond_1c

    .line 5725
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5726
    :cond_1c
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10069c

    cmp-long v11, v12, v14

    if-nez v11, :cond_1d

    .line 5727
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v11, :cond_c

    .line 5728
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5729
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/FingerAirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5731
    :cond_1d
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10069d

    cmp-long v11, v12, v14

    if-nez v11, :cond_1e

    .line 5732
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v11, :cond_c

    .line 5733
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5734
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/AirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5737
    :cond_1e
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006da

    cmp-long v11, v12, v14

    if-nez v11, :cond_1f

    .line 5738
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v11, :cond_c

    .line 5739
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/motion2013/AirMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5740
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5742
    :cond_1f
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006db

    cmp-long v11, v12, v14

    if-nez v11, :cond_20

    .line 5743
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5744
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/motion/MotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5745
    :cond_20
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006dc

    cmp-long v11, v12, v14

    if-nez v11, :cond_21

    .line 5746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    if-eqz v11, :cond_c

    .line 5747
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5748
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5750
    :cond_21
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006cd

    cmp-long v11, v12, v14

    if-nez v11, :cond_22

    .line 5751
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v11, :cond_c

    .line 5752
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/AirCommandEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5753
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/AirCommandEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5755
    :cond_22
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006a2

    cmp-long v11, v12, v14

    if-nez v11, :cond_26

    .line 5756
    const v11, 0x7f1006a2

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    .line 5758
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "access_control_enabled"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_24

    const/4 v2, 0x1

    .line 5760
    .local v2, "bAccessControlDisabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_switch"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_25

    const/4 v3, 0x1

    .line 5763
    .local v3, "bBasicMode":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/MultiWindowEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5764
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/MultiWindowEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    .line 5766
    if-eqz v2, :cond_23

    if-nez v3, :cond_c

    .line 5767
    :cond_23
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 5768
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5769
    iget-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_7

    .line 5758
    .end local v2    # "bAccessControlDisabled":Z
    .end local v3    # "bBasicMode":Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_8

    .line 5760
    .restart local v2    # "bAccessControlDisabled":Z
    :cond_25
    const/4 v3, 0x0

    goto :goto_9

    .line 5772
    .end local v2    # "bAccessControlDisabled":Z
    :cond_26
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006ed

    cmp-long v11, v12, v14

    if-nez v11, :cond_27

    .line 5773
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/MouseHoveringViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5774
    :cond_27
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006e7

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    .line 5777
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100669

    cmp-long v11, v12, v14

    if-nez v11, :cond_28

    .line 5778
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5779
    :cond_28
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10066a

    cmp-long v11, v12, v14

    if-nez v11, :cond_29

    .line 5780
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5781
    :cond_29
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f100659

    cmp-long v11, v12, v14

    if-nez v11, :cond_2b

    .line 5784
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2700()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 5785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v13, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11, v12, v5, v13}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 5787
    :cond_2a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5790
    :cond_2b
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f10066b

    cmp-long v11, v12, v14

    if-nez v11, :cond_2c

    .line 5791
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 5792
    :cond_2c
    iget-wide v12, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v14, 0x7f1006a4

    cmp-long v11, v12, v14

    if-nez v11, :cond_c

    .line 5793
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    iget-object v12, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v11, v12}, Lcom/android/settings/toolbox/ToolboxEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 5794
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    move/from16 v0, p1

    invoke-virtual {v11, v5, v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 5844
    :pswitch_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 5848
    :pswitch_c
    if-nez v7, :cond_2d

    .line 5849
    new-instance v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;

    .end local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsActivity$1;)V

    .line 5850
    .restart local v7    # "holder":Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v11, :cond_2e

    .line 5851
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5852
    const v11, 0x7f100085

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 5857
    :goto_a
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 5859
    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 5861
    invoke-virtual {v10, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5862
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 5854
    :cond_2e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x10900a8

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 5855
    const v11, 0x1020006

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v7, Lcom/android/settings/SettingsActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_a

    .line 5360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5508
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 5164
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5165
    :cond_0
    const/4 v0, 0x7

    .line 5167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 5173
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5159
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 6075
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 6085
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 6091
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 6094
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->pause()V

    .line 6096
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 6097
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 6098
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    .line 6099
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 6100
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 6101
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    .line 6102
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->unregisterForWfcAndAirPlaneStatus()V

    .line 6104
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->pause()V

    .line 6105
    :cond_8
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6106
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 6108
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->pause()V

    .line 6109
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 6110
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    .line 6112
    :cond_c
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6113
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->pause()V

    .line 6114
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->pause()V

    .line 6116
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 6117
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->pause()V

    .line 6118
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    .line 6120
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->pause()V

    .line 6121
    :cond_11
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 6122
    :cond_12
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 6126
    :cond_13
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 6127
    :cond_14
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_15

    .line 6128
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6130
    :cond_15
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_16

    .line 6131
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->pause()V

    .line 6133
    :cond_16
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_17

    .line 6134
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->pause()V

    .line 6136
    :cond_17
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 6013
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 6019
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 6022
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->resume()V

    .line 6026
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    .line 6027
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 6028
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 6029
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 6030
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    .line 6031
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->registerForWfcAndAirPlaneStatus()V

    .line 6033
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->resume()V

    .line 6034
    :cond_8
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6035
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 6037
    :cond_9
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->resume()V

    .line 6038
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 6039
    :cond_b
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    .line 6041
    :cond_c
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6042
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->resume()V

    .line 6043
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->resume()V

    .line 6045
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 6046
    :cond_f
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->resume()V

    .line 6047
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    .line 6049
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->resume()V

    .line 6050
    :cond_11
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 6051
    :cond_12
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 6056
    :cond_13
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 6057
    :cond_14
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_15

    .line 6058
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6061
    :cond_15
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_16

    .line 6062
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->resume()V

    .line 6064
    :cond_16
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_17

    .line 6065
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->resume()V

    .line 6067
    :cond_17
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 6139
    if-eqz p1, :cond_0

    .line 6140
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 6145
    :goto_0
    return-void

    .line 6142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 6143
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
