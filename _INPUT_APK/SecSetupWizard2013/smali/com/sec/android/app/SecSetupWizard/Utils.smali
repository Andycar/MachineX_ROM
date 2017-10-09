.class public Lcom/sec/android/app/SecSetupWizard/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DBG:Z

.field private static SEUPWIZARD_ACTIVITY:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final isMultiSim:Z

.field private static log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private static mFeatureChecked:Z

.field private static mFeatureEnabled:Z

.field private static mIsNfcServiceStarted:Z

.field private static mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private static nfc_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->DBG:Z

    .line 83
    const-string v0, "Utils"

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v0}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 88
    sput v1, Lcom/sec/android/app/SecSetupWizard/Utils;->nfc_state:I

    .line 89
    sput-boolean v2, Lcom/sec/android/app/SecSetupWizard/Utils;->mIsNfcServiceStarted:Z

    .line 92
    sput-boolean v2, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureChecked:Z

    .line 93
    sput-boolean v2, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureEnabled:Z

    .line 94
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultiSim:Z

    .line 96
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "language_setup"

    aput-object v3, v0, v2

    const-string v2, "welcome"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sim_missing"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_connection"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "background_traffic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "terms_and_condition"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "device_name_setup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "video_intro"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "google_location_setup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/SecSetupWizard/Utils;->SEUPWIZARD_ACTIVITY:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v0, v2

    .line 94
    goto :goto_1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 537
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 539
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 540
    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 541
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_0

    .line 548
    :cond_0
    if-eqz p0, :cond_1

    .line 549
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 551
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 544
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 545
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    if-eqz p0, :cond_1

    .line 549
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 551
    :catch_2
    move-exception v1

    .line 552
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 548
    if-eqz p0, :cond_2

    .line 549
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 553
    :cond_2
    :goto_2
    throw v3

    .line 551
    :catch_3
    move-exception v1

    .line 552
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 577
    .local v2, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 578
    .local v0, "accountArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 579
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 581
    :cond_0
    return-object v1
.end method

.method public static getAccountID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-static {p0, p1}, Lcom/sec/android/app/SecSetupWizard/Utils;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "accountEmail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 591
    .local v1, "accountID":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 592
    return-object v1
.end method

.method public static getEulaVersion(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 647
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EulaVersion"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "eulaVersionStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 650
    .local v0, "eulaVersion":I
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 651
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 653
    :cond_0
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEulaVersion : eulaVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return v0
.end method

.method public static getLteOnCdmaMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 477
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 478
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method public static getPrefCompleteRLSetup(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1009
    const-string v1, "setupwizard_pref"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1010
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "Complete_RLSetup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 873
    const-string v2, ""

    .line 874
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 876
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 877
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 879
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 880
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 882
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getStringFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v3, ""

    .line 517
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 518
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 520
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 521
    invoke-static {v2}, Lcom/sec/android/app/SecSetupWizard/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 526
    if-eqz v2, :cond_0

    .line 527
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-object v3

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    if-eqz v2, :cond_0

    .line 527
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 529
    :catch_2
    move-exception v1

    .line 530
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 526
    if-eqz v2, :cond_1

    .line 527
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 531
    :cond_1
    :goto_1
    throw v4

    .line 529
    :catch_3
    move-exception v1

    .line 530
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getUserNameFromContactsApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 597
    const/4 v7, 0x0

    .line 599
    .local v7, "userName":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const/4 v0, 0x1

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "lookup"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "photo_thumb_uri"

    aput-object v1, v2, v0

    .line 605
    .local v2, "mProjection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    .local v6, "contact":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 610
    :cond_0
    if-eqz v6, :cond_1

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    if-le v0, v1, :cond_2

    .line 616
    const/16 v0, 0x1b

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 619
    :cond_2
    sget-object v0, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-object v7
.end method

.method public static has7StepsLargeFontScale()F
    .locals 2

    .prologue
    .line 953
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    const v0, 0x3fb5c28f    # 1.42f

    .line 956
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fa66666    # 1.3f

    goto :goto_0
.end method

.method public static hasAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 567
    .local v0, "accountArray":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 759
    const-class v1, Lcom/sec/android/app/SecSetupWizard/Utils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureChecked:Z

    if-eqz v0, :cond_0

    .line 760
    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_0
    monitor-exit v1

    return v0

    .line 765
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureChecked:Z

    .line 766
    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->mFeatureEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 504
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 506
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 509
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isActivityOfSetupWizard(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "ret":Z
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->SEUPWIZARD_ACTIVITY:[Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_0
    return v0
.end method

.method public static isBlackThemeTablet(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "value":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 909
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlackThemeTablet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return v0
.end method

.method public static isCameraOnlyModel()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCarrierLockEnabled()Z
    .locals 5

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 453
    .local v1, "mCarrierlockMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sms/sktcarrierlockmode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    :goto_0
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKT carrier lock mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v4, "SKT carrier lock mode"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v2, 0x1

    .line 465
    :goto_1
    return v2

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open file : /efs/sms/sktcarrierlockmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v1, "OFF"

    goto :goto_0

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isChinaModel()Z
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDisallowAccount(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 961
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 963
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 964
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 965
    .local v0, "restrictions":Landroid/os/Bundle;
    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 967
    .end local v0    # "restrictions":Landroid/os/Bundle;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    return v2
.end method

.method public static isDomesticModel()Z
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .prologue
    .line 306
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDuosModel(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    const-string v3, "CTC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    const-string v3, "GSM"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 369
    :cond_0
    :goto_0
    return v2

    .line 361
    :cond_1
    const-string v3, "GG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DGG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTCS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    :cond_2
    const-string v3, "CDMA"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 560
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isKKupgradeforEula()Z
    .locals 2

    .prologue
    .line 972
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 973
    .local v0, "build_model":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SM-N750"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SHV-E250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-P600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-P605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-N900A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    const/4 v1, 0x1

    .line 977
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLTE(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 470
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->getLteOnCdmaMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLinkOrangeCloud()Z
    .locals 3

    .prologue
    .line 238
    const-string v0, "OrangeCloud"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SetupwizardLinkToApk"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1030
    const-string v0, "ar"

    .line 1032
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    const-string v3, "fa"

    .line 1034
    .local v3, "ISO639_PERSIAN":Ljava/lang/String;
    const-string v1, "he"

    .line 1037
    .local v1, "ISO639_HEBREW":Ljava/lang/String;
    const-string v2, "iw"

    .line 1039
    .local v2, "ISO639_HEBREW_FORMER":Ljava/lang/String;
    const-string v6, "ji"

    .line 1041
    .local v6, "ISO639_YIDDISH_FORMER":Ljava/lang/String;
    const-string v4, "ur"

    .line 1043
    .local v4, "ISO639_URDU":Ljava/lang/String;
    const-string v5, "yi"

    .line 1044
    .local v5, "ISO639_YIDDISH":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 1045
    .local v7, "iso639":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isMultisimModel()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultiSim:Z

    return v0
.end method

.method public static isNetConnected(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 258
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "isNetConnected :: localConnectivityManager is null"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return v2

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 263
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v4, "isNetConnected :: return : true"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "isNetConnected :: return : false"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNetherlandsModel()Z
    .locals 2

    .prologue
    .line 409
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "country_code":Ljava/lang/String;
    const-string v1, "Netherlands"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "The Netherlands"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNorthAmericaOperator()Z
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ACG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    const/4 v0, 0x1

    .line 400
    :cond_1
    return v0
.end method

.method public static isRemoveSurveyModeModel()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 381
    const-string v3, "canada"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, "canadasmodel":Z
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "mProductName":Ljava/lang/String;
    const-string v3, "tblte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tr3g"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trhlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trelte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tre3g"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "trhplte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tbhplte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "tbelte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    :cond_0
    if-ne v0, v2, :cond_1

    .line 388
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShouldSkipActivity(Ljava/lang/String;)Z
    .locals 9
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 134
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_SkipStepsDuringSamsungSetupWizard"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "skipActivityList":Ljava/lang/String;
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TAG_CSCFEATURE_SETTING_SKIPSTEPSDURINGSAMSUNGSETUPWIZARD : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "skipActivityArray":[Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;

    invoke-direct {v2}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;-><init>()V

    .line 142
    .local v2, "lPackageList":Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;
    const-string v6, "wifi_setup"

    const-string v7, "WifiSettings"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "sec_account_setup"

    const-string v7, "SamsungAccount"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v6, "sec_backup_setup"

    const-string v7, "SamsungBackup"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v6, "google_account_setup"

    const-string v7, "GoogleAccount"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v6, "google_location_setup"

    const-string v7, "GoogleLocation"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v6, "terms_and_condition"

    const-string v7, "EULA"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v6, "sec_easy_signup"

    const-string v7, "SecEasySignUp"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v6, "reactivation_lock_setup"

    const-string v7, "Reactivationlock"

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShouldSkipActivity Before : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2, p0}, Lcom/sec/android/app/SecSetupWizard/SkipPackageSetList;->getFeatureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "lCscFeatureName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p0, v1

    .line 156
    :cond_0
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isShouldSkipActivity After : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_3

    .line 161
    aget-object v6, v3, v0

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This package is skip by CscFeature : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "i":I
    :goto_1
    return v5

    .line 165
    .restart local v0    # "i":I
    :cond_1
    const-string v6, "SecSetupWizard"

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is SecSetupWizard Skip by CSC "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isSimMissing(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 419
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 421
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isCameraOnlyModel()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_DATA_ONLY_MODEL"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v0, v3

    .line 422
    .local v0, "isDataOnly_Sim":Z
    :goto_0
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWifiOnly() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDataOnly_Sim : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLTE(context) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLTE(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v1, 0x0

    .line 427
    .local v1, "isSimMissing":Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v3, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->isLTE(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    :cond_1
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telephonyManager.getPhoneType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telephonyManager.getSimState() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "isSimMissing : true"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x1

    .line 436
    :cond_2
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 438
    const-string v3, "Settings"

    const-string v4, "MultiSimManager isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x1

    .line 445
    :cond_3
    :goto_1
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimMissing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return v1

    .line 421
    .end local v0    # "isDataOnly_Sim":Z
    .end local v1    # "isSimMissing":Z
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 441
    .restart local v0    # "isDataOnly_Sim":Z
    .restart local v1    # "isSimMissing":Z
    :cond_5
    const-string v3, "Settings"

    const-string v4, "MultiSimManager !isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSkipDropBoxModel()Z
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_STEP_SEQUENCE_TYPE"

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "sequenceType":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard SequenceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "skipdropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v2, "isSkipDropBoxModel() floating feature true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportEasyMode30()Z
    .locals 4

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 894
    .local v0, "value":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 898
    :cond_0
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportEasyMode30 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return v0
.end method

.method public static isSupportLMM(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 785
    const/4 v2, 0x0

    .line 788
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 790
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "isSupportLMM : service is not Connected"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportLMM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return v2

    .line 794
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 795
    .local v0, "result":I
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportLMM getServiceSupport : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 804
    :pswitch_1
    const/4 v2, 0x1

    .line 805
    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportSpinnerSelectionColor(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 772
    const/4 v0, 0x0

    .line 774
    .local v0, "value":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 775
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 777
    :cond_1
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportSpinnerSelectionColor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v0
.end method

.method public static isVideoIntroLanguageModel()Z
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_STEP_SEQUENCE_TYPE"

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "sequenceType":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard SequenceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "video_intro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVideoSequenceModel()Z
    .locals 4

    .prologue
    .line 183
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_STEP_SEQUENCE_TYPE"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "sequenceType":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard SequenceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video_intro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    sget-object v1, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v2, "isVideoSequenceModel() floating feature true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 175
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 177
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static readReactivationFlag(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 823
    const/4 v2, 0x0

    .line 825
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 827
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 829
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v5, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v6, "readReactivationFlag : service is not Connected"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_0
    return v3

    .line 833
    :cond_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 834
    .local v0, "flagResult":I
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReactivationFlag getFlag result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 837
    :cond_1
    const/4 v2, 0x1

    .line 843
    :cond_2
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReactivationFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 844
    goto :goto_0
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 277
    const-string v1, ""

    .line 279
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 286
    :cond_0
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v3, "Utils"

    const-string v4, "readSalesCode failed"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static replaceSIMString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 981
    const-string v0, "CTC"

    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 983
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/SecSetupWizard/Utils;->isMultisimModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 984
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 986
    :cond_1
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setPrefCompleteRLSetup(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 1002
    const-string v2, "setupwizard_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1003
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1004
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Complete_RLSetup"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1006
    return-void
.end method

.method public static setReactivationFlag(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 848
    const/4 v0, 0x1

    .line 850
    .local v0, "reactivationFlag":I
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 852
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 855
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "isSupportLMM : service is not Connected"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :goto_0
    return v2

    .line 859
    :cond_0
    if-nez p1, :cond_1

    .line 860
    const/4 v0, 0x0

    .line 862
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/SecSetupWizard/Utils;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 864
    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "setReactivationFlag fail"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 868
    :cond_2
    sget-object v2, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    sget-object v3, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v4, "setReactivationFlag success"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static turnOffNfc(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 702
    const/4 v3, 0x0

    .line 703
    .local v3, "isDefaultOn":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 704
    .local v5, "state_Prefs":Landroid/content/SharedPreferences;
    const-string v6, "isCardReaderOn"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 705
    .local v2, "isCardReaderOn":Z
    const-string v6, "isNFCturnOff"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 708
    .local v4, "isNFCturnOff":Z
    if-eq v4, v9, :cond_0

    sget-boolean v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mIsNfcServiceStarted:Z

    if-nez v6, :cond_2

    .line 709
    :cond_0
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "Nfc was not initialized in turnOffNfc."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    :goto_0
    return-void

    .line 716
    :cond_2
    const-string v6, "ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_DefStatus"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 717
    const/4 v3, 0x1

    .line 725
    :cond_3
    :goto_1
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "turnOffNfc nfc_state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/SecSetupWizard/Utils;->nfc_state:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-ne v3, v9, :cond_4

    sget v6, Lcom/sec/android/app/SecSetupWizard/Utils;->nfc_state:I

    if-eq v6, v11, :cond_4

    if-ne v2, v9, :cond_1

    .line 730
    :cond_4
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v6, :cond_5

    if-eqz p0, :cond_5

    .line 732
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 733
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "NfcAdapter.getNfcAdapter(this) 2"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_5
    :goto_2
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v6, :cond_8

    .line 739
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "mNfcAdapter is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_6
    const-string v6, "OFF"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_DefStatus"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 719
    const/4 v3, 0x0

    goto :goto_1

    .line 721
    :cond_7
    const-string v6, "ON"

    const-string v7, "ON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 722
    const/4 v3, 0x1

    goto :goto_1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "getNfcAdapter not supported. "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 742
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_8
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now_state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget v6, Lcom/sec/android/app/SecSetupWizard/Utils;->nfc_state:I

    if-eq v6, v11, :cond_9

    if-ne v2, v9, :cond_a

    .line 745
    :cond_9
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "mNfcAdapter is readerDisable"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    .line 751
    :goto_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 752
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v6, "isNFCturnOff"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 753
    const-string v6, "NFCSERVICE_STARTED"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 748
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_a
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v7, "mNfcAdapter is disabled"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sget-object v6, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_3
.end method

.method public static turnOnNfc(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 669
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 670
    .local v2, "state_Prefs":Landroid/content/SharedPreferences;
    const-string v4, "isNFCturnOff"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 672
    .local v1, "isNFCturnOff":Z
    if-eq v1, v7, :cond_0

    sget-boolean v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mIsNfcServiceStarted:Z

    if-nez v4, :cond_2

    .line 673
    :cond_0
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "Nfc was not initialized in turnOnNfc."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    :goto_0
    return-void

    .line 676
    :cond_2
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_3

    .line 677
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 678
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "NfcAdapter.getDefaultAdapter(this) 1"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_3
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_4

    .line 681
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "mNfcAdapter is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 683
    :cond_4
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    const-string v5, "mNfcAdapter is enabled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    .line 686
    .local v3, "temp_state":I
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOnNfc temp_state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-ne v3, v7, :cond_5

    .line 688
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 689
    :cond_5
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 690
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 692
    sput v3, Lcom/sec/android/app/SecSetupWizard/Utils;->nfc_state:I

    .line 694
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isCardReaderOn"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static updateLastSetupShown(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 625
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 626
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 627
    .local v3, "setup_ver":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 644
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "setup_ver":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 630
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "setup_ver":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 632
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 635
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_0

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "last_setup_shown"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "setup_ver":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sec/android/app/SecSetupWizard/Utils;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
