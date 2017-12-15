.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UID_VIDEOCALL:I = -0x64

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 1

    .prologue
    .line 173
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 174
    return-void
.end method

.method public static clearThreadStatsUid()V
    .registers 1

    .prologue
    .line 197
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 198
    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .registers 3
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 290
    if-eqz p0, :cond_5

    .line 292
    :try_start_2
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 298
    :cond_5
    :goto_5
    return-void

    .line 293
    :catch_6
    move-exception v0

    .line 294
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 295
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 718
    .local v1, "uid":I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    .line 719
    :catch_d
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 731
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 732
    :catch_9
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMobileRxBytes()J
    .registers 8

    .prologue
    .line 412
    const-wide/16 v4, 0x0

    .line 413
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 414
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 418
    .end local v2    # "iface":Ljava/lang/String;
    :cond_14
    const-string v6, "clat4"

    invoke-static {v6}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 421
    return-wide v4
.end method

.method public static getMobileRxPackets()J
    .registers 8

    .prologue
    .line 368
    const-wide/16 v4, 0x0

    .line 369
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 370
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 374
    .end local v2    # "iface":Ljava/lang/String;
    :cond_14
    const-string v6, "clat4"

    invoke-static {v6}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 377
    return-wide v4
.end method

.method public static getMobileRxPackets(Ljava/lang/String;)J
    .registers 9
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 324
    const-wide/16 v4, 0x0

    .line 325
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 326
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 327
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 325
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 330
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1a
    return-wide v4
.end method

.method public static getMobileRxPacketsExcept(Ljava/lang/String;)J
    .registers 9
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 427
    const-wide/16 v4, 0x0

    .line 428
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 429
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 428
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 432
    :cond_15
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_12

    .line 434
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1b
    return-wide v4
.end method

.method public static getMobileTcpRxPackets()J
    .registers 10

    .prologue
    .line 440
    const-wide/16 v6, 0x0

    .line 441
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 442
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 443
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_18

    .line 444
    add-long/2addr v6, v4

    .line 441
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 447
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1b
    return-wide v6
.end method

.method public static getMobileTcpTxPackets()J
    .registers 10

    .prologue
    .line 452
    const-wide/16 v6, 0x0

    .line 453
    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 454
    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .line 455
    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_18

    .line 456
    add-long/2addr v6, v4

    .line 453
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 459
    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1b
    return-wide v6
.end method

.method public static getMobileTxBytes()J
    .registers 8

    .prologue
    .line 390
    const-wide/16 v4, 0x0

    .line 391
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 392
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 396
    .end local v2    # "iface":Ljava/lang/String;
    :cond_14
    const-string v6, "clat4"

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 399
    return-wide v4
.end method

.method public static getMobileTxPackets()J
    .registers 8

    .prologue
    .line 310
    const-wide/16 v4, 0x0

    .line 311
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 312
    .local v2, "iface":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 316
    .end local v2    # "iface":Ljava/lang/String;
    :cond_14
    const-string v6, "clat4"

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 319
    return-wide v4
.end method

.method public static getMobileTxPackets(Ljava/lang/String;)J
    .registers 9
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 335
    const-wide/16 v4, 0x0

    .line 336
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 337
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 338
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 336
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 341
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1a
    return-wide v4
.end method

.method public static getMobileTxPacketsExcept(Ljava/lang/String;)J
    .registers 9
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    .line 347
    const-wide/16 v4, 0x0

    .line 348
    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 349
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 348
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 352
    :cond_15
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_12

    .line 354
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1b
    return-wide v4
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .registers 2

    .prologue
    .line 110
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_14

    .line 111
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 114
    :cond_14
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .registers 1

    .prologue
    .line 163
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 551
    invoke-static {v3}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    const-string v2, "clat4"

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 513
    invoke-static {v3}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    const-string v2, "clat4"

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 532
    invoke-static {v3}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    const-string v2, "clat4"

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 494
    invoke-static {v3}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    const-string v2, "clat4"

    invoke-static {v2, v3}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .registers 3
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 619
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTcpRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 685
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 630
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 674
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 571
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 603
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidUdpRxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 707
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 652
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .registers 3
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 696
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .registers 2
    .param p0, "operationCount"    # I

    .prologue
    .line 267
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .line 268
    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 269
    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 5
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    .line 279
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 281
    .local v1, "uid":I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 285
    return-void

    .line 282
    :catch_c
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .registers 1
    .param p0, "tag"    # I

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    .line 143
    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .registers 1

    .prologue
    .line 152
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 153
    return-void
.end method

.method public static setThreadStatsUid(I)V
    .registers 1
    .param p0, "uid"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    .line 192
    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_3
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_12

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 233
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 234
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 235
    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    :try_start_3
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_13

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v2

    .line 251
    :cond_13
    :try_start_13
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 252
    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 254
    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    .line 255
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_10

    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 211
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 218
    return-void
.end method
