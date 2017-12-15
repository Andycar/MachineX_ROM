.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;

.field private mUids:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "procRoot"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 5
    .param p1, "procRoot"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    .line 108
    iput-object p2, p0, Lcom/android/internal/net/NetworkStatsFactory;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 111
    new-instance v0, Ljava/io/File;

    const-string v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 112
    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .registers 16
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 305
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 307
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 308
    .local v7, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 310
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x1

    .line 311
    .local v2, "idx":I
    const/4 v3, 0x1

    .line 313
    .local v3, "lastIdx":I
    const/4 v4, 0x0

    .line 316
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_18
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_22} :catch_f5
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_f3
    .catchall {:try_start_18 .. :try_end_22} :catchall_72

    .line 317
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_22
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 319
    :goto_25
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 320
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 321
    add-int/lit8 v8, v3, 0x1

    if-eq v2, v8, :cond_7a

    .line 322
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " after lastIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_56} :catch_56
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_56} :catch_cd
    .catchall {:try_start_22 .. :try_end_56} :catchall_f0

    .line 344
    :catch_56
    move-exception v0

    move-object v4, v5

    .line 345
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_58
    :try_start_58
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_72
    .catchall {:try_start_58 .. :try_end_72} :catchall_72

    .line 349
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_72
    move-exception v8

    :goto_73
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 350
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    .line 325
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_7a
    move v3, v2

    .line 327
    :try_start_7b
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 328
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 329
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 330
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 331
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 332
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 333
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 334
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 336
    if-eqz p2, :cond_b9

    iget-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    :cond_b9
    if-eq p1, v11, :cond_bf

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v8, :cond_c8

    :cond_bf
    if-eq p3, v11, :cond_c5

    iget v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v8, :cond_c8

    .line 339
    :cond_c5
    invoke-virtual {v7, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 342
    :cond_c8
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_cb
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_cb} :catch_56
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_cb} :catch_cd
    .catchall {:try_start_7b .. :try_end_cb} :catchall_f0

    goto/16 :goto_25

    .line 346
    :catch_cd
    move-exception v0

    move-object v4, v5

    .line 347
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_cf
    :try_start_cf
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_e9
    .catchall {:try_start_cf .. :try_end_e9} :catchall_72

    .line 349
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_e9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 350
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    return-object v7

    .line 349
    :catchall_f0
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_73

    .line 346
    :catch_f3
    move-exception v0

    goto :goto_cf

    .line 344
    :catch_f5
    move-exception v0

    goto/16 :goto_58
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "stackedIface"    # Ljava/lang/String;
    .param p1, "baseIface"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 82
    if-eqz p1, :cond_c

    .line 83
    :try_start_5
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_a
    monitor-exit v1

    .line 88
    return-void

    .line 85
    :cond_c
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 87
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 9
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p4, :cond_1e

    .line 273
    move-object v0, p4

    .line 274
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 278
    :goto_a
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_29

    .line 280
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :cond_1e
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v0    # "stats":Landroid/net/NetworkStats;
    goto :goto_a

    .line 292
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;->updateStatsForKnox(Landroid/net/NetworkStats;)V

    .line 294
    return-object v0
.end method

.method private updateStatsForKnox(Landroid/net/NetworkStats;)V
    .registers 35
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 359
    const-string v4, "NetworkStatsFactory"

    const-string v6, "UpdateStatsForKnox"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mContext:Landroid/content/Context;

    if-nez v4, :cond_e

    .line 417
    :cond_d
    :goto_d
    return-void

    .line 365
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/ConnectivityManager;

    .line 368
    .local v24, "cm":Landroid/net/ConnectivityManager;
    if-nez v24, :cond_24

    .line 369
    const-string v4, "NetworkStatsFactory"

    const-string v6, "couldn\'t get connectivity manager"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 373
    :cond_24
    const/16 v28, 0x0

    .line 374
    .local v28, "info":Landroid/net/NetworkInfo;
    const/16 v32, 0x0

    .line 375
    .local v32, "lp":Landroid/net/LinkProperties;
    const/16 v26, 0x0

    .line 376
    .local v26, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v31, -0x1

    .line 377
    .local v31, "limitUid":I
    const/4 v5, 0x0

    .line 381
    .local v5, "index":I
    const/16 v4, 0x1c

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v28

    .line 382
    const/16 v4, 0x1c

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v32

    .line 383
    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v4

    if-eqz v4, :cond_f6

    if-eqz v28, :cond_f6

    if-eqz v32, :cond_f6

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_f6

    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f6

    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f6

    const/16 v25, 0x1

    .line 386
    .local v25, "entConn":Z
    :goto_5f
    if-eqz v25, :cond_d

    .line 387
    const-string v4, "ent1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getUidsForApnType(Ljava/lang/String;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    if-eqz v4, :cond_d

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    array-length v0, v4

    move/from16 v30, v0

    .line 392
    .local v30, "knoxCount":I
    const/16 v22, 0x0

    .line 393
    .local v22, "activeIface":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v23

    .line 394
    .local v23, "activeLink":Landroid/net/LinkProperties;
    if-eqz v23, :cond_86

    .line 395
    invoke-virtual/range {v23 .. v23}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v22

    .line 397
    :cond_86
    const/16 v29, 0x0

    .local v29, "j":I
    :goto_88
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/net/NetworkStatsFactory;->mUids:[I

    aget v31, v4, v29

    .line 399
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_96
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_126

    .line 400
    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v26

    .line 401
    move-object/from16 v0, v26

    iget v4, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v0, v31

    if-ne v0, v4, :cond_f3

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 402
    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, v26

    iget v7, v0, Landroid/net/NetworkStats$Entry;->set:I

    move-object/from16 v0, v26

    iget v8, v0, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v5

    .line 404
    const/4 v4, -0x1

    if-eq v5, v4, :cond_fa

    .line 405
    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v10, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/net/NetworkStats;->combineValues(IJJZ)V

    .line 406
    move-object/from16 v0, v26

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v26

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move/from16 v7, v27

    invoke-virtual/range {v6 .. v12}, Landroid/net/NetworkStats;->combineValues(IJJZ)V

    .line 399
    :cond_f3
    :goto_f3
    add-int/lit8 v27, v27, 0x1

    goto :goto_96

    .line 383
    .end local v22    # "activeIface":Ljava/lang/String;
    .end local v23    # "activeLink":Landroid/net/LinkProperties;
    .end local v25    # "entConn":Z
    .end local v27    # "i":I
    .end local v29    # "j":I
    .end local v30    # "knoxCount":I
    :cond_f6
    const/16 v25, 0x0

    goto/16 :goto_5f

    .line 408
    .restart local v22    # "activeIface":Ljava/lang/String;
    .restart local v23    # "activeLink":Landroid/net/LinkProperties;
    .restart local v25    # "entConn":Z
    .restart local v27    # "i":I
    .restart local v29    # "j":I
    .restart local v30    # "knoxCount":I
    :cond_fa
    invoke-virtual/range {v32 .. v32}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    iget v9, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, v26

    iget v10, v0, Landroid/net/NetworkStats$Entry;->set:I

    move-object/from16 v0, v26

    iget v11, v0, Landroid/net/NetworkStats$Entry;->tag:I

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v20, v0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v21}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    goto :goto_f3

    .line 397
    :cond_126
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_88
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 9
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-eq v3, v4, :cond_35

    .line 422
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 426
    :cond_35
    const/4 v1, 0x0

    .line 427
    .local v1, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .line 428
    .local v0, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 429
    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 430
    invoke-virtual {p2, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 431
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 432
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 428
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 436
    :cond_7c
    return-void
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 217
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 29
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v22

    .line 225
    .local v22, "stats":Landroid/net/NetworkStats;
    sget-object v23, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v23

    .line 228
    :try_start_7
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v20

    .line 229
    .local v20, "size":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_f
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_71

    .line 230
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 231
    .local v21, "stackedIface":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    .local v4, "baseIface":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 237
    .local v3, "adjust":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 238
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_3e
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_69

    .line 239
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 240
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 241
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 242
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v6, v8

    iput-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 238
    :cond_66
    add-int/lit8 v19, v19, 0x1

    goto :goto_3e

    .line 245
    :cond_69
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 229
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 247
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "adjust":Landroid/net/NetworkStats$Entry;
    .end local v4    # "baseIface":Ljava/lang/String;
    .end local v19    # "j":I
    .end local v21    # "stackedIface":Ljava/lang/String;
    :cond_71
    monitor-exit v23
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_ae

    .line 251
    const/4 v2, 0x0

    .line 252
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    const/16 v18, 0x0

    :goto_75
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_b1

    .line 253
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 254
    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v5, :cond_ab

    iget-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string v6, "clat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 256
    iget-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v8, 0x14

    mul-long/2addr v6, v8

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 257
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 258
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 259
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 260
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 252
    :cond_ab
    add-int/lit8 v18, v18, 0x1

    goto :goto_75

    .line 247
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v18    # "i":I
    .end local v20    # "size":I
    :catchall_ae
    move-exception v5

    :try_start_af
    monitor-exit v23
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v5

    .line 264
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v18    # "i":I
    .restart local v20    # "size":I
    :cond_b1
    return-object v22
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 126
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 127
    .local v6, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 129
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 131
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_15
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_21} :catch_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_21} :catch_9e
    .catchall {:try_start_15 .. :try_end_21} :catchall_8d

    .line 133
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v4, "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_21
    :try_start_21
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 134
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 135
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 136
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 137
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 139
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_95

    const/4 v0, 0x1

    .line 142
    .local v0, "active":Z
    :goto_3d
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 143
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 144
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 145
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 148
    if-eqz v0, :cond_7b

    .line 149
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 150
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 151
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 152
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 155
    :cond_7b
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 156
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_81
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_81} :catch_82
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_81} :catch_ab
    .catchall {:try_start_21 .. :try_end_81} :catchall_a8

    goto :goto_21

    .line 158
    .end local v0    # "active":Z
    :catch_82
    move-exception v1

    move-object v3, v4

    .line 159
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_84
    :try_start_84
    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_8d

    .line 163
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_8d
    move-exception v7

    :goto_8e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_95
    move v0, v7

    .line 139
    goto :goto_3d

    .line 163
    :cond_97
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 166
    return-object v6

    .line 160
    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_9e
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/NumberFormatException;
    :goto_9f
    :try_start_9f
    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_8d

    .line 163
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_a8
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_8e

    .line 160
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_ab
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_9f

    .line 158
    :catch_ae
    move-exception v1

    goto :goto_84
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 180
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v5, 0x0

    .line 213
    :goto_d
    return-object v5

    .line 182
    :cond_e
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 183
    .local v5, "stats":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 185
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 188
    .local v2, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_1e
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_2a} :catch_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2a} :catch_7b
    .catchall {:try_start_1e .. :try_end_2a} :catchall_6c

    .line 189
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_2a
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 191
    :goto_2d
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 192
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 193
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 194
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 195
    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 197
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 198
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 199
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 200
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 202
    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 203
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_60} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_60} :catch_88
    .catchall {:try_start_2a .. :try_end_60} :catchall_85

    goto :goto_2d

    .line 205
    :catch_61
    move-exception v0

    move-object v2, v3

    .line 206
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :goto_63
    :try_start_63
    new-instance v6, Ljava/net/ProtocolException;

    const-string/jumbo v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6c

    .line 210
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_6c
    move-exception v6

    :goto_6d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 210
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :cond_74
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_d

    .line 207
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_7b
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_7c
    :try_start_7c
    new-instance v6, Ljava/net/ProtocolException;

    const-string/jumbo v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_6c

    .line 210
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catchall_85
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_6d

    .line 207
    .end local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    :catch_88
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local v2    # "reader":Lcom/android/internal/util/ProcFileReader;
    goto :goto_7c

    .line 205
    :catch_8b
    move-exception v0

    goto :goto_63
.end method
