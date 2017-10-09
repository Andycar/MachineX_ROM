.class public Lcom/android/settings/notification/ZenModeAllowException;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeAllowException.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;,
        Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mCalls:Landroid/preference/CheckBoxPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/CheckBoxPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

.field private mStarred:Lcom/android/settings/notification/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAllowException$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    .line 417
    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$11;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAllowException$11;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAllowException;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    .line 510
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeAllowException;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/ZenModeAllowException;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeAllowException;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAllowException;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/notification/ZenModeAllowException;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeAllowException;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAllowException;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 180
    .local v1, "root":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 183
    :cond_0
    const v3, 0x7f070105

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->addPreferencesFromResource(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 186
    sget-object v3, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    invoke-virtual {v3, p0}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v2

    .line 187
    .local v2, "zenMode":Landroid/preference/Preference;
    sget-object v3, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$2;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->setCallback(Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback$Callback;)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    const v3, 0x7f0a0f25

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 199
    :cond_1
    const-string v3, "important"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 202
    .local v0, "important":Landroid/preference/PreferenceCategory;
    const-string v3, "phone_calls"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    .line 203
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$3;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$3;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    :goto_0
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/CheckBoxPreference;

    .line 222
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$4;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$4;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    const-string v3, "starred"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    .line 236
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0f5d

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0f5f

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    const v4, 0x7f0a0f5e

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$5;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$5;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    const-string v3, "events"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/CheckBoxPreference;

    .line 255
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$6;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$6;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    const-string v3, "zen_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->removePreference(Ljava/lang/String;)V

    .line 270
    const-string v3, "alarm_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 271
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeAllowException$7;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeAllowException$7;-><init>(Lcom/android/settings/notification/ZenModeAllowException;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0a105b

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 285
    const-string v3, "app_notifications"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeAllowException;->removePreference(Ljava/lang/String;)V

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    .line 290
    return-object v1

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 335
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 338
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 341
    :goto_0
    return-object v2

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 346
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 349
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 350
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 351
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 352
    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    .line 295
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V

    .line 302
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateEnable()V

    .line 307
    return-void

    :cond_1
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 311
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 328
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 330
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 412
    sget-object v0, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    .line 414
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDisableListeners:Z

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dnd_allowexception"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateZenMode()V

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateEnable()V

    .line 548
    :cond_0
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    .line 155
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mPM:Landroid/content/pm/PackageManager;

    .line 157
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 158
    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    .line 162
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 164
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarLayout:Landroid/view/View;

    .line 173
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dnd_allowexception"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->unregister()V

    .line 324
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateControls()V

    .line 317
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mSettingsObserver:Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAllowException$SettingsObserver;->register()V

    .line 318
    return-void
.end method

.method protected putZenModeSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1, "newSettingsValue"    # I

    .prologue
    .line 377
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 408
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v3, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 381
    .local v3, "zenModeConditionSelection":Lcom/android/settings/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/android/settings/notification/ZenModeAllowException$8;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/ZenModeAllowException$8;-><init>(Lcom/android/settings/notification/ZenModeAllowException;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    .line 388
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 389
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 390
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 391
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/notification/ZenModeAllowException;->PREF_ZEN_MODE:Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings/notification/ZenModeAllowException$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d4

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a01d2

    new-instance v6, Lcom/android/settings/notification/ZenModeAllowException$10;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/ZenModeAllowException$10;-><init>(Lcom/android/settings/notification/ZenModeAllowException;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/notification/ZenModeAllowException$9;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/notification/ZenModeAllowException$9;-><init>(Lcom/android/settings/notification/ZenModeAllowException;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    .line 407
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAllowException;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public updateEnable()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dnd_allowexception"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 563
    .local v0, "mAllowExcept":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mMessages:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mStarred:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mEvents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAllowException;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 570
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAllowException;->updateStarredEnabled()V

    .line 571
    :cond_2
    return-void
.end method

.method public updateZenMode()V
    .locals 3

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAllowException;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAllowException;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAllowException;->putZenModeSetting(I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAllowException;->putZenModeSetting(I)V

    goto :goto_0
.end method
