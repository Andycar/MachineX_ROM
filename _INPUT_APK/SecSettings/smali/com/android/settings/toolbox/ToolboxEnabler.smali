.class public final Lcom/android/settings/toolbox/ToolboxEnabler;
.super Ljava/lang/Object;
.source "ToolboxEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private final mToolboxObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    .line 45
    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 46
    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mPosition:I

    .line 51
    new-instance v0, Lcom/android/settings/toolbox/ToolboxEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/toolbox/ToolboxEnabler$1;-><init>(Lcom/android/settings/toolbox/ToolboxEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mToolboxObserver:Landroid/database/ContentObserver;

    .line 60
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/toolbox/ToolboxEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/toolbox/ToolboxEnabler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1d56

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1d55

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/toolbox/ToolboxEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxEnabler$3;-><init>(Lcom/android/settings/toolbox/ToolboxEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/toolbox/ToolboxEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxEnabler$2;-><init>(Lcom/android/settings/toolbox/ToolboxEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/toolbox/ToolboxEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/toolbox/ToolboxEnabler$4;-><init>(Lcom/android/settings/toolbox/ToolboxEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 153
    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxEnabler;->showTalkBackDisableDialog()V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "toolbox_onoff"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toolbox_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "toolbox_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    .local v0, "toolboxState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .end local v0    # "toolboxState":Z
    :cond_2
    move v0, v1

    .line 85
    goto :goto_1
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 69
    iput p2, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mPosition:I

    .line 70
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iput-object p1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    .line 108
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "toolbox_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, "toolboxState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    return-void
.end method
