.class public Lcom/android/settings/powersavingmode/PowerSavingModeData;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeData.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/PowerSavingModeData$LimitBackgroundDataTask;
    }
.end annotation


# instance fields
.field private CheckedAppList:Ljava/lang/String;

.field private SavedApplist:Ljava/lang/String;

.field private data_app:Landroid/preference/PreferenceCategory;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataPowerSaving:Landroid/preference/PreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPowerSaving2014Observer:Landroid/database/ContentObserver;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mTempApp_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTempApplist_label:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->SavedApplist:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->CheckedAppList:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist_Package:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mAppList:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApplist_label:Ljava/util/LinkedHashMap;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApp_List:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeData;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 461
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 462
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 465
    const/4 v3, -0x1

    goto :goto_0
.end method

.method initswitchBtn()V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;

    .line 264
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 265
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 284
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 473
    .local v3, "powersavingState":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 474
    .local v0, "basic_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 475
    .local v2, "data_powersaving":I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 477
    .local v1, "black_grey_powersaving":I
    const-string v5, "PowerSavingMode2014"

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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 479
    .local v4, "retVal":Z
    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    const-string v1, "PowerSavingMode2014"

    const-string v2, "onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 248
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    const-string v1, "BgDataChanged"

    const-string v2, "LimitData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    if-eqz p2, :cond_1

    .line 253
    const-string v1, "limit_bgdata"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    :goto_1
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void

    .line 231
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_powersaving_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 255
    .restart local v0    # "mIntent":Landroid/content/Intent;
    :cond_1
    const-string v1, "limit_bgdata"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v5, 0x7f07009f

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 133
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    .line 134
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;

    .line 136
    const-string v5, "data_powersaving"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    .line 137
    const-string v5, "data_apps"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    .line 139
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;

    invoke-direct {v6, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPm:Landroid/content/pm/PackageManager;

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "LauncherIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApplist_label:Ljava/util/LinkedHashMap;

    .line 156
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mAppList:Ljava/util/List;

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 159
    .local v4, "mAppinfo":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "mAppLabel":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApplist_label:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "mAppLabel":Ljava/lang/String;
    .end local v4    # "mAppinfo":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->initswitchBtn()V

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "power_saving_data_allowed_apps"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->SavedApplist:Ljava/lang/String;

    .line 169
    const-string v4, "PowerSavingMode2014"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_POWER_SAVING_DATA_SERVICE_APPS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->SavedApplist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->SavedApplist:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    .line 176
    :goto_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    array-length v3, v4

    .line 177
    .local v3, "mSavedAppsNums":I
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 179
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist_Package:[Ljava/lang/String;

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 181
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist_Package:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v4, v1

    .line 182
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "App_preference":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApplist_label:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "App_preference":Landroid/preference/Preference;
    .end local v1    # "i":I
    .end local v3    # "mSavedAppsNums":I
    :cond_0
    const-string v4, ""

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    goto :goto_0

    .line 189
    .restart local v1    # "i":I
    .restart local v3    # "mSavedAppsNums":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "power_saving_data_allowed_apps"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->CheckedAppList:Ljava/lang/String;

    .line 191
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->CheckedAppList:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->CheckedAppList:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    .line 196
    :goto_2
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    array-length v3, v4

    .line 198
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist_Package:[Ljava/lang/String;

    .line 199
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 201
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mTempApp_List:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 194
    :cond_2
    const-string v4, ""

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mSavedApplist:[Ljava/lang/String;

    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "data_powersaving_mode"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v5

    .line 204
    .local v2, "isDataPowersaving_enabled":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 205
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 206
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "powersaving_switch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mPowerSaving2014Observer:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method

.method public setUidAllowedForData([Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appList"    # [Ljava/lang/String;
    .param p2, "set"    # Z

    .prologue
    .line 437
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 439
    .local v2, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 440
    const-string v3, "PowerSavingMode2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AllowedForData getUid(appList[i])="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Applist is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz p2, :cond_0

    .line 443
    :try_start_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V

    .line 439
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 453
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method
