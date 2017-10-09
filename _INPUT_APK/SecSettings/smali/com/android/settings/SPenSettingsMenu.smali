.class public Lcom/android/settings/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    }
.end annotation


# static fields
.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected MESSAGE_DELAY:I

.field private mAirCommandPref2014:Landroid/preference/Preference;

.field private mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mDirectPenInputSwitchPref2014:Landroid/preference/Preference;

.field private mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

.field private final mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mPenAirViewPref2014:Landroid/preference/Preference;

.field private mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

.field private mPenDetachOptionList:Landroid/preference/ListPreference;

.field private mPenDetachOptionListEntries:[Ljava/lang/CharSequence;

.field private mPenDetachOptionListEntryValues:[Ljava/lang/CharSequence;

.field private mPenDetachOptionSublistEntries:[Ljava/lang/CharSequence;

.field private mPenDetachOptionSublistEntryValues:[Ljava/lang/CharSequence;

.field private mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

.field private mPenFeedbackHapticPref:Landroid/preference/Preference;

.field private mPenFeedbackSoundPref:Landroid/preference/Preference;

.field private mPenHandwritingCategory:Landroid/preference/PreferenceCategory;

.field protected mPenHoveringUncheckerHandler:Landroid/os/Handler;

.field private mPenKeeperNotiDialog:Landroid/app/AlertDialog;

.field private mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mPenWritingSound:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode2014Observer:Landroid/database/ContentObserver;

.field private mPsmHapticObserver:Landroid/database/ContentObserver;

.field private mRestrictPerformanceObserver:Landroid/database/ContentObserver;

.field private mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

.field private mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mSpenPointerSwitchPref2014:Landroid/preference/Preference;

.field private mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 140
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 142
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 144
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 146
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 148
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 150
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SPenSettingsMenu;->MESSAGE_DELAY:I

    .line 224
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SPenSettingsMenu$1;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    .line 232
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SPenSettingsMenu$2;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPowerSavingMode2014Observer:Landroid/database/ContentObserver;

    .line 244
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SPenSettingsMenu$3;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mRestrictPerformanceObserver:Landroid/database/ContentObserver;

    .line 257
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SPenSettingsMenu$4;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPsmHapticObserver:Landroid/database/ContentObserver;

    .line 667
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SPenSettingsMenu$5;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SPenSettingsMenu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 994
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 996
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1000
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1004
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1008
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 1010
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1011
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1012
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 1014
    :cond_4
    return-void
.end method

.method private getPenDetachmentOption()Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    .locals 4

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_detachment_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1061
    .local v0, "index":I
    invoke-static {}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->values()[Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1018
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 837
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 838
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a15c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 847
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/SPenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    return-void
.end method

.method private makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0a0a3c

    .line 674
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 676
    move-object v0, p1

    .line 677
    .local v0, "fromKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a11be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "msg":Ljava/lang/String;
    const v4, 0x7f0a11b3

    invoke-virtual {p0, v4}, Lcom/android/settings/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0a11ab

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "title":Ljava/lang/String;
    const-string v4, "pen_air_view"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a13c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a1186

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a13c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->isTalkbackAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/SPenSettingsMenu$8;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/SPenSettingsMenu$8;-><init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/SPenSettingsMenu$7;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/SPenSettingsMenu$7;-><init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/SPenSettingsMenu$6;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/SPenSettingsMenu$6;-><init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 747
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 748
    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    const-string v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    return-void
.end method

.method private setPenDetachmentOption(Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;)V
    .locals 3
    .param p1, "option"    # Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detachment_option"

    invoke-virtual {p1}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1068
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 949
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a138e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$12;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$12;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$11;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$11;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 964
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 965
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 969
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0a135b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$14;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$14;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$13;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$13;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 984
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 985
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SPenSettingsMenu$15;

    invoke-direct {v1, p0}, Lcom/android/settings/SPenSettingsMenu$15;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 992
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 929
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1347

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$10;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$10;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 943
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 944
    return-void
.end method

.method private updateDetachNotiPref()V
    .locals 4

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "currentNotiSound":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 857
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 858
    const/4 v1, 0x1

    .line 859
    const-string v2, "SPenSettingsMenu"

    const-string v3, "updateDetachNotiPref() file exist error"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    return-void
.end method

.method private updatePenDetachOptionList()V
    .locals 6

    .prologue
    .line 1027
    iget-object v2, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntries:[Ljava/lang/CharSequence;

    .line 1028
    .local v2, "penDetachEntries":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntryValues:[Ljava/lang/CharSequence;

    .line 1029
    .local v3, "penDetachEntryValues":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1033
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1039
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1040
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->getPenDetachmentOption()Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    move-result-object v1

    .line 1041
    .local v1, "option":Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    sget-object v4, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->AIR_COMMAND:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    invoke-virtual {v1, v4}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    sget-object v4, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->NONE:Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    invoke-direct {p0, v4}, Lcom/android/settings/SPenSettingsMenu;->setPenDetachmentOption(Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;)V

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionSublistEntries:[Ljava/lang/CharSequence;

    .line 1047
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionSublistEntryValues:[Ljava/lang/CharSequence;

    .line 1050
    .end local v1    # "option":Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->getPenDetachmentOption()Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SPenSettingsMenu$PenDetachmentOption;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1053
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1054
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 536
    const-string v3, "SPenSettingsMenu"

    const-string v4, "updateState() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_pointer"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v0, v1

    .line 541
    .local v0, "penPointerState":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 544
    .end local v0    # "penPointerState":Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_detect_mode_disabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_detachment_alert"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 551
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 552
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updatePenDetachOptionList()V

    .line 556
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateDetachNotiPref()V

    .line 558
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v3

    if-nez v3, :cond_3

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_9

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 564
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_sound"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_a

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 566
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_button_onoff"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_b

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 570
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_4

    .line 571
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_writing_buddy"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_c

    move v3, v1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 575
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 576
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_attach_detach_vibration"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_d

    :goto_7
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 580
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 539
    goto/16 :goto_0

    :cond_7
    move v3, v2

    .line 544
    goto/16 :goto_1

    :cond_8
    move v3, v2

    .line 547
    goto/16 :goto_2

    :cond_9
    move v3, v2

    .line 562
    goto :goto_3

    :cond_a
    move v3, v2

    .line 564
    goto :goto_4

    :cond_b
    move v3, v2

    .line 566
    goto :goto_5

    :cond_c
    move v3, v2

    .line 571
    goto :goto_6

    :cond_d
    move v1, v2

    .line 576
    goto :goto_7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 272
    const-string v5, "SPenSettingsMenu"

    const-string v7, "onCreate() "

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 274
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 279
    const v5, 0x7f070098

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 282
    const-string v5, "key_spen_pointer_2014"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref2014:Landroid/preference/Preference;

    .line 285
    const-string v5, "key_writing_buddy_2014"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref2014:Landroid/preference/Preference;

    .line 288
    const-string v5, "pen_air_view_2014"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewPref2014:Landroid/preference/Preference;

    .line 291
    const-string v5, "key_air_button_2014"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandPref2014:Landroid/preference/Preference;

    .line 294
    const-string v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackSoundPref:Landroid/preference/Preference;

    .line 297
    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    .line 341
    :goto_0
    const-string v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    .line 342
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 345
    const-string v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    .line 346
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 350
    const-string v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    .line 351
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 356
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntries:[Ljava/lang/CharSequence;

    .line 357
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntryValues:[Ljava/lang/CharSequence;

    .line 359
    new-array v5, v8, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    aput-object v7, v5, v4

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionSublistEntries:[Ljava/lang/CharSequence;

    .line 363
    new-array v5, v8, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionListEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    aput-object v7, v5, v4

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionSublistEntryValues:[Ljava/lang/CharSequence;

    .line 370
    const-string v5, "pen_deatachment_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    .line 371
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->makePenNotificationList()V

    .line 374
    const-string v5, "pen_attach_detach_vibration"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    .line 375
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 378
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.android.app.SPenKeeper"

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 380
    .local v2, "mSupportSPenKeeper":Z
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v2, :cond_7

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "key_writing_buddy"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v5

    if-nez v5, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "pen_hover"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "pen_air_view"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "key_air_button"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "pen_hovering_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v5

    if-nez v5, :cond_4

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "Additional_feedback_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v7, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v7}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/SPenSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v5, :cond_5

    .line 407
    sget v5, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 409
    .local v0, "extra_bundle":Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "targetKey":Ljava/lang/String;
    sget v5, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    if-ne v5, v4, :cond_8

    .line 412
    .local v4, "value":Z
    :goto_2
    const-string v5, "key_writing_buddy"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 413
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 414
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 428
    .end local v0    # "extra_bundle":Landroid/os/Bundle;
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v4    # "value":Z
    :cond_5
    :goto_3
    return-void

    .line 299
    .end local v2    # "mSupportSPenKeeper":Z
    :cond_6
    const v5, 0x7f070099

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 302
    const-string v5, "key_spen_pointer"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 303
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    const-string v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 307
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 310
    const-string v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 311
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    const-string v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 315
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    const-string v5, "pen_hovering_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    .line 319
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 322
    const-string v5, "pen_handwriting_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenHandwritingCategory:Landroid/preference/PreferenceCategory;

    .line 323
    const-string v5, "writing_haptic_feedback"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 324
    const-string v5, "writing_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingSound:Landroid/preference/CheckBoxPreference;

    .line 325
    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "mProductName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenHandwritingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 383
    .end local v1    # "mProductName":Ljava/lang/String;
    .restart local v2    # "mSupportSPenKeeper":Z
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v8

    const-wide v10, 0x4011333333333333L    # 4.3

    cmpl-double v5, v8, v10

    if-lez v5, :cond_1

    .line 384
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0a11a2

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 385
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0a11a3

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_1

    .restart local v0    # "extra_bundle":Landroid/os/Bundle;
    .restart local v3    # "targetKey":Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 411
    goto/16 :goto_2

    .line 415
    .restart local v4    # "value":Z
    :cond_9
    const-string v5, "pen_air_view"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 416
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 417
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 418
    :cond_a
    const-string v5, "key_spen_pointer"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 419
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 420
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 421
    :cond_b
    const-string v5, "key_air_button"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 422
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 423
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x1

    const v1, 0x7f0a0e97

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 908
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 909
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 913
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 922
    const/4 v1, 0x0

    .line 924
    :goto_0
    return v1

    .line 915
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.helphub"

    const-string v3, "com.samsung.helphub.HelpHubActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V

    .line 924
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "SPenSettingsMenu"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPowerSavingMode2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mRestrictPerformanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 533
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 584
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "key":Ljava/lang/String;
    const-string v8, "pen_deatachment_sound"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 664
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 596
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v8, "pen_air_view"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 597
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 599
    .local v5, "value":Z
    if-eqz v5, :cond_5

    .line 600
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_display_magnification_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 603
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    .line 619
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 605
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 610
    :cond_5
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_6

    move v0, v6

    .line 612
    .local v0, "airCommandState":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 613
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAirViewDisableDialog()V

    goto :goto_1

    .end local v0    # "airCommandState":Z
    :cond_6
    move v0, v7

    .line 610
    goto :goto_2

    .line 615
    .restart local v0    # "airCommandState":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 620
    .end local v0    # "airCommandState":Z
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    const-string v8, "key_air_button"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 621
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 622
    .restart local v5    # "value":Z
    if-eqz v5, :cond_f

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, "airViewState":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 625
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_master_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v2, v6

    .line 630
    :goto_3
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 631
    .local v1, "airViewMode":I
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v4, v6

    .line 632
    .local v4, "penInforPreview":Z
    :goto_4
    if-eqz v2, :cond_9

    sget v7, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v1, v7, :cond_9

    if-nez v4, :cond_e

    .line 634
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAirCommandEnabledPopup()V

    .line 641
    .end local v1    # "airViewMode":I
    .end local v2    # "airViewState":Z
    .end local v4    # "penInforPreview":Z
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    goto/16 :goto_0

    .restart local v2    # "airViewState":Z
    :cond_a
    move v2, v7

    .line 625
    goto :goto_3

    .line 627
    :cond_b
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    move v2, v6

    :goto_6
    goto :goto_3

    :cond_c
    move v2, v7

    goto :goto_6

    .restart local v1    # "airViewMode":I
    :cond_d
    move v4, v7

    .line 631
    goto :goto_4

    .line 636
    .restart local v4    # "penInforPreview":Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_button_onoff"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 639
    .end local v1    # "airViewMode":I
    .end local v2    # "airViewState":Z
    .end local v4    # "penInforPreview":Z
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 642
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_10
    const-string v8, "key_writing_buddy"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 643
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 644
    .restart local v5    # "value":Z
    if-eqz v5, :cond_12

    .line 645
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_display_magnification_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_12

    .line 648
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_writing_buddy"

    if-ne v5, v6, :cond_13

    move v7, v6

    :cond_13
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 654
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_14
    const-string v8, "pen_detachment_option_list"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 655
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 656
    .local v5, "value":I
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_option"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 658
    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 659
    .end local v5    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_15
    const-string v8, "key_spen_pointer"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 660
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 661
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_pointer"

    if-ne v5, v6, :cond_16

    move v7, v6

    :cond_16
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 753
    iget-boolean v6, p0, Lcom/android/settings/SPenSettingsMenu;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 754
    sget v6, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 755
    sget v6, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 756
    .local v3, "value":Z
    :goto_0
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    move-object v0, p2

    .line 757
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 758
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 759
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 772
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v3    # "value":Z
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 773
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 774
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detect_mode_disabled"

    if-eqz v3, :cond_4

    move v6, v4

    :goto_2
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 776
    if-eqz v3, :cond_5

    move v6, v4

    :goto_3
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 777
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "battery saving : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detect_mode_disabled"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v3    # "value":Z
    :cond_1
    :goto_4
    return v4

    :cond_2
    move v3, v5

    .line 755
    goto :goto_0

    .line 761
    .restart local v3    # "value":Z
    :cond_3
    instance-of v6, p2, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 762
    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    .line 763
    .local v0, "checkBoxStatePreference":Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 764
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 765
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "checkBoxStatePreference":Landroid/preference/SwitchPreferenceScreen;
    :cond_4
    move v6, v5

    .line 774
    goto :goto_2

    :cond_5
    move v6, v5

    .line 776
    goto :goto_3

    .line 783
    .end local v3    # "value":Z
    :cond_6
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 784
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 785
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering_sound"

    if-eqz v3, :cond_7

    move v6, v4

    :goto_5
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 786
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pen sound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move v6, v5

    .line 785
    goto :goto_5

    .line 791
    .end local v3    # "value":Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 792
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 793
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_alert"

    if-eqz v3, :cond_9

    move v6, v4

    :goto_6
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 795
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loss prevention alert : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_alert"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings_pen_keeper_noti_pref"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 802
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 803
    const-string v6, "PenKeeperDoNotShowDialog"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 804
    .local v1, "doNotShow":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->showPenKeeperNotiDialog()V

    goto/16 :goto_4

    .end local v1    # "doNotShow":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_9
    move v6, v5

    .line 793
    goto :goto_6

    .line 809
    .end local v3    # "value":Z
    :cond_a
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 810
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAttachDetachVirbrationCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 811
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_attach_detach_vibration"

    if-eqz v3, :cond_b

    move v6, v4

    :goto_7
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 812
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pen attach/detach virbration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_attach_detach_vibration"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    move v6, v5

    .line 811
    goto :goto_7

    .line 817
    .end local v3    # "value":Z
    :cond_c
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 818
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 819
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_writing_haptic_feedback"

    if-eqz v3, :cond_e

    :goto_8
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    const-string v4, "SPenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing haptic feedback : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_writing_haptic_feedback"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v3    # "value":Z
    :cond_d
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_4

    .restart local v3    # "value":Z
    :cond_e
    move v4, v5

    .line 819
    goto :goto_8

    .line 824
    .end local v3    # "value":Z
    :cond_f
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 825
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 826
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_writing_sound"

    if-eqz v3, :cond_10

    :goto_a
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 827
    const-string v4, "SPenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pen Writing sound : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_writing_sound"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move v4, v5

    .line 826
    goto :goto_a
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v3, 0x7f0a0a91

    const v2, 0x7f0a0a90

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 432
    const-string v1, "SPenSettingsMenu"

    const-string v4, "onResume() "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "super_mOpenDetailMenu":Z
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 436
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 439
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 440
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pen_hovering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 448
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pen_hovering"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pen_hovering"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref2014:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "pen_writing_buddy"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 459
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref2014:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "pen_hovering_pointer"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 463
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewPref2014:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "pen_hovering"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 466
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandPref2014:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "air_button_onoff"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 470
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "spen_feedback_sound"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SPenSoundFeedbackSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "spen_feedback_sound"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "spen_feedback_haptic"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SPenHapticFeedbackSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "spen_feedback_haptic"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackSoundPref:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 485
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackSoundPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "spen_feedback_sound"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 490
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spen_feedback_haptic"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 495
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPowerSavingMode2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mRestrictPerformanceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_d

    .line 499
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    :cond_5
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSPenNewLayoutFromT()Z

    move-result v1

    if-nez v1, :cond_6

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_haptic_feedback"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_e

    .line 508
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 515
    :cond_6
    :goto_7
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 516
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 518
    return-void

    :cond_7
    move v1, v3

    .line 456
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 459
    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 463
    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 466
    goto/16 :goto_3

    :cond_b
    move v1, v3

    .line 485
    goto/16 :goto_4

    :cond_c
    move v2, v3

    .line 490
    goto :goto_5

    .line 501
    :cond_d
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenFeedbackHapticPref:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    .line 510
    :cond_e
    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7
.end method

.method public showPenKeeperNotiDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 872
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 875
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 876
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 878
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04008b

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 879
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100171

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 880
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f0a11a1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 881
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 882
    const v4, 0x7f0a11a0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 883
    const v4, 0x7f0a091f

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 886
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 887
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/SPenSettingsMenu$9;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/SPenSettingsMenu$9;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 900
    return-void
.end method
