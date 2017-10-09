.class public Lcom/android/settings/myplace/MyPlaceProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MyPlaceProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    }
.end annotation


# static fields
.field private static PREFIX_COUNT:I


# instance fields
.field private final KEYBOARD_DISPLAY:I

.field private final KEYBOARD_HIDE:I

.field alert:Landroid/app/AlertDialog;

.field private categoriesSelectMethod:Landroid/preference/PreferenceCategory;

.field private helpRequest:I

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isKnoxUser:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAddMode:Z

.field private mAutoConnect:Landroid/preference/CheckBoxPreference;

.field private mDefaultName:Ljava/lang/String;

.field private mEditMode:Z

.field private mEditName:Landroid/widget/EditText;

.field private mFlag:Z

.field private mGuideText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mId:I

.field private mIsFromHelp:Z

.field mIsMobileConnected:Z

.field private mLbsMode:Z

.field mLocationBitmap:Landroid/graphics/Bitmap;

.field private mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

.field private mMethodPreference:Landroid/preference/PreferenceScreen;

.field private mMobileDataChargeDialog:Landroid/app/AlertDialog;

.field private mOlderPosition:I

.field private mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

.field private mSaveButton:Landroid/widget/Button;

.field private mSelectMethod:Landroid/preference/PreferenceScreen;

.field private mTextName:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;

.field private setFlag1:Z

.field private setFlag2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->PREFIX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 92
    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->KEYBOARD_DISPLAY:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->KEYBOARD_HIDE:I

    .line 105
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 117
    new-instance v0, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/myplace/MyPlaceProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    .line 120
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 121
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 152
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 153
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 154
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 155
    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 156
    iput v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 281
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/myplace/MyPlaceProfileSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mOlderPosition:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/settings/myplace/MyPlaceProfileSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mFlag:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showMobileDateChargeEnableDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->requestGPSLocation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/settings/myplace/MyPlaceProfileSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/MyPlaceProfileSettings;)Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/myplace/MyPlaceProfileSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceProfileSettings;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->PREFIX_COUNT:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 488
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 492
    :cond_0
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 494
    const-string v1, "key_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    .line 496
    const-string v1, "key_map"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    .line 497
    const-string v1, "key_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    .line 499
    const-string v1, "key_auto_connect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    .line 501
    const-string v1, "categories_select_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    .line 502
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->categoriesSelectMethod:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    if-nez v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 521
    :cond_2
    :goto_0
    return-object v0

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 509
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 510
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 511
    :cond_4
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 512
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 514
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 515
    :cond_5
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 516
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initPlaceInfo()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 530
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v0, :cond_3

    .line 533
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 534
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "tmpProfileName":Ljava/lang/String;
    const-string v0, "Home"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    const v0, 0x7f0a19de

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 614
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 617
    return-void

    .line 536
    .end local v7    # "tmpProfileName":Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v0, :cond_4

    .line 537
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 538
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a19da

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :cond_5
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 543
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_location : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gps_location"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi_ap_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi_ap_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_device_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bt_device_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 572
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "timestamp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 580
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 582
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "gps_map"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 584
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 590
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 592
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 605
    .restart local v7    # "tmpProfileName":Ljava/lang/String;
    :cond_7
    const-string v0, "Car"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 606
    const v0, 0x7f0a19e0

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 607
    :cond_8
    const-string v0, "Office"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 608
    const v0, 0x7f0a19df

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 609
    :cond_9
    const-string v0, "Gym"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    const v0, 0x7f0a19e1

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 611
    :cond_a
    const-string v0, "School"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    const v0, 0x7f0a19e2

    invoke-virtual {p0, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private isPlaceInfoChanged()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.myplace.MyPlaceProvider/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    .local v6, "c":Landroid/database/Cursor;
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v7, 0x0

    .line 659
    .local v7, "isChanged":Z
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 660
    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 661
    const-string v0, "MyPlaceSettings"

    const-string v1, "_id is not match"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v7, 0x0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 665
    const-string v0, "MyPlaceSettings"

    const-string v1, "type is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v7, 0x1

    .line 720
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 722
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaceInfoChanged() returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return v7

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$2100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 670
    const-string v0, "MyPlaceSettings"

    const-string v1, "mProfileName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v7, 0x1

    goto :goto_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps_location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 675
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLocation is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v7, 0x1

    goto :goto_0

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 679
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLatitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "gps_longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 683
    const-string v0, "MyPlaceSettings"

    const-string v1, "mGpsLongitude is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 685
    :cond_6
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v0

    const-string v1, "gps_map"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->compareByteArray([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 686
    const-string v0, "MyPlaceSettings"

    const-string v1, "mByteMap is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_ap_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 691
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 693
    :cond_8
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_bssid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 696
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiApBSSID is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 698
    :cond_9
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 700
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiFrequency is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 702
    :cond_a
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v0

    const-string v1, "wifi_auto_connect"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 704
    const-string v0, "MyPlaceSettings"

    const-string v1, "mWifiAutoConnect is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 706
    :cond_b
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_device_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 709
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtDeviceName is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 711
    :cond_c
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_mac_address"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    const-string v0, "MyPlaceSettings"

    const-string v1, "mBtMacAddress is changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 718
    :cond_d
    const-string v0, "MyPlaceSettings"

    const-string v1, "moveToFirst() is failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private requestGPSLocation()V
    .locals 3

    .prologue
    .line 1149
    const-string v1, "MyPlaceSettings"

    const-string v2, "map is clicked. start mapview"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.myplace.SELECT_MAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    :cond_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    :cond_1
    const-string v1, "map_latitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    const-string v1, "map_longtitude"

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1156
    return-void
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1416
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1418
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1420
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1422
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_2

    .line 1425
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1426
    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1429
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_3

    .line 1430
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cc

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1432
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1433
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1434
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1436
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1437
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1438
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1440
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1443
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v5, :cond_0

    .line 1444
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1445
    iput-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1447
    :cond_0
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v5, :cond_1

    .line 1448
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 1449
    iput-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1452
    :cond_1
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v5, :cond_3

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400cd

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1455
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1457
    .local v0, "bt":Landroid/widget/ImageView;
    const v5, 0x7f1001dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1459
    .local v3, "text":Landroid/widget/TextView;
    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1464
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 1465
    new-instance v5, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$14;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1481
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1483
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1484
    .local v2, "mcontext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1486
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v5, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v5, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1487
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1488
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v6, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1490
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1491
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1492
    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1494
    .end local v0    # "bt":Landroid/widget/ImageView;
    .end local v1    # "mActivity":Landroid/app/Activity;
    .end local v2    # "mcontext":Landroid/content/Context;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private showHelpStep3Dialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1497
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v4, :cond_0

    .line 1498
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1499
    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1501
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_2

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400ce

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1504
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1510
    .local v0, "bt":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 1511
    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$15;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1523
    .local v2, "mcontext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1525
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v4, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1526
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 1527
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1529
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 1530
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1531
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 1533
    .end local v0    # "bt":Landroid/widget/ImageView;
    .end local v1    # "mActivity":Landroid/app/Activity;
    .end local v2    # "mcontext":Landroid/content/Context;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private showHelpStep4Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1536
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 1537
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 1538
    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 1540
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 1541
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400cf

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1543
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1545
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$16;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1554
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1555
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 1556
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 1558
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 1559
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1560
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 1562
    .end local v0    # "closeBtn":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showMobileDateChargeEnableDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isMobileDataConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    .line 1161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1163
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1164
    iput-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 1167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1168
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04008a

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1169
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1171
    .local v3, "message":Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsMobileConnected:Z

    if-eqz v4, :cond_1

    .line 1172
    const v4, 0x7f0a16da

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    const v4, 0x7f0a16dc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1179
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1180
    const v4, 0x7f0a091f

    new-instance v5, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$10;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1199
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$11;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    .line 1205
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1207
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMobileDataChargeDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$12;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1223
    return-void

    .line 1176
    :cond_1
    const v4, 0x7f0a16db

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1177
    const v4, 0x7f0a16d9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateProfile()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 621
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 622
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a19ec

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 623
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 636
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 637
    const-string v2, "MyPlaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlaceInfo.mByteMap is not null, mPlaceInfo.mByteMap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 642
    .local v1, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    .local v0, "LocationBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 645
    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 646
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMapPreference:Lcom/android/settings/myplace/MyPlaceGpsPreference;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/MyPlaceGpsPreference;->setGpsImage(Landroid/graphics/Bitmap;)V

    .line 649
    .end local v0    # "LocationBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "is":Ljava/io/ByteArrayInputStream;
    :cond_1
    return-void

    .line 624
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 625
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a188a

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 626
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 628
    :cond_4
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 629
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0a188e

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 630
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    iget-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v5}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1356
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1357
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1359
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 1360
    const-string v5, "MyPlaceSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    :goto_0
    return v4

    .line 1364
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1365
    .local v2, "isWifiAvail":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1367
    if-nez v3, :cond_2

    .line 1368
    const-string v4, "MyPlaceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 1371
    goto :goto_0

    .line 1374
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1375
    .local v1, "isMobileAvail":Z
    const-string v6, "MyPlaceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public compareByteArray([B[B)Z
    .locals 4
    .param p1, "_data1"    # [B
    .param p2, "_data2"    # [B

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "isCompareResult":Z
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 734
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareByteArray return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v0
.end method

.method public configureActionBar()V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    .line 209
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 212
    return-void
.end method

.method getSelectedTypeIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1312
    const/4 v0, -0x1

    .line 1313
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1337
    :goto_0
    return v0

    .line 1315
    :pswitch_0
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_0

    .line 1316
    const/4 v0, 0x3

    goto :goto_0

    .line 1318
    :cond_0
    const/4 v0, 0x2

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_1
    const/4 v0, 0x0

    .line 1322
    goto :goto_0

    .line 1324
    :pswitch_2
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_1

    .line 1325
    const/4 v0, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v0, 0x0

    .line 1328
    goto :goto_0

    .line 1330
    :pswitch_3
    iget v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-eq v1, v2, :cond_2

    .line 1331
    const/4 v0, 0x2

    goto :goto_0

    .line 1333
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isDuplicatePlaceName()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1290
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, "profileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1296
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    :cond_0
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1302
    const/4 v0, 0x1

    .line 1308
    :goto_0
    return v0

    .line 1304
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1308
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1388
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1389
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1391
    .local v1, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1392
    const/4 v2, 0x1

    .line 1395
    .end local v1    # "mobileNetwork":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 216
    const-string v2, "MyPlaceSettings"

    const-string v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 218
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04012c

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100291

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100292

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    .line 240
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mGuideText:Landroid/widget/TextView;

    const v3, 0x7f0a19ef

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 243
    :cond_0
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-nez v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 246
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 247
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 248
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 257
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 265
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->initPlaceInfo()V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 267
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 268
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 261
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 262
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1226
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), requestCode :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    if-ne p1, v4, :cond_3

    .line 1229
    if-ne p2, v5, :cond_2

    .line 1230
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1231
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "ssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1232
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "bssid"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1233
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "frequency"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1234
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1235
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1239
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 1240
    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 1286
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1287
    return-void

    .line 1236
    :cond_2
    if-nez p2, :cond_0

    .line 1237
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    :cond_3
    if-ne p1, v7, :cond_5

    .line 1243
    if-ne p2, v5, :cond_4

    .line 1244
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1245
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "DeviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1246
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "MacAddress"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1247
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1248
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 1249
    iput v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1251
    :cond_4
    if-nez p2, :cond_1

    .line 1252
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 1254
    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1257
    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 1258
    if-ne p2, v5, :cond_6

    .line 1259
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1260
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "DeviceName"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "MacAddress"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1263
    iput v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1264
    :cond_6
    if-nez p2, :cond_1

    .line 1265
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    goto :goto_1

    .line 1268
    :cond_7
    if-ne p1, v8, :cond_1

    .line 1269
    if-ne p2, v5, :cond_8

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 1271
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "location"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1272
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "latitude"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1273
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v2, "longitude"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1274
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1276
    const-string v1, "map"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1277
    .local v0, "btMap":[B
    if-eqz v0, :cond_1

    .line 1278
    const-string v1, "MyPlaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_GPS_LOCATION_REQUEST, btMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v1, v0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    goto/16 :goto_1

    .line 1281
    .end local v0    # "btMap":[B
    :cond_8
    if-nez p2, :cond_1

    .line 1282
    const-string v1, "MyPlaceSettings"

    const-string v2, "onActivityResult is RESULT_CANCELED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "HelpStep":I
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 744
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 745
    const/4 v0, 0x1

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 749
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 750
    const/4 v0, 0x2

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 754
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 755
    const/4 v0, 0x3

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 759
    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 760
    const/4 v0, 0x4

    .line 762
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 763
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 771
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 773
    return-void

    .line 764
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 765
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 766
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 767
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 768
    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 769
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setHasOptionsMenu(Z)V

    .line 164
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v6, 0x64

    if-lt v3, v6, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isKnoxUser:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 170
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    .line 171
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "my place id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "fromHelp"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    .line 173
    const-string v3, "edit_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    .line 174
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "edit mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v3, "add_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    .line 176
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v3, "lbs_mode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    .line 180
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mLbsMode:Z

    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->resetPlaceInfo()V

    .line 183
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "location"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "latitude"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 185
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    const-string v6, "longitude"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 186
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v3, v4}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 187
    const-string v3, "MyPlaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbl mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v7}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "default_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mDefaultName:Ljava/lang/String;

    .line 195
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "myplacehelp"

    invoke-virtual {v3, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 196
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 197
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "value"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->configureActionBar()V

    .line 203
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    const/4 v3, 0x5

    sput v3, Lcom/android/settings/myplace/MyPlaceProfileSettings;->PREFIX_COUNT:I

    .line 205
    :cond_3
    return-void

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_4
    move v3, v5

    .line 167
    goto/16 :goto_0

    .line 192
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_5
    const-string v3, "MyPlaceSettings"

    const-string v6, "Bundle is null"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 382
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 387
    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    .line 388
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$2;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    .line 396
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0a1ad4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 397
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$3;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v1, 0x2

    const v2, 0x7f0a01d1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 477
    const/4 v1, 0x1

    const v2, 0x7f0a07f6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 272
    const-string v0, "MyPlaceSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 275
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 777
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 857
    :goto_0
    return v6

    .line 780
    :sswitch_0
    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a07fb

    invoke-virtual {p0, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isDuplicatePlaceName()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a19e8

    invoke-virtual {p0, v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 793
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "timeStamp":Ljava/lang/String;
    const-string v6, "type"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    iget-object v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "tmpTitle":Ljava/lang/String;
    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    sget v8, Lcom/android/settings/myplace/MyPlaceProfileSettings;->PREFIX_COUNT:I

    if-ge v6, v8, :cond_2

    iget v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    if-ltz v6, :cond_2

    .line 799
    const v6, 0x7f0a19de

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 800
    const-string v3, "Home"

    .line 811
    :cond_2
    :goto_1
    const-string v6, "profile_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v6, "gps_location"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v6, "gps_latitude"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    const-string v6, "gps_longitude"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    const-string v6, "gps_map"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1000(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 816
    const-string v6, "wifi_ap_name"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1100(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v6, "wifi_bssid"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1200(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v6, "wifi_frequency"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1300(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    const-string v6, "wifi_auto_connect"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1400(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v6, "bt_device_name"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1500(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v6, "bt_mac_address"

    iget-object v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v8}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1600(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAddMode:Z

    if-eqz v6, :cond_9

    .line 824
    const-string v6, "timestamp"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.MYPLACE_ADDED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 827
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "content://com.android.settings.myplace.MyPlaceProvider/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "temp":[Ljava/lang/String;
    aget-object v6, v1, v7

    if-eqz v6, :cond_3

    .line 829
    const-string v6, "added_id"

    aget-object v8, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    :cond_3
    const-string v6, "uri"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 832
    const-string v6, "timestamp"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "temp":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v6, v7

    .line 849
    goto/16 :goto_0

    .line 801
    :cond_5
    const v6, 0x7f0a19e0

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 802
    const-string v3, "Car"

    goto/16 :goto_1

    .line 803
    :cond_6
    const v6, 0x7f0a19df

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 804
    const-string v3, "Office"

    goto/16 :goto_1

    .line 805
    :cond_7
    const v6, 0x7f0a19e1

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 806
    const-string v3, "Gym"

    goto/16 :goto_1

    .line 807
    :cond_8
    const v6, 0x7f0a19e2

    invoke-virtual {p0, v6}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 808
    const-string v3, "School"

    goto/16 :goto_1

    .line 835
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->isPlaceInfoChanged()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 836
    const-string v6, "timestamp"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.MYPLACE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 843
    const-string v6, "changed_id"

    iget v8, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    const-string v6, "timestamp"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 853
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timeStamp":Ljava/lang/String;
    .end local v3    # "tmpTitle":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->finish()V

    move v6, v7

    .line 854
    goto/16 :goto_0

    .line 777
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f10010b -> :sswitch_1
        0x7f10010c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 351
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 352
    const-string v2, "value"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 353
    iput-boolean v6, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_1

    .line 358
    const-string v2, "value"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 362
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep3Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 363
    const-string v2, "value"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 367
    iput-object v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep4Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 368
    const-string v2, "value"

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_4

    .line 371
    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 373
    :cond_4
    iput v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 376
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const v4, 0x7f0a19ea

    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v1, 0x0

    .line 863
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mId:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 865
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 866
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 867
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00d4

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v3

    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$6;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$5;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$4;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1145
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 1016
    :cond_2
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mSelectMethod:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mMethodPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1018
    :cond_3
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1019
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1020
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00d5

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getSelectedTypeIndex()I

    move-result v3

    new-instance v4, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$9;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$8;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings$7;-><init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    .line 1138
    iget-boolean v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 1141
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 1142
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mAutoConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v2, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 300
    const-string v2, "MyPlaceSettings"

    const-string v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 302
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->updateProfile()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "myplacehelp"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, "pref":Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-nez v2, :cond_6

    .line 306
    const-string v2, "value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, "value":I
    if-ne v1, v4, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    if-eqz v2, :cond_3

    .line 308
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    .line 309
    iput-boolean v5, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag1:Z

    .line 328
    .end local v1    # "value":I
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->setFlag2:Z

    .line 329
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 330
    return-void

    .line 310
    .restart local v1    # "value":I
    :cond_3
    if-ne v1, v6, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 312
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 313
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 314
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep4Dialog()V

    goto :goto_0

    .line 317
    .end local v1    # "value":I
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v4, :cond_7

    .line 318
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep1Dialog()V

    goto :goto_0

    .line 319
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mIsFromHelp:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->helpRequest:I

    if-ne v2, v6, :cond_8

    .line 320
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->showHelpStep3Dialog()V

    goto :goto_0

    .line 321
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mEditMode:Z

    if-eqz v2, :cond_9

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 323
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 325
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 326
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method resetPlaceInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1342
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1343
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1345
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1346
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1002(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;[B)[B

    .line 1347
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1102(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1348
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1202(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1302(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1350
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v2}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1402(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;I)I

    .line 1351
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1502(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings;->mPlaceInfo:Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;

    invoke-static {v0, v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;->access$1602(Lcom/android/settings/myplace/MyPlaceProfileSettings$MyPlaceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1353
    return-void
.end method
