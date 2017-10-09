.class public final Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;
.super Ljava/lang/Object;
.source "PowerSavingEnabler2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isLowLevel:I

.field private mChangedAutoEnable:Z

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mDataCheck:Z

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 46
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 50
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mPosition:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    .line 64
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->refresh_SwitchPreference()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 46
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 50
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mPosition:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    .line 64
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;
    .param p3, "in_main_menu"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 103
    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private isAutoEnable()Z
    .locals 5

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 345
    .local v0, "autoEnableState":I
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 348
    :cond_0
    const-string v2, "PowerSavingEnabler2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return v1
.end method


# virtual methods
.method public changeAutoEnable()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    .line 159
    return-void
.end method

.method public getLimitBackgoundData()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 355
    .local v1, "powersavingmode_switch":I
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "data_powersaving":I
    if-ne v1, v5, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAutoEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    if-ne v3, v5, :cond_2

    .line 363
    :cond_0
    move v2, v0

    .line 370
    :cond_1
    :goto_0
    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_powersaving: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v2

    .line 365
    :cond_2
    if-ne v0, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 368
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, "powersavingState":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 379
    .local v0, "basic_powersaving":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 380
    .local v2, "data_powersaving":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 382
    .local v1, "black_grey_powersaving":I
    const-string v5, "PowerSavingEnabler2014"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", basic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", black_grey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 384
    .local v4, "retVal":Z
    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 283
    .local v0, "powersavingState":I
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, "powersavingState":I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 317
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 320
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v5, 0x7f0a16e6

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_0
    return v2

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "powersaving_switch"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    const-string v2, "PowerSavingEnabler2014"

    const-string v4, "switch is on"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v3

    .line 334
    goto :goto_0

    .line 328
    :cond_2
    if-nez v0, :cond_1

    if-ne v1, v3, :cond_1

    .line 329
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 330
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    const-string v2, "PowerSavingEnabler2014"

    const-string v4, "switch is off"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "PowerSavingEnabler2014"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCheck = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , mDataCheck"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v9, "PowerSavingEnabler2014"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "powersaving_switch = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "powersaving_switch"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v9, v10, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAllOptionDisabled()Z

    move-result v9

    if-nez v9, :cond_5

    .line 169
    const-string v9, "changed"

    const-string v10, "true"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :goto_0
    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    if-eqz v9, :cond_0

    .line 175
    const-string v9, "changed"

    const-string v10, "true"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_0
    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_1

    .line 182
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_powersaving_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    move v1, v7

    .line 192
    .local v1, "desiredState":Z
    :goto_2
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "powersaving_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 196
    .local v6, "powersaving_switch":I
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    .line 197
    .local v5, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAutoEnable()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    if-ne v8, v7, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    if-eq v8, v1, :cond_4

    .line 201
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isInVoLTECall()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnCall()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnChatonCall()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 202
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "Intent":Landroid/content/Intent;
    const-string v8, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string v8, "limit_bgdata"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v8, "data"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 208
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v9, 0x7f0a1dbc

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 214
    :goto_3
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    .end local v0    # "Intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    return-void

    .line 171
    .end local v1    # "desiredState":Z
    .end local v5    # "mPolicyManager":Landroid/net/NetworkPolicyManager;
    .end local v6    # "powersaving_switch":I
    :cond_5
    const-string v9, "changed"

    const-string v10, "false"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "PowerSavingEnabler2014"

    const-string v10, "no BroadcastReceiver to be unregistered"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    move v1, v8

    .line 191
    goto/16 :goto_2

    .line 211
    .restart local v0    # "Intent":Landroid/content/Intent;
    .restart local v1    # "desiredState":Z
    .restart local v5    # "mPolicyManager":Landroid/net/NetworkPolicyManager;
    .restart local v6    # "powersaving_switch":I
    :cond_7
    iget-object v8, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v9, 0x7f0a1dbd

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 216
    .end local v0    # "Intent":Landroid/content/Intent;
    :cond_8
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v7, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    const-string v7, "BgDataChanged"

    const-string v8, "LimitData"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v7, "limit_bgdata"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const/high16 v7, 0x10800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public refresh_SwitchPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, "powersavingState":I
    if-ne v0, v3, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 245
    :goto_0
    const-string v1, "PowerSavingEnabler2014"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersaving_switch ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    .line 120
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "isLowLevel"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    .line 123
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "powersaving_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "powersavingState":I
    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "resume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "mSwitch == null"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "mSwitchPref == null"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    .line 128
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_powersaving_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    .line 129
    if-ne v0, v2, :cond_7

    .line 130
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 138
    :cond_3
    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void

    :cond_6
    move v1, v3

    .line 128
    goto :goto_0

    .line 140
    :cond_7
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_8

    .line 141
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 143
    :cond_8
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
