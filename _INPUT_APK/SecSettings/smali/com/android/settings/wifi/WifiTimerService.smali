.class public Lcom/android/settings/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;

.field final wifiOffNotificationIcon:I

.field final wifiOnNotificationIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7f0205bc

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOnNotificationIcon:I

    .line 52
    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOffNotificationIcon:I

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTimerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTimerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTimerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiTimerService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelAllAlarms()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    const-string v4, "WifiTimer"

    const-string v5, "cancelAllAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "alarm_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 160
    .local v2, "startPending":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 162
    .local v3, "stopPending":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 163
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 164
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 165
    return-void
.end method

.method private cancelStartAlarms()V
    .locals 6

    .prologue
    .line 168
    const-string v3, "WifiTimer"

    const-string v4, "cancelStartAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "alarm_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 172
    .local v2, "startPending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 173
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 174
    return-void
.end method

.method private cancelStopAlarms()V
    .locals 6

    .prologue
    .line 177
    const-string v3, "WifiTimer"

    const-string v4, "cancelStopAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "alarm_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 181
    .local v2, "stopPending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 182
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 183
    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x1

    .line 250
    const-string v8, "WifiTimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableWifi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ChinaNalSecurity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    .line 254
    .local v4, "isCHNCscEnableWifiWarning":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 256
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    .line 257
    .local v1, "allowWifi":Z
    if-nez v1, :cond_1

    .line 258
    const-string v7, "WifiTimer"

    const-string v8, "Wi-Fi is not allowed (Policy)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "allowWifi":Z
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_1
    return-void

    .line 253
    .end local v4    # "isCHNCscEnableWifiWarning":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 263
    .restart local v4    # "isCHNCscEnableWifiWarning":Z
    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 264
    .local v5, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v7, v8, :cond_2

    if-ne v7, v4, :cond_2

    .line 265
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 266
    .local v6, "msg":Landroid/os/Message;
    const/16 v7, 0x46

    iput v7, v6, Landroid/os/Message;->what:I

    .line 267
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 271
    .end local v6    # "msg":Landroid/os/Message;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    .line 273
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 274
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v7, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 269
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2
.end method

.method private sheduleAllAlarms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_start_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_end_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V

    .line 153
    :goto_1
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStartAlarms()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStopAlarms()V

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .locals 13
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    const/16 v12, 0x138d

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f0205bc

    .line 279
    const-string v5, "WifiTimer"

    const-string v6, "showNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiTimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 281
    .local v1, "mNM":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 284
    new-instance v3, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0a04f6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 287
    .local v3, "wifiOffNotification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 290
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0a04f6

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f0a04f7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 294
    iput v11, v3, Landroid/app/Notification;->flags:I

    .line 295
    iput v10, v3, Landroid/app/Notification;->visibility:I

    .line 296
    invoke-virtual {v1, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    .end local v3    # "wifiOffNotification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 298
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 299
    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0a04f5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 302
    .local v4, "wifiOnNotification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 305
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f0a04f5

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f0a04f7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiTimerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 309
    iput v11, v4, Landroid/app/Notification;->flags:I

    .line 310
    iput v10, v4, Landroid/app/Notification;->visibility:I

    .line 311
    invoke-virtual {v1, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private wifiStartAlarm()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 186
    const-string v7, "WifiTimer"

    const-string v8, "wifiStartAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 189
    .local v2, "cal":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_start_time"

    const-string v9, "19:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "startTime":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v5

    .line 191
    .local v5, "startTimeHour":I
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v6

    .line 192
    .local v6, "startTimeMinute":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 196
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v12}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/16 v7, 0xe

    invoke-virtual {v2, v7, v12}, Ljava/util/Calendar;->set(II)V

    .line 198
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 199
    const-string v7, "WifiTimer"

    const-string v8, "Add one day"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 202
    :cond_0
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SheduledTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3e9

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d1

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 209
    .local v3, "pending":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 210
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v12, v8, v9, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 212
    return-void
.end method

.method private wifiStopAlarm()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 215
    const-string v7, "WifiTimer"

    const-string v8, "wifiStopAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 217
    .local v2, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_end_time"

    const-string v9, "21:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "endTime":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, "endTimeHour":I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, "endTimeMinute":I
    const/16 v7, 0xb

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/16 v7, 0xd

    invoke-virtual {v2, v7, v12}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v7, 0xe

    invoke-virtual {v2, v7, v12}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 227
    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3ea

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d2

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 234
    .local v6, "pending":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 235
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v12, v8, v9, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 237
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    new-instance v1, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiTimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 95
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 74
    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 79
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
