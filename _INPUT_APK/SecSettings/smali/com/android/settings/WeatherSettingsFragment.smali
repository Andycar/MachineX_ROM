.class public Lcom/android/settings/WeatherSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WeatherSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;


# static fields
.field public static mAutoRefresh:I

.field public static mTempScale:I

.field public static pAppAutoRefresh:Landroid/preference/ListPreference;

.field public static pAppCurrentLocation:Landroid/preference/Preference;

.field public static pAppInfo:Landroid/preference/Preference;

.field public static pAppTempScale:Landroid/preference/ListPreference;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mFromSView:Z

.field private mGuidePopupIgnore:Z

.field private mRefereshFlags:Z

.field private mSwitchView:Landroid/widget/Switch;

.field public mTargetDB:Ljava/lang/String;

.field private mWeatherAgreed:Z

.field private mWeatherEnabled:Z

.field private mode:I

.field private refreshItems:[Ljava/lang/String;

.field private refreshItemsValue:[Ljava/lang/String;

.field private refreshTimes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    .line 44
    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    .line 46
    const-string v0, "lock_additional_weather"

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItemsValue:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshTimes:[I

    .line 66
    iput-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x6
        0xc
        0x18
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/WeatherSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WeatherSettingsFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->refreshSummaryAndSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/WeatherSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WeatherSettingsFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->saveWeatherSharedPreferences()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/WeatherSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WeatherSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/WeatherSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WeatherSettingsFragment;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/WeatherSettingsFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WeatherSettingsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    return-object v0
.end method

.method private checkWeatherGuidePopupAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "doNotShow":Z
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.LockShowInfoSettings.Weather"

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 555
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 556
    const-string v4, "DoNotShowDialog"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 557
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private getAutoRefreshTime(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 383
    const/4 v7, 0x3

    .line 384
    .local v7, "refreshtime":I
    if-nez p1, :cond_0

    move v8, v7

    .line 401
    .end local v7    # "refreshtime":I
    .local v8, "refreshtime":I
    :goto_0
    return v8

    .line 387
    .end local v8    # "refreshtime":I
    .restart local v7    # "refreshtime":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 390
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 393
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 394
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 397
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v8, v7

    .line 401
    .end local v7    # "refreshtime":I
    .restart local v8    # "refreshtime":I
    goto :goto_0
.end method

.method private getTempScale(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 360
    const/4 v7, 0x0

    .line 361
    .local v7, "tempscale":I
    if-nez p1, :cond_0

    move v8, v7

    .line 378
    .end local v7    # "tempscale":I
    .local v8, "tempscale":I
    :goto_0
    return v8

    .line 364
    .end local v8    # "tempscale":I
    .restart local v7    # "tempscale":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 367
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 374
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v8, v7

    .line 378
    .end local v7    # "tempscale":I
    .restart local v8    # "tempscale":I
    goto :goto_0
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 405
    const/4 v8, 0x0

    .line 407
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 427
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 410
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 412
    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 424
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v9, v8

    .line 427
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 420
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "infotext"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppInfo:Landroid/preference/Preference;

    .line 264
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppInfo:Landroid/preference/Preference;

    const v1, 0x7f0a0fee

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    const-string v0, "unit"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    .line 267
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->getTempScale(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    .line 271
    const-string v0, "autorefresh"

    invoke-virtual {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    sput-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    .line 272
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WeatherSettingsFragment;->getAutoRefreshTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    .line 275
    return-void
.end method

.method private refreshSummaryAndSwitch()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    .line 148
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read mWeather : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    if-eqz v0, :cond_4

    .line 151
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    const v3, 0x7f0a0ffc

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-ne v0, v1, :cond_1

    .line 165
    iput-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->invalidate()V

    .line 169
    return-void

    :cond_2
    move v0, v2

    .line 145
    goto :goto_0

    :cond_3
    move v0, v2

    .line 146
    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    .line 156
    :cond_5
    sget-object v0, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    const v3, 0x7f0a0ffd

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private saveWeatherSharedPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.LockShowInfoSettings.Weather"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 563
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    return-void
.end method

.method private setEntries()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 281
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "setEntries"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/String;

    const v3, 0x7f0a0ff2

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0a0ff1

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 288
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v1, :cond_7

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshTimes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 295
    if-nez v0, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff3

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 293
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    if-ne v0, v4, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff4

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 299
    :cond_2
    if-ne v0, v5, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff5

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 301
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 302
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff6

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 303
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 304
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff7

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 306
    :cond_5
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f0a0ff8

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 310
    :cond_6
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 311
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->refreshItemsValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 314
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private showWeatherGuidePopup(Z)V
    .locals 7
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 570
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 573
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040085

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 574
    .local v3, "layout":Landroid/view/View;
    const v5, 0x7f100169

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 575
    .local v4, "message":Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 576
    const v5, 0x7f0a0fdb

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :goto_0
    const v5, 0x7f10016a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 580
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 582
    const v5, 0x7f0a0fd5

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 584
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/WeatherSettingsFragment$8;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/WeatherSettingsFragment$8;-><init>(Lcom/android/settings/WeatherSettingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 595
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 596
    return-void

    .line 578
    .end local v1    # "check":Landroid/widget/CheckBox;
    :cond_0
    const v5, 0x7f0a0fdc

    invoke-virtual {p0, v5}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePreferenceSummary()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "updatePreferenceSummary"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 323
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    if-nez v1, :cond_2

    .line 324
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    const v3, 0x7f0a0ff1

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    sget-object v3, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 332
    :cond_0
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 336
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    if-nez v1, :cond_4

    .line 337
    const v1, 0x7f0a0ff3

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "mAutoRefreshValue":Ljava/lang/String;
    :goto_2
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppAutoRefresh:Landroid/preference/ListPreference;

    sget v2, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 354
    .end local v0    # "mAutoRefreshValue":Ljava/lang/String;
    :cond_1
    return-void

    .line 326
    :cond_2
    sget-object v1, Lcom/android/settings/WeatherSettingsFragment;->pAppTempScale:Landroid/preference/ListPreference;

    const v3, 0x7f0a0ff2

    invoke-virtual {p0, v3}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 329
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 338
    :cond_4
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    if-ne v1, v2, :cond_5

    .line 339
    const v1, 0x7f0a0ff4

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mAutoRefreshValue":Ljava/lang/String;
    goto :goto_2

    .line 340
    .end local v0    # "mAutoRefreshValue":Ljava/lang/String;
    :cond_5
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 341
    const v1, 0x7f0a0ff5

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mAutoRefreshValue":Ljava/lang/String;
    goto :goto_2

    .line 342
    .end local v0    # "mAutoRefreshValue":Ljava/lang/String;
    :cond_6
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 343
    const v1, 0x7f0a0ff6

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mAutoRefreshValue":Ljava/lang/String;
    goto :goto_2

    .line 344
    .end local v0    # "mAutoRefreshValue":Ljava/lang/String;
    :cond_7
    sget v1, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 345
    const v1, 0x7f0a0ff7

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mAutoRefreshValue":Ljava/lang/String;
    goto :goto_2

    .line 347
    .end local v0    # "mAutoRefreshValue":Ljava/lang/String;
    :cond_8
    const v1, 0x7f0a0ff8

    invoke-virtual {p0, v1}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mAutoRefreshValue":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public checkLocationAavilability()V
    .locals 8

    .prologue
    const v7, 0x7f0a0ad5

    const/4 v6, 0x1

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_providers_allowed"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "locationMode":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLocationAavilability locationMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0ffe

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0fff

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01d1

    new-instance v5, Lcom/android/settings/WeatherSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings/WeatherSettingsFragment$4;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$3;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$2;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 482
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 549
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0,network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 489
    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a1000

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1001

    invoke-virtual {p0, v4}, Lcom/android/settings/WeatherSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a1002

    new-instance v5, Lcom/android/settings/WeatherSettingsFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/WeatherSettingsFragment$7;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$6;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/WeatherSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/WeatherSettingsFragment$5;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 532
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 536
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/WeatherSettingsFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 538
    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "Write AGREEMENT : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "AGREEMENT"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    const/16 v1, 0x7d1

    if-ne p1, v1, :cond_0

    .line 74
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mode:I

    .line 78
    iget v1, p0, Lcom/android/settings/WeatherSettingsFragment;->mode:I

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherdaemon.action.SHOW_USE_LOCATION_POPUP_CHANGE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AGREEMENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->onPositiveClick()V

    .line 84
    iput-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 174
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChanged isChecked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->checkWeatherGuidePopupAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    if-nez v2, :cond_1

    .line 179
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    .line 180
    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->showWeatherGuidePopup(Z)V

    .line 203
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mGuidePopupIgnore:Z

    .line 204
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    return-void

    :cond_0
    move v2, v4

    .line 179
    goto :goto_0

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherAgreed:Z

    if-nez v2, :cond_2

    .line 182
    const/4 p2, 0x0

    .line 183
    iput-boolean p2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    .line 185
    new-instance v0, Lcom/android/settings/CurrentLocationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/CurrentLocationDialogFragment;-><init>()V

    .line 186
    .local v0, "dialog":Lcom/android/settings/CurrentLocationDialogFragment;
    invoke-virtual {v0, p0}, Lcom/android/settings/CurrentLocationDialogFragment;->setDialogFragmentListener(Lcom/android/settings/CurrentLocationDialogFragment$DialogFragmentListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/CurrentLocationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v0    # "dialog":Lcom/android/settings/CurrentLocationDialogFragment;
    :cond_2
    iput-boolean p2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    .line 191
    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    if-ne v2, v3, :cond_3

    .line 192
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChanged SView - Weather : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    .line 200
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_show_info"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v1, v3

    .line 196
    .local v1, "mIsMaster":Z
    :goto_4
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckedChanged LockScreen - Weather : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Master : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move v2, v3

    :goto_5
    invoke-static {v5, v2}, Lcom/android/settings/Utils;->sendLockScreenWeatherIntent(Landroid/content/Context;Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/WeatherSettingsFragment;->mWeatherEnabled:Z

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V

    goto :goto_2

    .end local v1    # "mIsMaster":Z
    :cond_4
    move v1, v4

    .line 195
    goto :goto_4

    .restart local v1    # "mIsMaster":Z
    :cond_5
    move v2, v4

    .line 197
    goto :goto_5

    .end local v1    # "mIsMaster":Z
    :cond_6
    move v2, v4

    .line 200
    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const v2, 0x7f040244

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sview"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    .line 100
    iget-boolean v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 101
    const-string v2, "weather_cover"

    iput-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called from SView Settings : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mFromSView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Target DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WeatherSettingsFragment;->mTargetDB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->init()V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->setEntries()V

    .line 109
    const-string v2, "currentlocation"

    invoke-virtual {p0, v2}, Lcom/android/settings/WeatherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    sput-object v2, Lcom/android/settings/WeatherSettingsFragment;->pAppCurrentLocation:Landroid/preference/Preference;

    .line 111
    new-instance v2, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 117
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 125
    .end local v1    # "padding":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveClick()V
    .locals 4

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onPositiveClick()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->checkLocationAavilability()V

    .line 436
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 437
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/WeatherSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/WeatherSettingsFragment$1;-><init>(Lcom/android/settings/WeatherSettingsFragment;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "onPreferenceChange"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "unit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 229
    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v3

    .line 233
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 234
    .local v1, "result":I
    :goto_1
    sput v1, Lcom/android/settings/WeatherSettingsFragment;->mTempScale:I

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weatherdaemon.action.UNIT_CHANGE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TEMPSCALE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    .line 243
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "result":I
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "autorefresh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weatherdaemon.action.AUTOREFRESH_CHANGE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "AUTOREFRESH"

    sget v4, Lcom/android/settings/WeatherSettingsFragment;->mAutoRefresh:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/WeatherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_3
    move v1, v3

    .line 233
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/WeatherSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->refreshSummaryAndSwitch()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WeatherSettingsFragment;->mRefereshFlags:Z

    .line 139
    invoke-direct {p0}, Lcom/android/settings/WeatherSettingsFragment;->updatePreferenceSummary()V

    .line 140
    return-void
.end method
