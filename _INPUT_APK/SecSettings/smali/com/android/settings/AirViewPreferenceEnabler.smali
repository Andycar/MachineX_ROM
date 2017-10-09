.class public final Lcom/android/settings/AirViewPreferenceEnabler;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 49
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mPosition:I

    .line 53
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 59
    new-instance v0, Lcom/android/settings/AirViewPreferenceEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler$1;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewPreferenceEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewPreferenceEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewPreferenceEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AirViewPreferenceEnabler;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mPosition:I

    return v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "air_view_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 259
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 263
    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 265
    :cond_1
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    .prologue
    const v5, 0x7f0a13c5

    const v4, 0x7f0a0a3c

    .line 143
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a13c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a1186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AirViewPreferenceEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewPreferenceEnabler$3;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/AirViewPreferenceEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewPreferenceEnabler$2;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 181
    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 182
    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$4;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a135b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$7;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$6;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 240
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/AirViewPreferenceEnabler$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AirViewPreferenceEnabler$8;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    .line 193
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

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

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$5;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 217
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 109
    .local v1, "desiredState":Z
    if-eqz v1, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->makeTalkBackDisablePopup()V

    .line 131
    :goto_0
    return v2

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 118
    invoke-direct {p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    .line 119
    const-string v3, "AirViewPreferenceEnabler"

    const-string v4, "Air view switch is on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    move v0, v2

    .line 124
    .local v0, "airCommandState":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 125
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAirViewDisableDialog()V

    goto :goto_0

    .line 127
    :cond_5
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 128
    invoke-direct {p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->updateSwitch()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    return-void
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "state":I
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    return-void

    :cond_0
    move v1, v2

    .line 138
    goto :goto_0
.end method
