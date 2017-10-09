.class public final Lcom/android/settings/AirCommandEnabler;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 55
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 59
    iput-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 65
    new-instance v0, Lcom/android/settings/AirCommandEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirCommandEnabler$1;-><init>(Lcom/android/settings/AirCommandEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 74
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 77
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->turnOnPenInfoPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirCommandEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCommandEnabler;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 171
    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a138e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirCommandEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$3;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirCommandEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCommandEnabler$2;-><init>(Lcom/android/settings/AirCommandEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 163
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 177
    .local v1, "airViewState":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 179
    .local v2, "penHover":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 180
    .local v3, "penInforPreview":Z
    :goto_2
    if-nez v1, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    .line 185
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    :cond_1
    if-nez v2, :cond_2

    .line 190
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_2
    if-nez v3, :cond_3

    .line 193
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penHover":Z
    .end local v3    # "penInforPreview":Z
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 176
    goto :goto_0

    .restart local v0    # "airViewMode":I
    .restart local v1    # "airViewState":Z
    :cond_5
    move v2, v5

    .line 178
    goto :goto_1

    .restart local v2    # "penHover":Z
    :cond_6
    move v3, v5

    .line 179
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    if-eqz p2, :cond_6

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "airViewState":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 119
    :goto_0
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "airViewMode":I
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 121
    .local v2, "penInforPreview":Z
    :goto_1
    if-eqz v1, :cond_0

    sget v4, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v4, :cond_0

    if-nez v2, :cond_5

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->showAirCommandEnabledPopup()V

    .line 129
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penInforPreview":Z
    :goto_2
    return-void

    .restart local v1    # "airViewState":Z
    :cond_1
    move v1, v4

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_3
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    .restart local v0    # "airViewMode":I
    :cond_4
    move v2, v4

    .line 120
    goto :goto_1

    .line 124
    .restart local v2    # "penInforPreview":Z
    :cond_5
    iget-object v4, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 127
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penInforPreview":Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_button_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings/AirCommandEnabler;->dismissAllDialog()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 83
    iput p2, p0, Lcom/android/settings/AirCommandEnabler;->mPosition:I

    .line 84
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/AirCommandEnabler;->updateSwitch()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirCommandEnabler;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 138
    return-void

    :cond_0
    move v1, v2

    .line 134
    goto :goto_0
.end method
