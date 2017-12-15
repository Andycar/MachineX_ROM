.class public Lcom/absolute/android/persistence/ABTPersistenceManager;
.super Ljava/lang/Object;
.source "ABTPersistenceManager.java"


# static fields
.field public static final ABT_PERSISTENCE_SERVICE:Ljava/lang/String; = "ABTPersistenceService"

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Absolute"

.field public static final OP_INSTALL:I = 0x1

.field public static final OP_UNINSTALL:I = 0x2

.field public static final PERSISTENCE_SERVICE_LOG:Ljava/lang/String; = "abt-persistence-service"

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_PERMANENTLY_DISABLED:I = 0x3

.field private static s_connection:Landroid/content/ServiceConnection;

.field private static s_context:Landroid/content/Context;

.field private static s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;


# instance fields
.field private m_service:Lcom/absolute/android/persistence/IABTPersistence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 795
    new-instance v0, Lcom/absolute/android/persistence/ABTPersistenceManager$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/ABTPersistenceManager$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/absolute/android/persistence/IABTPersistence;)V
    .registers 4
    .param p1, "service"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    if-nez p1, :cond_d

    .line 773
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ABTPersistenceManager() cannot be constructed with null service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_d
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    .line 777
    return-void
.end method

.method static synthetic access$000()Landroid/content/ServiceConnection;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100()Lcom/absolute/android/persistence/ABTPersistenceManager;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/absolute/android/persistence/ABTPersistenceManager;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .registers 1
    .param p0, "x0"    # Lcom/absolute/android/persistence/ABTPersistenceManager;

    .prologue
    .line 46
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/absolute/android/persistence/ABTPersistenceManager;Lcom/absolute/android/persistence/IABTPersistence;)V
    .registers 2
    .param p0, "x0"    # Lcom/absolute/android/persistence/ABTPersistenceManager;
    .param p1, "x1"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    return-void
.end method

.method public static getPersistenceService(Landroid/content/Context;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 110
    :try_start_3
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_32

    if-nez v1, :cond_2e

    .line 118
    :try_start_7
    const-string v1, "ABTPersistenceService"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/ABTPersistenceManager;

    sput-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_35
    .catchall {:try_start_7 .. :try_end_11} :catchall_32

    .line 123
    :goto_11
    :try_start_11
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    if-nez v1, :cond_27

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.absolute.android.persistenceapp"

    const-string v3, "com.absolute.android.persistenceapp.ABTPersistenceSystemApp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    .line 136
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 138
    :cond_2e
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    monitor-exit v2

    return-object v1

    .line 139
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v1

    .line 119
    :catch_35
    move-exception v1

    goto :goto_11
.end method

.method private setService(Lcom/absolute/android/persistence/IABTPersistence;)V
    .registers 2
    .param p1, "service"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    .line 781
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 588
    packed-switch p0, :pswitch_data_10

    .line 599
    const-string v0, "UNKNOWN"

    .line 602
    .local v0, "stateStr":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 590
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "ENABLED"

    .line 591
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_5

    .line 593
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "DISABLED"

    .line 594
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_5

    .line 596
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "PERMANENTLY DISABLED"

    .line 597
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_5

    .line 588
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "downloadIpAddress"    # Ljava/lang/String;
    .param p5, "digitalSignature"    # Ljava/lang/String;
    .param p6, "downloadReceiver"    # Lcom/absolute/android/persistence/IABTDownloadReceiver;
    .param p7, "progressIntervalKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/absolute/android/persistence/IABTPersistence;->downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 769
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 784
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 788
    :try_start_3
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 789
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 791
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 792
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 793
    return-void

    .line 791
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accessKey"    # Ljava/lang/String;
    .param p3, "updateUrl"    # Ljava/lang/String;
    .param p4, "updateIpAddress"    # Ljava/lang/String;
    .param p5, "appInfoReceiver"    # Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTPersistence;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 716
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDiagnostics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .registers 3
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v0

    return-object v0
.end method

.method public getPersistedAppCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedAppCount()I

    move-result v0

    return v0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getState()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getVersion()I

    move-result v0

    return v0
.end method

.method public install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 5
    .param p1, "appProfile"    # Lcom/absolute/android/persistence/AppProfile;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 265
    return-void
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 4
    .param p1, "methodSpec"    # Lcom/absolute/android/persistence/MethodSpec;
    .param p2, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 470
    return-void
.end method

.method public refreshDeviceId()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->refreshDeviceId()V

    .line 638
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pingCallback"    # Lcom/absolute/android/persistence/IABTPing;
    .param p3, "pingIntervalSecs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 549
    return-void
.end method

.method public setAllPersistence(Z)V
    .registers 3
    .param p1, "onState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setAllPersistence(Z)V

    .line 419
    return-void
.end method

.method public setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 3
    .param p1, "appProfile"    # Lcom/absolute/android/persistence/AppProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    .line 368
    return-void
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "onState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->setPersistence(Ljava/lang/String;Z)V

    .line 397
    return-void
.end method

.method public setState(I)V
    .registers 3
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setState(I)V

    .line 172
    return-void
.end method

.method public testFirmwareUpdate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->testFirmwareUpdate()V

    .line 655
    return-void
.end method

.method public uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deletePersistedFiles"    # Z
    .param p3, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 313
    return-void
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->unregisterPing(Ljava/lang/String;)V

    .line 574
    return-void
.end method
