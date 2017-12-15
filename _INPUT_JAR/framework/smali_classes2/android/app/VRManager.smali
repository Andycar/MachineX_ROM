.class public Landroid/app/VRManager;
.super Ljava/lang/Object;
.source "VRManager.java"

# interfaces
.implements Landroid/app/IVRManager;


# static fields
.field public static final INTENT_ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final INTENT_ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/app/IVRManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/app/VRManager;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/app/IVRManagerService;
    .registers 3

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_1e

    .line 29
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    .line 31
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_1e

    .line 32
    const-string v0, "VRManager"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1e
    iget-object v0, p0, Landroid/app/VRManager;->mService:Lcom/android/internal/app/IVRManagerService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public GetPowerLevelState()I
    .registers 5

    .prologue
    .line 190
    const/4 v1, -0x1

    .line 192
    .local v1, "result":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 193
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 194
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 200
    :cond_b
    return v1

    .line 196
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 197
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 179
    .local v1, "result":[I
    :try_start_6
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 180
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 181
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v1

    .line 186
    :cond_10
    return-object v1

    .line 183
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 184
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 90
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 91
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 97
    :cond_b
    return-object v1

    .line 93
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 94
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 232
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 233
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 234
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 240
    :cond_b
    return-object v1

    .line 236
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 237
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .registers 5

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 284
    .local v1, "result":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 285
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 286
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 292
    :cond_b
    return v1

    .line 288
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 289
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .registers 5

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 310
    .local v1, "result":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 311
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 312
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 318
    :cond_b
    return v1

    .line 314
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 315
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .registers 5

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 42
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 43
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 49
    :cond_b
    return v1

    .line 45
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 46
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRComfortableViewEnabled()Z
    .registers 5

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 362
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 363
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 364
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 370
    :cond_b
    return v1

    .line 366
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .registers 5

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 336
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 337
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 338
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 344
    :cond_b
    return v1

    .line 340
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 341
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .registers 5

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 388
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 389
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 390
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 396
    :cond_b
    return v1

    .line 392
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 393
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .registers 5

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 259
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 260
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 266
    :cond_b
    return v1

    .line 262
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 263
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public relFreq(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 155
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 156
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 161
    :cond_b
    return v1

    .line 158
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 159
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 117
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 118
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 123
    :cond_9
    return-void

    .line 120
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 121
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 143
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 144
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 149
    :cond_9
    return-void

    .line 146
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 147
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 166
    .local v1, "result":[I
    :try_start_6
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 167
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 168
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v1

    .line 173
    :cond_10
    return-object v1

    .line 170
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 104
    .local v1, "result":[I
    :try_start_6
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 105
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_10

    .line 106
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v1

    .line 112
    :cond_10
    return-object v1

    .line 108
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_11
    move-exception v0

    .line 109
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 129
    .local v1, "result":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 130
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 131
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 137
    :cond_b
    return v1

    .line 133
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 134
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 77
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 78
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 84
    :cond_9
    return-void

    .line 80
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 81
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 220
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 221
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 226
    :cond_9
    return-void

    .line 223
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 224
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 56
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 57
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 63
    :cond_b
    return v1

    .line 59
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 60
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setVRBright(I)V
    .registers 5
    .param p1, "bright"    # I

    .prologue
    .line 271
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 272
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 273
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 278
    :cond_9
    return-void

    .line 275
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 276
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 298
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 299
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 304
    :cond_9
    return-void

    .line 301
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 302
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 349
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 350
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 351
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 356
    :cond_9
    return-void

    .line 353
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 354
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 323
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 324
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 325
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 330
    :cond_9
    return-void

    .line 327
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 328
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 375
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 376
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 377
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 382
    :cond_9
    return-void

    .line 379
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 380
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 246
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_9

    .line 247
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 252
    :cond_9
    return-void

    .line 249
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_a
    move-exception v0

    .line 250
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Landroid/app/VRManager;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 207
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_b

    .line 208
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 214
    :cond_b
    return v1

    .line 210
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_c
    move-exception v0

    .line 211
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "0.3.0-2014-04-21"

    return-object v0
.end method
