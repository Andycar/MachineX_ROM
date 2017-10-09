.class public Lcom/android/settings/OneHandAdaptiveEnabler;
.super Landroid/preference/PreferenceActivity;
.source "OneHandAdaptiveEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 24
    iput-object p1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandAdaptiveEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/OneHandAdaptiveEnabler;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showHandAdaptiveModeDisableDialog()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 118
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a169a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1694

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/OneHandAdaptiveEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/OneHandAdaptiveEnabler$3;-><init>(Lcom/android/settings/OneHandAdaptiveEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 127
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method

.method private showHandAdaptiveModeEnableDialog()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 100
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1699

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1694

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/OneHandAdaptiveEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/OneHandAdaptiveEnabler$2;-><init>(Lcom/android/settings/OneHandAdaptiveEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 109
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 110
    return-void
.end method

.method private showHandAdaptiveModeInfoDialog()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 82
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a11ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1694

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/OneHandAdaptiveEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/OneHandAdaptiveEnabler$1;-><init>(Lcom/android/settings/OneHandAdaptiveEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 91
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v0, "OneHandAdaptiveEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_samsungkeypad_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_calculator_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_pattern_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/OneHandAdaptiveEnabler;->showHandAdaptiveModeInfoDialog()V

    .line 65
    const/4 p2, 0x0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/OneHandAdaptiveEnabler;->showHandAdaptiveModeEnableDialog()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/OneHandAdaptiveEnabler;->showHandAdaptiveModeDisableDialog()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 29
    const-string v1, "OneHandAdaptiveEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hand_adaptable_operation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 33
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    :cond_1
    return-void
.end method
