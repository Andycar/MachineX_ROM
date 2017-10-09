.class public final Lcom/android/settings/AirCmdPreferenceEnabler;
.super Ljava/lang/Object;
.source "AirCmdPreferenceEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 47
    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mPosition:I

    .line 51
    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 53
    new-instance v0, Lcom/android/settings/AirCmdPreferenceEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirCmdPreferenceEnabler$1;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 62
    iput-object p1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCmdPreferenceEnabler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirCmdPreferenceEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirCmdPreferenceEnabler;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->turnOnPenInfoPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirCmdPreferenceEnabler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 156
    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->dismissAllDialog()V

    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a138e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a135b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirCmdPreferenceEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCmdPreferenceEnabler$3;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirCmdPreferenceEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCmdPreferenceEnabler$2;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 148
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 149
    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 162
    .local v1, "airViewState":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    .line 164
    .local v2, "penHover":Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 165
    .local v3, "penInforPreview":Z
    :goto_2
    if-nez v1, :cond_0

    .line 167
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    :cond_1
    if-nez v2, :cond_2

    .line 175
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_2
    if-nez v3, :cond_3

    .line 178
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v2    # "penHover":Z
    .end local v3    # "penInforPreview":Z
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 161
    goto :goto_0

    .restart local v0    # "airViewMode":I
    .restart local v1    # "airViewState":Z
    :cond_5
    move v2, v5

    .line 163
    goto :goto_1

    .restart local v2    # "penHover":Z
    :cond_6
    move v3, v5

    .line 164
    goto :goto_2
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 99
    .local v2, "desiredState":Z
    if-eqz v2, :cond_6

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "airViewState":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 106
    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "airViewMode":I
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 108
    .local v3, "penInforPreview":Z
    :goto_1
    if-eqz v1, :cond_0

    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v5, :cond_0

    if-nez v3, :cond_5

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->showAirCommandEnabledPopup()V

    .line 116
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v3    # "penInforPreview":Z
    :goto_2
    return v4

    .restart local v1    # "airViewState":Z
    :cond_1
    move v1, v5

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_3

    .restart local v0    # "airViewMode":I
    :cond_4
    move v3, v5

    .line 107
    goto :goto_1

    .line 111
    .restart local v3    # "penInforPreview":Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 114
    .end local v0    # "airViewMode":I
    .end local v1    # "airViewState":Z
    .end local v3    # "penInforPreview":Z
    :cond_6
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->dismissAllDialog()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->updateSwitch()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    return-void

    :cond_0
    move v1, v2

    .line 122
    goto :goto_0
.end method
