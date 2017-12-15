.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .registers 6
    .param p2, "lockType"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3172
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3173
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    .line 3174
    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    .line 3175
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 3176
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    .line 3177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 3178
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 3179
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/net/wifi/WifiManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/net/wifi/WifiManager$1;

    .prologue
    .line 3163
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 7

    .prologue
    .line 3193
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 3194
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v0, :cond_45

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_51

    if-lez v0, :cond_43

    .line 3196
    :goto_f
    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    .line 3197
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_3f
    .catchall {:try_start_f .. :try_end_21} :catchall_51

    .line 3198
    :try_start_21
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    # getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_4a

    .line 3199
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 3200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3204
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_51

    .line 3205
    :catch_3f
    move-exception v0

    .line 3207
    :goto_40
    const/4 v0, 0x1

    :try_start_41
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 3209
    :cond_43
    monitor-exit v1

    .line 3210
    return-void

    .line 3194
    :cond_45
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_51

    if-nez v0, :cond_43

    goto :goto_f

    .line 3203
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    # operator++ for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$508(Landroid/net/wifi/WifiManager;)I

    .line 3204
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_3c

    goto :goto_40

    .line 3209
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3322
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3323
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 3324
    :try_start_6
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2b

    if-eqz v0, :cond_22

    .line 3326
    :try_start_a
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 3327
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_29
    .catchall {:try_start_a .. :try_end_16} :catchall_2b

    .line 3328
    :try_start_16
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-lez v0, :cond_24

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    :goto_1e
    # -= operator for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v3, v0}, Landroid/net/wifi/WifiManager;->access$520(Landroid/net/wifi/WifiManager;I)I

    .line 3329
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_26

    .line 3333
    :cond_22
    :goto_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_2b

    .line 3334
    return-void

    .line 3328
    :cond_24
    const/4 v0, 0x1

    goto :goto_1e

    .line 3329
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_29} :catch_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_2b

    .line 3330
    :catch_29
    move-exception v0

    goto :goto_22

    .line 3333
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 3272
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 3273
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 3274
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 3225
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 3226
    :try_start_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-ltz v0, :cond_18

    .line 3227
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_61

    .line 3228
    :try_start_12
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    # operator-- for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$510(Landroid/net/wifi/WifiManager;)I

    .line 3229
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_64

    .line 3232
    :cond_18
    :try_start_18
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v0, :cond_67

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_61

    if-nez v0, :cond_42

    .line 3234
    :goto_20
    :try_start_20
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 3235
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_71
    .catchall {:try_start_20 .. :try_end_2c} :catchall_61

    .line 3236
    :try_start_2c
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-nez v0, :cond_3e

    .line 3237
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-lez v0, :cond_6c

    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    :goto_38
    # -= operator for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v3, v0}, Landroid/net/wifi/WifiManager;->access$520(Landroid/net/wifi/WifiManager;I)I

    .line 3238
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    .line 3240
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_6e

    .line 3243
    :goto_3f
    const/4 v0, 0x0

    :try_start_40
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 3245
    :cond_42
    iget v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-gez v0, :cond_73

    .line 3246
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3248
    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_61

    throw v0

    .line 3229
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v0

    .line 3232
    :cond_67
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_61

    if-eqz v0, :cond_42

    goto :goto_20

    .line 3237
    :cond_6c
    const/4 v0, 0x1

    goto :goto_38

    .line 3240
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v0
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_71} :catch_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_61

    .line 3241
    :catch_71
    move-exception v0

    goto :goto_3f

    .line 3248
    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_61

    .line 3249
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .param p1, "refCounted"    # Z

    .prologue
    .line 3263
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 3264
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 7
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3278
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    .line 3279
    if-eqz p1, :cond_c

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 3280
    const/4 p1, 0x0

    .line 3282
    :cond_c
    const/4 v0, 0x1

    .line 3283
    .local v0, "changed":Z
    if-nez p1, :cond_25

    .line 3284
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 3297
    :cond_12
    :goto_12
    if-eqz v0, :cond_23

    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_39

    if-eqz v1, :cond_23

    .line 3299
    :try_start_18
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_4c
    .catchall {:try_start_18 .. :try_end_23} :catchall_39

    .line 3303
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v2

    .line 3304
    return-void

    .line 3286
    :cond_25
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    .line 3287
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_3e

    .line 3288
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    .line 3289
    :goto_31
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_12

    .line 3303
    .end local v0    # "changed":Z
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v1

    .line 3288
    .restart local v0    # "changed":Z
    :cond_3c
    const/4 v0, 0x0

    goto :goto_31

    .line 3291
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 3292
    if-eqz v0, :cond_12

    .line 3293
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_39

    goto :goto_12

    .line 3300
    :catch_4c
    move-exception v1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3308
    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 3309
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3310
    .local v0, "s1":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v3, :cond_54

    const-string v1, "held; "

    .line 3311
    .local v1, "s2":Ljava/lang/String;
    :goto_11
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v3, :cond_57

    .line 3312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3316
    .local v2, "s3":Ljava/lang/String;
    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 3310
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "s3":Ljava/lang/String;
    :cond_54
    const-string v1, ""

    goto :goto_11

    .line 3314
    .restart local v1    # "s2":Ljava/lang/String;
    :cond_57
    const-string/jumbo v2, "not refcounted"

    .restart local v2    # "s3":Ljava/lang/String;
    goto :goto_2b

    .line 3317
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "s3":Ljava/lang/String;
    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v3
.end method
