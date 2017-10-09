.class public final Lcom/android/settings/motion2013/PalmMotionEnabler;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mPalmMotionObserver:Landroid/database/ContentObserver;

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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 41
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    .line 44
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 45
    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    .line 56
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/PalmMotionEnabler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/PalmMotionEnabler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/PalmMotionEnabler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/PalmMotionEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/PalmMotionEnabler;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/PalmMotionEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/motion2013/PalmMotionEnabler;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 149
    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1258

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1257

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/PalmMotionEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$3;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 169
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/PalmMotionEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$4;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/PalmMotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$2;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 141
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 142
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    .line 100
    if-eqz p2, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->makeTalkBackDisablePopup()V

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 62
    iput p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    .line 63
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 86
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "motionState":I
    if-ne v0, v4, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
