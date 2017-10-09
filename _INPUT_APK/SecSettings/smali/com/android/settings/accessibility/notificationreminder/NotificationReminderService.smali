.class public Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationReminderService.java"


# static fields
.field public static mService:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;


# instance fields
.field private currentNotiList:[Landroid/service/notification/StatusBarNotification;

.field private final mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

.field private notificationAlarmManager:Landroid/app/AlarmManager;

.field private notificationPendingIntent:Landroid/app/PendingIntent;

.field private notificationStubManager:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$1;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$2;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
    .param p1, "x1"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
    .param p1, "x1"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
    .param p1, "x1"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateSoundLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateAlaramRepeating()V

    return-void
.end method

.method private hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z
    .locals 10
    .param p1, "currentNotiList"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 170
    const-string v5, "NotificationReminderService"

    const-string v8, "hasCheckedPacakages"

    invoke-static {v5, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "notification_reminder"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const-string v5, "NotificationReminderService"

    const-string v8, "NotificationReminder ver1 is on"

    invoke-static {v5, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 197
    :goto_0
    return v5

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, "ne":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "NotificationReminderService"

    const-string v8, "this is notification reminder ver1"

    invoke-static {v5, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v4    # "ne":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "notification_reminder_app_list"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "appLists":Ljava/lang/String;
    const-string v5, "NotificationReminderService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appLists : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-nez v0, :cond_1

    move v5, v7

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .local v1, "checkLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 188
    const-string v8, "NotificationReminderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check List : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 192
    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    const-string v5, "NotificationReminderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check List contains : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v2

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 194
    goto/16 :goto_0

    .line 191
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v5, v7

    .line 197
    goto/16 :goto_0
.end method

.method private hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "currentNotiList"    # [Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 201
    const-string v1, "NotificationReminderService"

    const-string v2, "hasClearableItems"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 203
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is clearable item in Notification List :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    .line 208
    :goto_1
    return v1

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "active":[Landroid/service/notification/StatusBarNotification;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationStubManager:Landroid/app/INotificationManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAlaramRepeating()V
    .locals 8

    .prologue
    .line 213
    :try_start_0
    const-string v0, "NotificationReminderService"

    const-string v1, "setRepeating"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_key"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_key"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v7

    .line 221
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateLedFlashLocked(Z)V
    .locals 3
    .param p1, "ledOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateSoundLocked()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    .line 226
    const-string v5, "NotificationReminderService"

    const-string v6, " updateSoundLocked "

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 229
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 231
    .local v4, "v":Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 233
    :cond_0
    const-string v5, "NotificationReminderService"

    const-string v6, "Vibrate"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 261
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 239
    .local v3, "notification":Landroid/net/Uri;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 242
    .local v2, "mp1":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 243
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 244
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_vibrate"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 253
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 254
    const-string v5, "NotificationReminderService"

    const-string v6, "Sound"

    invoke-static {v5, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v5, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$3;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService$3;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 85
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationStubManager:Landroid/app/INotificationManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    .line 92
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "notificationIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 115
    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "packName":Ljava/lang/String;
    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notiifcation posted! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 123
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "packName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    .line 135
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "NotificationReminderService"

    const-string v2, "Still has some RemindableNoti after some notificaions are cleared"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notiifcation removed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 141
    :cond_0
    const-string v1, "NotificationReminderService"

    const-string v2, "turn off flash as there is no remindable notifications"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 100
    sput-object p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mService:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderService;->updateAlaramRepeating()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
