.class public Lcom/android/settings/safetycare/SafetyCareSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareSettings.java"


# instance fields
.field private EmerContact:Ljava/lang/String;

.field final REQUESTCODE_DISCLAIMER:I

.field private mAddContactsDialog:Landroid/app/AlertDialog;

.field private mAssistance:Landroid/preference/PreferenceScreen;

.field private mAssistantObserver:Landroid/database/ContentObserver;

.field private mCompleteHandler:Landroid/os/Handler;

.field private mDisaster:Landroid/preference/PreferenceScreen;

.field private mDisasterObserver:Landroid/database/ContentObserver;

.field private mEContact:Landroid/preference/PreferenceScreen;

.field private mEmerMode:Landroid/preference/PreferenceScreen;

.field private mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

.field private mGuide:Lcom/android/settings/UnclickablePreference;

.field private mIsATT:Z

.field private mIsNoSIM:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const-string v0, "com.sec.android.app.contacts.action.INTERACTION_EMERGENCY_MESSAGE"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    .line 107
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->REQUESTCODE_DISCLAIMER:I

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsATT:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    .line 122
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$1;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mCompleteHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$2;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/android/settings/safetycare/SafetyCareSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareSettings$3;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsATT:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getGeoNewsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getSamsungAppsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->queryEmergencyContactSize(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/safetycare/SafetyCareSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEmerContact()V
    .locals 2

    .prologue
    .line 645
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/safetycare/SafetyCareSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$8;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 653
    return-void
.end method

.method private getGeoNewsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.GeoLookout"

    const-string v2, "com.sec.android.GeoLookout.activity.DisasterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    return-object v0
.end method

.method private getSamsungAppsIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v1, "directcall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v1, "CallerType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v1, "GUID"

    const-string v2, "com.sec.android.GeoLookout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    return-object v0
.end method

.method private static queryEmergencyContactSize(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 657
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v9, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ICE"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "defaultId"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 663
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v10

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    .line 665
    .local v2, "PROJECTION":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 669
    .local v6, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 670
    if-eqz v6, :cond_1

    .line 671
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 673
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 676
    .end local v8    # "number":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 677
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    if-eqz v6, :cond_0

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 684
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3

    .line 679
    :cond_1
    if-eqz v6, :cond_0

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 679
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_2

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 634
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 635
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 636
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->addPreferencesFromResource(I)V

    .line 231
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsATT:Z

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 236
    .local v10, "root":Landroid/preference/PreferenceScreen;
    const-string v0, "safetycare_guide"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mGuide:Lcom/android/settings/UnclickablePreference;

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsATT:Z

    if-nez v0, :cond_1

    .line 238
    const-string v0, "safetycare_guide"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mGuide:Lcom/android/settings/UnclickablePreference;

    .line 242
    :cond_1
    const-string v0, "lowpower_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmerMode:Landroid/preference/PreferenceScreen;

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.GeoLookout"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 246
    const-string v0, "earthquake_alert"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$4;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    :cond_2
    :goto_0
    const-string v0, "emer_contact"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEContact:Landroid/preference/PreferenceScreen;

    .line 307
    const-string v0, "safety_emaergency_buzzer_jpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    .line 309
    const-string v0, "content://com.sec.knox.provider2/KioskMode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 310
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 311
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 313
    .local v9, "result":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isKioskModeEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const-string v0, "isKioskModeEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    if-eqz v9, :cond_3

    const-string v0, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    const-string v0, "SafetyCareSettings"

    const-string v2, "KIOSKMODE enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmerMode:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.safetyassurance"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 335
    const-string v0, "safety_assistance"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_10

    .line 364
    const-string v0, "safety_emaergency_buzzer_jpn"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 365
    const-string v0, "safety_emaergency_buzzer_jpn"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_6
    const-string v0, "emer_contact_category"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 369
    const-string v0, "emer_contact_category"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_7
    const-string v0, "situation"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 373
    const-string v0, "situation"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->checkEmerContact()V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->setHasOptionsMenu(Z)V

    .line 390
    return-void

    .line 247
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-static {}, Lcom/android/settings/Utils;->isGeoNewsUnsupportedModel()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    :cond_9
    const-string v0, "earthquake_alert"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 258
    const-string v0, "earthquake_alert"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/settings/safetycare/SafetyCareSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$4;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 262
    :cond_b
    :try_start_4
    const-string v0, "earthquake_alert"

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 265
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_c

    .line 266
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/settings/safetycare/SafetyCareSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/safetycare/SafetyCareSettings$4;-><init>(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_c
    throw v0

    .line 322
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "result":Ljava/lang/String;
    :cond_d
    :try_start_5
    const-string v0, "SafetyCareSettings"

    const-string v2, "KIOSKMODE disabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 324
    :catch_1
    move-exception v8

    .line 325
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 327
    if-eqz v6, :cond_4

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 327
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_e

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    .line 337
    :catch_2
    move-exception v7

    .line 338
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "situation"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 339
    const-string v0, "situation"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_f
    const-string v0, "safety_assistance"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 342
    const-string v0, "safety_assistance"

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    .line 377
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 378
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    .line 379
    .local v11, "simState":I
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    if-eqz v11, :cond_11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_8

    .line 382
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    const v1, 0x7f0a16b9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 538
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 539
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 543
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 581
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 547
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 548
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v5, 0xa

    .line 550
    .local v3, "versionCode":I
    if-eq v3, v4, :cond_0

    .line 554
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 559
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "helphub:section"

    const-string v6, "safety_assistance"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 574
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "versionCode":I
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 562
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "versionCode":I
    :cond_1
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 570
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "helphub:appid"

    const-string v6, "safety_assistance"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 576
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "versionCode":I
    :catch_1
    move-exception v0

    .line 577
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 507
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 516
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 520
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEContact:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->EmerContact:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "from_safety_setting"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->startActivity(Landroid/content/Intent;)V

    .line 527
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v7, 0x7f0a1cbe

    const v6, 0x7f0a1cbd

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 460
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 461
    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_1

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "safetycare_earthquake"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 463
    .local v1, "bStatus":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 464
    iget-boolean v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mIsNoSIM:Z

    if-ne v5, v3, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.android.GeoLookout"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_1
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "safetycare_earthquake"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    .end local v1    # "bStatus":Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "send_emergency_message"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v1, v3

    .line 481
    .restart local v1    # "bStatus":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "block_emergency_message"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    move v0, v3

    .line 483
    .local v0, "bIsEnabled":Z
    :goto_4
    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 484
    if-nez v0, :cond_9

    .line 485
    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0a1cda

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 490
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "block_emergency_message"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    .end local v0    # "bIsEnabled":Z
    .end local v1    # "bStatus":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "emergency_buzzer"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v1, v3

    .line 494
    .restart local v1    # "bStatus":Z
    :goto_6
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mEmergencyBuzzerJPN:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_c

    :goto_7
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 497
    .end local v1    # "bStatus":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->queryEmergencyContactSize(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_4

    .line 499
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 500
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAddContactsDialog:Landroid/app/AlertDialog;

    .line 503
    :cond_4
    return-void

    :cond_5
    move v1, v4

    .line 462
    goto/16 :goto_0

    .line 471
    .restart local v1    # "bStatus":Z
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto/16 :goto_1

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    move v5, v7

    .line 474
    goto/16 :goto_2

    .end local v1    # "bStatus":Z
    :cond_7
    move v1, v4

    .line 480
    goto :goto_3

    .restart local v1    # "bStatus":Z
    :cond_8
    move v0, v4

    .line 481
    goto :goto_4

    .line 487
    .restart local v0    # "bIsEnabled":Z
    :cond_9
    iget-object v8, p0, Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;

    if-ne v1, v3, :cond_a

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_a
    move v5, v7

    goto :goto_8

    .end local v0    # "bIsEnabled":Z
    .end local v1    # "bStatus":Z
    :cond_b
    move v1, v4

    .line 493
    goto :goto_6

    .restart local v1    # "bStatus":Z
    :cond_c
    move v6, v7

    .line 494
    goto :goto_7
.end method
