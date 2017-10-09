.class public final Lcom/android/settings/torchlight/TorchlightEnabler;
.super Landroid/preference/PreferenceActivity;
.source "TorchlightEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mPosition:I

    .line 42
    iput-object p1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    .line 44
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "state":I
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "state":I
    const-string v1, "TorchlightEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-ne v0, v4, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "state":I
    if-ne v0, v4, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings/torchlight/TorchlightEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
