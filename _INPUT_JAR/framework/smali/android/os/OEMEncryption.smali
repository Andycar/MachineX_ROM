.class public Landroid/os/OEMEncryption;
.super Ljava/lang/Object;
.source "OEMEncryption.java"


# static fields
.field private static final ACTION_CANCEL:I = 0x1

.field private static final ACTION_NOTIFY:I = 0x0

.field private static final EXTERNAL_SD_CARD_PATH:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field private static final SD_ENC_NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OEMEncryption"

.field private static mSelf:Landroid/os/OEMEncryption;


# instance fields
.field private EXTERNAL_SD_STATE:Ljava/lang/String;

.field private dem:Landroid/dirEncryption/DirEncryptionManager;

.field private filter:Landroid/content/IntentFilter;

.field private final handler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSDPolicy:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

.field private m_dem_3lm:Landroid/os/IDeviceManager3LM;

.field private notification:Landroid/app/Notification;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 36
    iput-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    .line 38
    iput-object v1, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    .line 39
    iput-object v1, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/os/OEMEncryption$1;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$1;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    .line 135
    new-instance v0, Landroid/os/OEMEncryption$2;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$2;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 181
    new-instance v0, Landroid/os/OEMEncryption$3;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$3;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 78
    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    .line 80
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    .line 82
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 83
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    .line 85
    iget-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    const-string v1, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.action.3LM_NFC_FRCRESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 89
    const-string/jumbo v0, "removed"

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/os/OEMEncryption;)Landroid/app/Notification;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/OEMEncryption;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/OEMEncryption;)Landroid/dirEncryption/DirEncryptionManager;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/OEMEncryption;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/OEMEncryption;)Z
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method static synthetic access$600(Landroid/os/OEMEncryption;)Landroid/os/IDeviceManager3LM;
    .registers 2
    .param p0, "x0"    # Landroid/os/OEMEncryption;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/os/OEMEncryption;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v1, Landroid/os/OEMEncryption;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    if-nez v0, :cond_e

    .line 70
    new-instance v0, Landroid/os/OEMEncryption;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    .line 72
    :cond_e
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkSdEncrypted()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 104
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 105
    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 110
    :cond_12
    :goto_12
    return v1

    .line 108
    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 93
    const-string v0, "OEMEncryption"

    const-string v1, "clear called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 95
    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method public getSDPolicy()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method public isCurrentSDCardEncrypted()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 119
    const/4 v1, 0x0

    .line 122
    .local v1, "sd_state":Z
    :try_start_2
    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I

    move-result v3

    if-ne v3, v2, :cond_20

    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 124
    iget-object v3, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    invoke-virtual {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_3b

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_39

    const/4 v1, 0x0

    .line 129
    :cond_20
    :goto_20
    const-string v2, "OEMEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encryption state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1

    :cond_39
    move v1, v2

    .line 124
    goto :goto_20

    .line 126
    :catch_3b
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OEMEncryption"

    const-string v3, "Remote exception caught in check encryption status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setSDEncryptionPolicy(Z)V
    .registers 16
    .param p1, "policy"    # Z

    .prologue
    const v13, 0x1040811

    const/4 v12, 0x0

    .line 215
    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSDEncryptionPolicy called with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean p1, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 220
    if-nez p1, :cond_28

    .line 221
    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    :cond_27
    :goto_27
    return-void

    .line 226
    :cond_28
    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 227
    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because current SD card is already encrypted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 231
    :cond_36
    iget-object v5, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 232
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v6, "unmounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string/jumbo v6, "removed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "bad_removal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 234
    :cond_52
    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because there is no SD card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 239
    :cond_5a
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v6, :cond_27

    .line 242
    if-eqz p1, :cond_81

    .line 244
    :try_start_60
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-interface {v6, v7, v8, v9}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I

    move-result v4

    .line 247
    .local v4, "result":I
    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_81} :catch_c9

    .line 253
    .end local v4    # "result":I
    :cond_81
    :goto_81
    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 255
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "encryptIntent":Landroid/content/Intent;
    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const/high16 v7, 0x10000000

    invoke-static {v6, v12, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 259
    .local v1, "intent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v7, 0x108007b

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    .line 264
    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 266
    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x1040812

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 270
    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_27

    .line 248
    .end local v0    # "encryptIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/app/PendingIntent;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_c9
    move-exception v2

    .line 249
    .local v2, "re":Landroid/os/RemoteException;
    const-string v6, "OEMEncryption"

    const-string v7, "Unable to communicate with DirEncryptService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method
