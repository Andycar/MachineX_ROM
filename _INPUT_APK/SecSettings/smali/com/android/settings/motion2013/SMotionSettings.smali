.class public Lcom/android/settings/motion2013/SMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

.field private airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

.field private mAirCommand:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandMotionObserver:Landroid/database/ContentObserver;

.field private mMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSideMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mSideMotionObserver:Landroid/database/ContentObserver;

.field private mSurface:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 68
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 79
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionSettings$1;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$2;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    .line 105
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$3;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$4;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    .line 119
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$5;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/SMotionSettings;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/SMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 481
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 485
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 489
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 491
    :cond_2
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 575
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1258

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1257

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$13;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$12;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 596
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$14;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 604
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .param p1, "title_res_id"    # I
    .param p2, "message_res_id"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 445
    move-object v0, p3

    .line 446
    .local v0, "motion_type":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2013/SMotionSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2013/SMotionSettings$11;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 475
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 476
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 15
    .param p1, "showagain_checkbox_flag"    # Z

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 357
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 360
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f040089

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 361
    .local v4, "layout":Landroid/view/View;
    const v10, 0x7f100075

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 362
    .local v5, "message":Landroid/widget/TextView;
    const v10, 0x7f10016f

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 363
    .local v2, "image":Landroid/widget/ImageView;
    const v10, 0x7f100167

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 364
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 365
    if-eqz p1, :cond_0

    .line 366
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 368
    :cond_0
    const v10, 0x7f020616

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 370
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x7f0e0010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 371
    .local v8, "proper_distance":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0a12d9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a12db

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a12da

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "original_str":Ljava/lang/String;
    const-string v10, "ja"

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "hi"

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 375
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0a12d9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a12db

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0a12da

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 379
    :cond_2
    const v10, 0x7f02001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 380
    .local v6, "message_str":Landroid/text/SpannableString;
    if-eqz v6, :cond_3

    .line 381
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 386
    const v10, 0x7f0a12d7

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 387
    const v10, 0x7f0a091f

    new-instance v11, Lcom/android/settings/motion2013/SMotionSettings$7;

    invoke-direct {v11, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$7;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 398
    iget-object v10, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 399
    return-void

    .line 383
    :cond_3
    const v10, 0x7f0a12d8

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 405
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a12c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a12bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$9;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$8;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 431
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$10;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    return-void
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 495
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_glance_view"

    const/4 v9, -0x2

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 496
    .local v4, "quickGlance":I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_scroll"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 497
    .local v1, "airScroll":I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 498
    .local v2, "airTurn":I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_item_move"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 499
    .local v0, "airMove":I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 501
    .local v3, "callAccept":I
    or-int v7, v4, v1

    or-int/2addr v7, v2

    or-int/2addr v7, v0

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 539
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 542
    .local v0, "palmSwipe":I
    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 544
    .local v1, "palmTouch":I
    :goto_1
    const/4 v2, 0x0

    .line 546
    .local v2, "tapAndTwist":I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    .end local v0    # "palmSwipe":I
    .end local v1    # "palmTouch":I
    .end local v2    # "tapAndTwist":I
    :cond_1
    move v0, v3

    .line 540
    goto :goto_0

    .restart local v0    # "palmSwipe":I
    :cond_2
    move v1, v3

    .line 542
    goto :goto_1
.end method

.method public isAllMotionDisabled()Z
    .locals 17

    .prologue
    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 507
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 508
    .local v3, "isTablet":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 510
    .local v4, "isVoiceCapable":Z
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_zooming"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 512
    .local v12, "tiltZoom":I
    :goto_0
    const/4 v11, 0x0

    .line 514
    .local v11, "tiltScroll":I
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_panning"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 516
    .local v6, "panMove":I
    :goto_1
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pan_to_browse_image"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 518
    .local v5, "panBrowse":I
    :goto_2
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_shake"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 520
    .local v9, "shake":I
    :goto_3
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_double_tap"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 522
    .local v2, "doubleTap":I
    :goto_4
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 524
    .local v10, "smartAlert":I
    :goto_5
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up_to_call_out"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 526
    .local v1, "directCall":I
    :goto_6
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_overturn"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 529
    .local v13, "turnover":I
    :goto_7
    const/4 v8, 0x0

    .line 531
    .local v8, "peekViewAlbumsList":I
    const/4 v7, 0x0

    .line 534
    .local v7, "peekChapterPreview":I
    or-int v14, v12, v11

    or-int/2addr v14, v6

    or-int/2addr v14, v5

    or-int/2addr v14, v9

    or-int/2addr v14, v2

    or-int/2addr v14, v10

    or-int/2addr v14, v1

    or-int/2addr v14, v13

    or-int/2addr v14, v8

    or-int/2addr v14, v7

    const/4 v15, 0x1

    if-ge v14, v15, :cond_8

    const/4 v14, 0x1

    :goto_8
    return v14

    .line 510
    .end local v1    # "directCall":I
    .end local v2    # "doubleTap":I
    .end local v5    # "panBrowse":I
    .end local v6    # "panMove":I
    .end local v7    # "peekChapterPreview":I
    .end local v8    # "peekViewAlbumsList":I
    .end local v9    # "shake":I
    .end local v10    # "smartAlert":I
    .end local v11    # "tiltScroll":I
    .end local v12    # "tiltZoom":I
    .end local v13    # "turnover":I
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 514
    .restart local v11    # "tiltScroll":I
    .restart local v12    # "tiltZoom":I
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 516
    .restart local v6    # "panMove":I
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 518
    .restart local v5    # "panBrowse":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 520
    .restart local v9    # "shake":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 522
    .restart local v2    # "doubleTap":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 524
    .restart local v10    # "smartAlert":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 526
    .restart local v1    # "directCall":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    .line 534
    .restart local v7    # "peekChapterPreview":I
    .restart local v8    # "peekViewAlbumsList":I
    .restart local v13    # "turnover":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_8
.end method

.method public isAllSideMotionDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 551
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_one_hand_operation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 552
    .local v0, "oneHandOperation":I
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_peek"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, "peek":I
    or-int v4, v0, v1

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$6;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v12, 0x7f0700ae

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->addPreferencesFromResource(I)V

    .line 132
    const-string v12, "air_motion"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    const-string v12, "motion"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v12, "surface"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    .line 135
    const-string v12, "side_motion"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 136
    const-string v12, "air_view_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 137
    const-string v12, "header_air_command"

    invoke-virtual {p0, v12}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/SwitchPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    .line 139
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v12, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    new-instance v12, Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v12, v13, v14}, Lcom/android/settings/AirViewPreferenceEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    .line 144
    new-instance v12, Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v12, v13, v14}, Lcom/android/settings/AirCmdPreferenceEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 148
    .local v9, "ps":Landroid/preference/PreferenceScreen;
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 149
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_0
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 153
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 157
    .local v3, "isTablet":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x64

    if-lt v12, v13, :cond_e

    const/4 v2, 0x1

    .line 158
    .local v2, "isKnoxUser":Z
    :goto_0
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v3, :cond_f

    :cond_2
    const/4 v1, 0x1

    .line 159
    .local v1, "doubleTap":Z
    :goto_1
    const/4 v0, 0x1

    .line 160
    .local v0, "arcMotion":Z
    const/4 v8, 0x1

    .line 161
    .local v8, "peekViewAlbum":Z
    const/4 v7, 0x1

    .line 162
    .local v7, "peekChapterView":Z
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    const/4 v4, 0x1

    .line 163
    .local v4, "motionTilt":Z
    :goto_2
    const/4 v11, 0x1

    .line 164
    .local v11, "tiltToScroll":Z
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz v3, :cond_11

    :cond_3
    const/4 v6, 0x1

    .line 165
    .local v6, "panToMove":Z
    :goto_3
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    const/4 v5, 0x1

    .line 166
    .local v5, "panToBrowse":Z
    :goto_4
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v3, :cond_13

    :cond_4
    const/4 v10, 0x1

    .line 167
    .local v10, "shakeToUpdate":Z
    :goto_5
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    if-eqz v11, :cond_5

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    if-eqz v10, :cond_5

    .line 168
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 170
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a11fe

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 172
    :cond_6
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 173
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a11fd

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 175
    :cond_7
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 176
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    const v13, 0x7f0a11fe

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 178
    :cond_8
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 179
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_9
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v12}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 189
    :cond_a
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 193
    :cond_c
    iget-object v12, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_d
    return-void

    .line 157
    .end local v0    # "arcMotion":Z
    .end local v1    # "doubleTap":Z
    .end local v2    # "isKnoxUser":Z
    .end local v4    # "motionTilt":Z
    .end local v5    # "panToBrowse":Z
    .end local v6    # "panToMove":Z
    .end local v7    # "peekChapterView":Z
    .end local v8    # "peekViewAlbum":Z
    .end local v10    # "shakeToUpdate":Z
    .end local v11    # "tiltToScroll":Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 158
    .restart local v2    # "isKnoxUser":Z
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 162
    .restart local v0    # "arcMotion":Z
    .restart local v1    # "doubleTap":Z
    .restart local v7    # "peekChapterView":Z
    .restart local v8    # "peekViewAlbum":Z
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 164
    .restart local v4    # "motionTilt":Z
    .restart local v11    # "tiltToScroll":Z
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 165
    .restart local v6    # "panToMove":Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 166
    .restart local v5    # "panToBrowse":Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 242
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->pause()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->pause()V

    .line 247
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v8, 0x7f0a124f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v7, 0x7f0a1242

    .line 287
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-object v4, p2

    .line 288
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 289
    .local v3, "value":I
    :goto_0
    const-string v4, "air_motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->showTalkBackDisableDialog()V

    .line 350
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v5

    .end local v3    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    move v3, v6

    .line 288
    goto :goto_0

    .line 292
    .restart local v3    # "value":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllAirMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_engine"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v4, p2

    .line 300
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 301
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 303
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "pref_air_motion_sensor_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 304
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showGuideDialog(Z)V

    goto :goto_1

    .line 309
    .end local v0    # "do_not_show_again":Z
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v4, "motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 310
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 314
    const v4, 0x7f0a11ff

    invoke-direct {p0, v7, v4, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto :goto_1

    .line 320
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 323
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    const-string v4, "surface"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 326
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_1

    .line 327
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 333
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 335
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "surface_motion_engine"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 337
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    const-string v4, "side_motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllSideMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 340
    const v4, 0x7f0a127c

    invoke-direct {p0, v7, v4, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 342
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_side_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 346
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_side_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    const-string v0, "SMotionSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 224
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_motion"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 226
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_side_motion"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "master_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "master_side_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->resume()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->resume()V

    .line 237
    return-void

    :cond_1
    move v0, v2

    .line 224
    goto :goto_0

    :cond_2
    move v0, v2

    .line 225
    goto :goto_1

    :cond_3
    move v0, v2

    .line 226
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 256
    return-void
.end method
