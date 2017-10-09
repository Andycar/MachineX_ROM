.class public final Lcom/android/settings/motion2014/MotionEnabler2014;
.super Ljava/lang/Object;
.source "MotionEnabler2014.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 43
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mPosition:I

    .line 45
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 48
    new-instance v0, Lcom/android/settings/motion2014/MotionEnabler2014$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2014/MotionEnabler2014$1;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mMotionObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionEnabler2014;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionEnabler2014;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionEnabler2014;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/MotionEnabler2014;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2014/MotionEnabler2014;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mPosition:I

    return v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    iput-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 179
    :cond_1
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1a1c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionEnabler2014$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$2;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a12ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1300

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionEnabler2014$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$3;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 158
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/MotionEnabler2014$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/MotionEnabler2014$4;-><init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 101
    if-eqz p2, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->showAllOptionDisabledDialog()V

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->showTalkBackDisableDialog()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionEnabler2014;->dismissAllDialog()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    return-void
.end method
