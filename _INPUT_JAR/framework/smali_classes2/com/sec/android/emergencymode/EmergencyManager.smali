.class public Lcom/sec/android/emergencymode/EmergencyManager;
.super Ljava/lang/Object;
.source "EmergencyManager.java"


# static fields
.field private static final SERVICE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EmergencyManager"

.field private static mService:Lcom/sec/android/emergencymode/IEmergencyManager;

.field private static sInstance:Lcom/sec/android/emergencymode/EmergencyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverUPSM:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/sec/android/emergencymode/EmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager$1;-><init>(Lcom/sec/android/emergencymode/EmergencyManager;)V

    iput-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/sec/android/emergencymode/EmergencyManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager$2;-><init>(Lcom/sec/android/emergencymode/EmergencyManager;)V

    iput-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiverUPSM:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/sec/android/emergencymode/EmergencyManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/emergencymode/EmergencyManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/emergencymode/EmergencyManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ensureServiceConnected()V
    .registers 5

    .prologue
    .line 84
    :try_start_0
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_11

    .line 85
    const-string v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    .line 96
    :cond_10
    :goto_10
    return-void

    .line 87
    :cond_11
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/sec/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 88
    const-string v1, "EmergencyManager"

    const-string v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_10

    .line 93
    :catch_31
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureServiceConnected e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-class v2, Lcom/sec/android/emergencymode/EmergencyManager;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    if-nez v1, :cond_17

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/emergencymode/EmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 73
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_17
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->sInstance:Lcom/sec/android/emergencymode/EmergencyManager;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v2

    return-object v1

    .line 68
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private registerReceiver()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 195
    const-string v3, "EmergencyManager"

    const-string/jumbo v4, "registerReceiver"

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "salesCode":Ljava/lang/String;
    const-string v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerReceiver Scode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "DCM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 202
    const-string v3, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    :cond_49
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v1, "filterupsm":Landroid/content/IntentFilter;
    const-string v3, "com.sec.android.emergencymode.UltraPowerSavingManager.ORDER_ULTRA_POWERSAVING_SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiverUPSM:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.android.permission.LAUNCH_ULTRAPOWERSAVING_SERVICE"

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method private declared-synchronized startService(Ljava/lang/String;ZIZ)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "flag"    # I
    .param p4, "skipdialog"    # Z

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_f

    .line 154
    const-string v2, "clearBootTime"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    :cond_f
    if-eqz p1, :cond_83

    .line 157
    const-string v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 158
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    const-string v2, "flag"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string/jumbo v2, "skipdialog"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    :cond_2c
    :goto_2c
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_65
    .catchall {:try_start_1 .. :try_end_57} :catchall_80

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_57
    monitor-exit p0

    return-void

    .line 162
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_59
    :try_start_59
    const-string v2, "android.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 163
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_65
    .catchall {:try_start_59 .. :try_end_64} :catchall_80

    goto :goto_2c

    .line 173
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_65
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :try_start_66
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_80

    goto :goto_57

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_80
    move-exception v2

    monitor-exit p0

    throw v2

    .line 167
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_83
    :try_start_83
    const-string v2, "initForEMState"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_89} :catch_65
    .catchall {:try_start_83 .. :try_end_89} :catchall_80

    goto :goto_2c
.end method

.method private declared-synchronized stopService()V
    .registers 6

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_39

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.emergencymode.service"

    const-string v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 187
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3b
    .catchall {:try_start_1 .. :try_end_39} :catchall_56

    .line 192
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 189
    :catch_3b
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3c
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_56

    goto :goto_39

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_56
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static supportEmergencyMode()Z
    .registers 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public static supportGrayScreen()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    const/4 v1, 0x1

    .line 248
    .local v1, "bMdnie":Z
    const/4 v0, 0x1

    .line 249
    .local v0, "bAmoled":Z
    const-string v5, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "support MDNIE ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]  AMOLED display ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]  supportGrayScreen ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    move v2, v3

    :goto_2b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v1, :cond_43

    if-eqz v0, :cond_43

    :goto_40
    return v3

    :cond_41
    move v2, v4

    .line 249
    goto :goto_2b

    :cond_43
    move v3, v4

    .line 250
    goto :goto_40
.end method

.method public static supportUltraPowerSavingMode()Z
    .registers 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method private triggerEmergencyMode(ZIZ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "flag"    # I
    .param p3, "skipdialog"    # Z

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 537
    const-string v0, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    .line 538
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .prologue
    .line 213
    const-string v0, "EmergencyManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    return-void
.end method


# virtual methods
.method public addAppToLauncher(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 599
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 601
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-nez v2, :cond_9

    .line 612
    :goto_8
    return v1

    .line 607
    :cond_9
    :try_start_9
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->addAppToLauncher(Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_8

    .line 608
    :catch_10
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToLauncher failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public canSetMode()Z
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 488
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v11

    if-nez v11, :cond_f

    move v9, v10

    .line 531
    :cond_e
    :goto_e
    return v9

    .line 491
    :cond_f
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 492
    .local v6, "mUserManager":Landroid/os/UserManager;
    const/4 v9, 0x1

    .line 493
    .local v9, "result":Z
    const/4 v7, 0x0

    .line 494
    .local v7, "modifying":Z
    const/4 v4, 0x0

    .line 495
    .local v4, "knoxUser":Z
    const/4 v3, 0x0

    .line 496
    .local v3, "isDeviceProvisioned":Z
    const/4 v1, 0x0

    .line 497
    .local v1, "currentUserId":I
    const-string v8, ""

    .line 500
    .local v8, "reason":Ljava/lang/String;
    :try_start_21
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v7

    .line 501
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 502
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 504
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v11, "2.0"

    const-string/jumbo v12, "version"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 505
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 506
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_50

    invoke-virtual {v5, v1}, Landroid/os/PersonaManager;->exists(I)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4c} :catch_c9

    move-result v11

    if-eqz v11, :cond_50

    .line 507
    const/4 v4, 0x1

    .line 515
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "mPersona":Landroid/os/PersonaManager;
    :cond_50
    :goto_50
    iget-object v11, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_e4

    const/4 v3, 0x1

    .line 518
    :goto_5f
    if-nez v3, :cond_75

    .line 519
    const/4 v9, 0x0

    .line 520
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 521
    :cond_75
    if-eqz v7, :cond_8b

    .line 522
    const/4 v9, 0x0

    .line 523
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LLM_ENABLING;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 524
    :cond_8b
    if-eqz v1, :cond_ad

    if-nez v4, :cond_ad

    .line 525
    const/4 v9, 0x0

    .line 526
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NOT_OWNER_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 529
    :cond_ad
    if-nez v9, :cond_e

    .line 530
    const-string v10, "EmergencyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not Allowed EmergencyMode due to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 511
    :catch_c9
    move-exception v2

    .line 512
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "EmergencyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canSetMode Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e4
    move v3, v10

    .line 515
    goto/16 :goto_5f
.end method

.method public checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 370
    :cond_d
    :goto_d
    return v1

    .line 357
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 359
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 365
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 366
    :catch_1c
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInvalidBroadcast failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public checkInvalidProcess(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 347
    :cond_d
    :goto_d
    return v1

    .line 334
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 336
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 342
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 343
    :catch_1c
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInvalidProcess failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public checkModeType(I)Z
    .registers 7
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 564
    :cond_d
    :goto_d
    return v1

    .line 551
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 553
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 559
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkModeType(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 560
    :catch_1c
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkModeType failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_f

    .line 309
    const/4 v1, 0x0

    .line 324
    :cond_e
    :goto_e
    return v1

    .line 311
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 313
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_e

    .line 319
    :try_start_16
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    goto :goto_e

    .line 320
    :catch_1d
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidIntentAction failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actName"    # Ljava/lang/String;
    .param p3, "allowFlag"    # I

    .prologue
    const/4 v1, 0x1

    .line 285
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_f

    .line 286
    const/4 v1, 0x0

    .line 301
    :cond_e
    :goto_e
    return v1

    .line 288
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 290
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_e

    .line 296
    :try_start_16
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/android/emergencymode/IEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    goto :goto_e

    .line 297
    :catch_1d
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidPackage failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getforceBlockUserPkg()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 458
    :cond_d
    :goto_d
    return v1

    .line 446
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 448
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 453
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->getforceBlockUserPkg()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 454
    :catch_1c
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getforceBlockUserPkg failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public isEmergencyMode()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 273
    :cond_d
    :goto_d
    return v1

    .line 260
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 262
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 268
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isEmergencyMode()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 269
    :catch_1c
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyMode failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public isModifying()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 481
    :cond_d
    :goto_d
    return v1

    .line 468
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 470
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 476
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isModifying()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 477
    :catch_1c
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isModifying failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public isScreenOn()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 416
    :cond_d
    :goto_d
    return v1

    .line 403
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 405
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 411
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->isScreenOn()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 412
    :catch_1c
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenOn failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public needMobileDataBlock()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_e

    .line 393
    :cond_d
    :goto_d
    return v1

    .line 380
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 382
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_d

    .line 388
    :try_start_15
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v2}, Lcom/sec/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_d

    .line 389
    :catch_1c
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needMobileDataBlock failed e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public readyEmergencyMode()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 139
    const-string v0, "EmergencyManager"

    const-string v1, "This is emergency mode."

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v2, v7, v8, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    .line 146
    :goto_15
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->registerReceiver()V

    .line 147
    return-void

    .line 142
    :cond_19
    const-string v0, "EmergencyManager"

    const-string v1, "This is normal mode."

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_UPDATE_TABLE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 144
    const-string v0, "android.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-direct {p0, v0, v7, v8, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    goto :goto_15
.end method

.method public requestCallPrivileged(Ljava/lang/String;)I
    .registers 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 625
    :try_start_0
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "callUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 627
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    iget-object v3, p0, Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_23

    .line 634
    const-string v3, "EmergencyManager"

    const-string/jumbo v4, "req call, success."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v3, 0x1

    .end local v0    # "callIntent":Landroid/content/Intent;
    .end local v1    # "callUri":Landroid/net/Uri;
    :goto_22
    return v3

    .line 629
    :catch_23
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "req call, unknown Err : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v3, -0x9

    goto :goto_22
.end method

.method public setLocationProvider(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 574
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_d

    .line 589
    :cond_c
    :goto_c
    return-void

    .line 577
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 579
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_c

    .line 585
    :try_start_14
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->setLocationProvider(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_c

    .line 586
    :catch_1a
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLocationProvider failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setforceBlockUserPkg(ZLandroid/content/Context;)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_d

    .line 437
    :cond_c
    :goto_c
    return-void

    .line 426
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->ensureServiceConnected()V

    .line 428
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_c

    .line 433
    :try_start_14
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyManager;->mService:Lcom/sec/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/sec/android/emergencymode/IEmergencyManager;->setforceBlockUserPkg(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_c

    .line 434
    :catch_1a
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setforceBlockUserPkg failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
