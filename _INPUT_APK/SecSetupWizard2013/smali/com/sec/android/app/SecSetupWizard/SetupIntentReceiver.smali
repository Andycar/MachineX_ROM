.class public Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetupIntentReceiver.java"


# static fields
.field private static mTimeSet:Z

.field private static mTimeZoneSet:Z


# instance fields
.field private log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 37
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/LogMsg;

    invoke-direct {v0}, Lcom/sec/android/app/SecSetupWizard/LogMsg;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    return-void
.end method


# virtual methods
.method public isSkipDateAndTime()V
    .locals 7

    .prologue
    .line 110
    sget-boolean v3, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mTimeSet:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mTimeZoneSet:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 111
    .local v1, "isSet":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v4, "SetupIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date and time setup : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 113
    .local v2, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "isSkipDateTime"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void

    .line 110
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "isSet":Z
    .end local v2    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "actStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 44
    .local v11, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mContext:Landroid/content/Context;

    .line 46
    const-string v13, "SetupIntentReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v13, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 48
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v14, "SetupIntentReceiver"

    const-string v15, "NETWORK_SET_TIME"

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mTimeSet:Z

    .line 106
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->isSkipDateAndTime()V

    .line 107
    return-void

    .line 50
    :cond_1
    const-string v13, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 51
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v14, "SetupIntentReceiver"

    const-string v15, "NETWORK_SET_TIMEZONE"

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mTimeZoneSet:Z

    goto :goto_0

    .line 53
    :cond_2
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 54
    const-string v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 55
    .local v12, "simStateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v14, "SetupIntentReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SIM_STATE_CHANGED : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v12    # "simStateStr":Ljava/lang/String;
    :cond_3
    const-string v13, "com.sec.android.nfc.NFCSERVICE_STARTED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 62
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 63
    .local v8, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 64
    .local v5, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v13, "NFCSERVICE_STARTED_INT"

    const/4 v14, 0x1

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    const-string v13, "LANGUAGE"

    const-string v14, "persist.sys.setupwizard"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "persist.sys.setupwizard"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 69
    :cond_4
    const-string v13, "SetupIntentReceiver"

    const-string v14, "turnOnNfc"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOnNfc(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v13, "SetupIntentReceiver"

    const-string v14, "turnOffNfc"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/SecSetupWizard/Utils;->turnOffNfc(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 75
    .end local v5    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_6
    const-string v13, "com.google.android.setupwizard.SETUP_WIZARD_FINISHED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 76
    const-string v13, "ro.product.name"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "google"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/SecSetupWizard/SetupIntentReceiver;->log:Lcom/sec/android/app/SecSetupWizard/LogMsg;

    const-string v14, "SetupIntentReceiver"

    const-string v15, "google b2b device and google setupwizard finish intent is received so finish setupwizard"

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/SecSetupWizard/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "device_provisioned"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    const-string v13, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 80
    .local v9, "mStatusBarManager":Landroid/app/StatusBarManager;
    if-eqz v9, :cond_7

    .line 81
    const-string v13, "SetupIntentReceiver"

    const-string v14, "enableNotifications"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/app/StatusBarManager;->disable(I)V

    .line 84
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/SecSetupWizard/Utils;->updateLastSetupShown(Landroid/content/Context;)V

    .line 85
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v6, "intent1":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v7, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    const-string v13, "persist.sys.setupwizard"

    const-string v14, "FINISH"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 91
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v13, Lcom/sec/android/app/SecSetupWizard/SecSetupWizardActivity;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v4, "cn":Landroid/content/ComponentName;
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v10, v4, v13, v14}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 95
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v6    # "intent1":Landroid/content/Intent;
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v9    # "mStatusBarManager":Landroid/app/StatusBarManager;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 98
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 99
    .local v3, "build_model":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v13, "SHV-E250"

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "user_setup_complete"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    const-string v13, "SetupIntentReceiver"

    const-string v14, "set user_setup_complete to 1"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
