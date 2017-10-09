.class public Lcom/android/settings/wifi/WfcReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfcReceiver.java"


# instance fields
.field private isKnoxUser:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WfcReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WfcReceiver;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/wifi/WfcReceiver;->updateVoWifiIfNeeded()V

    return-void
.end method

.method private addVoWifiApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "nameList"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/settings/wifi/WfcReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "appList":Ljava/lang/String;
    const-string v2, "VoWiFi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VoWiFi;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private handleVoWifi()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WfcReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WfcReceiver$1;-><init>(Lcom/android/settings/wifi/WfcReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method private removeVoWifiApp(Ljava/lang/String;)V
    .locals 9
    .param p1, "nameList"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v7, p0, Lcom/android/settings/wifi/WfcReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "oldAppList":Ljava/lang/String;
    const-string v7, "VoWiFi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v5, ""

    .line 76
    .local v5, "newAppList":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 77
    .local v0, "app":Ljava/lang/String;
    const-string v7, "VoWiFi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "app":Ljava/lang/String;
    :cond_2
    invoke-static {v2, p1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private updateVoWifiIfNeeded()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WfcReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "appState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WfcReceiver;->isKnoxUser:Z

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    const-string v1, "notification_panel_active_app_list_for_reset"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WfcReceiver;->removeVoWifiApp(Ljava/lang/String;)V

    .line 59
    const-string v1, "notification_panel_active_app_list"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WfcReceiver;->removeVoWifiApp(Ljava/lang/String;)V

    .line 67
    .end local v0    # "appState":I
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v0    # "appState":I
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WfcReceiver;->isKnoxUser:Z

    if-nez v1, :cond_1

    .line 61
    const-string v1, "notification_panel_active_app_list_for_reset"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WfcReceiver;->addVoWifiApp(Ljava/lang/String;)V

    .line 62
    const-string v1, "notification_panel_active_app_list"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WfcReceiver;->addVoWifiApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 23
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WfcReceiver"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v6, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 44
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    iput-object p1, p0, Lcom/android/settings/wifi/WfcReceiver;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/WfcReceiver;->isKnoxUser:Z

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 37
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "com.oem.smartwifisupport"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/WfcReceiver;->handleVoWifi()V

    goto :goto_0

    .line 33
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 41
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WfcReceiver;->handleVoWifi()V

    goto :goto_0
.end method
