.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$1;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static sAnrHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentProviderClient.class"
    .end annotation
.end field


# instance fields
.field private mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private mAnrTimeout:J

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mPackageName:Ljava/lang/String;

.field private mReleased:Z

.field private final mStable:Z


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .registers 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    .line 73
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 75
    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    .line 76
    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 78
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .registers 2
    .param p0, "x0"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private afterRemote()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_b

    .line 107
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_b
    return-void
.end method

.method private beforeRemote()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_d

    .line 101
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_d
    return-void
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .registers 2
    .param p0, "client"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 445
    if-eqz p0, :cond_5

    .line 447
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 451
    :cond_5
    :goto_5
    return-void

    .line 448
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 377
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result-object v1

    .line 384
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 378
    :catch_f
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 380
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 382
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 384
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 219
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result v1

    .line 226
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    .line 220
    :catch_f
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 222
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 224
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 226
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 392
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result-object v1

    .line 399
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 393
    :catch_f
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 395
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 397
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 399
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 174
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result-object v1

    .line 181
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 175
    :catch_f
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 177
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 179
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 181
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 235
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result v1

    .line 242
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    .line 236
    :catch_f
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 238
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 240
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 242
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 428
    :cond_9
    return-void
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 159
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    move-result-object v1

    .line 166
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 160
    :catch_d
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_19

    .line 162
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 164
    :cond_19
    throw v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    .line 166
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1a
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 144
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    move-result-object v1

    .line 151
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 145
    :catch_d
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_19

    .line 147
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 149
    :cond_19
    throw v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    .line 151
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1a
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 204
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result-object v1

    .line 211
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 205
    :catch_f
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 207
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 209
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 211
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_12

    .line 327
    :try_start_6
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 328
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 329
    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 331
    :cond_12
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_19} :catch_1e
    .catchall {:try_start_6 .. :try_end_19} :catchall_2b

    move-result-object v2

    .line 338
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    .line 332
    :catch_1e
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1f
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v2, :cond_2a

    .line 334
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 336
    :cond_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2b

    .line 338
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_2b
    move-exception v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_12

    .line 287
    :try_start_6
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 288
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 289
    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 291
    :cond_12
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_19} :catch_1e
    .catchall {:try_start_6 .. :try_end_19} :catchall_2b

    move-result-object v2

    .line 298
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    .line 292
    :catch_1e
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1f
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v2, :cond_2a

    .line 294
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 296
    :cond_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2b

    .line 298
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_2b
    move-exception v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v2
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 354
    const/4 v5, 0x0

    .line 355
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_12

    .line 356
    :try_start_6
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 357
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 358
    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 360
    :cond_12
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1c
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1c} :catch_21
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2e

    move-result-object v0

    .line 368
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    .line 362
    :catch_21
    move-exception v6

    .line 363
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_22
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_2d

    .line 364
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 366
    :cond_2d
    throw v6
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2e

    .line 368
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_2e
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 122
    const/4 v7, 0x0

    .line 123
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_12

    .line 124
    :try_start_6
    invoke-virtual {p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 125
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v7

    .line 126
    invoke-virtual {p6, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 128
    :cond_12
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1e
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1e} :catch_23
    .catchall {:try_start_6 .. :try_end_1e} :catchall_30

    move-result-object v0

    .line 136
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    .line 130
    :catch_23
    move-exception v8

    .line 131
    .local v8, "e":Landroid/os/DeadObjectException;
    :try_start_24
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_2f

    .line 132
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 134
    :cond_2f
    throw v8
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_30

    .line 136
    .end local v8    # "e":Landroid/os/DeadObjectException;
    :catchall_30
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public release()Z
    .registers 3

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    if-eqz v0, :cond_10

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 413
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    .line 414
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 415
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_26

    .line 416
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0

    .line 418
    :goto_25
    return v0

    :cond_26
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_d

    goto :goto_25
.end method

.method public setDetectNotResponding(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 83
    const-class v1, Landroid/content/ContentProviderClient;

    monitor-enter v1

    .line 84
    :try_start_3
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    .line 86
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2a

    .line 87
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v0, :cond_17

    .line 88
    new-instance v0, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 90
    :cond_17
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v0, :cond_28

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    .line 96
    :cond_28
    :goto_28
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    goto :goto_28

    .line 96
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 189
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_a} :catch_f
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    move-result-object v1

    .line 196
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 190
    :catch_f
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_10
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_1b

    .line 192
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 194
    :cond_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    .line 196
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_1c
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 251
    :try_start_3
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_e} :catch_13
    .catchall {:try_start_3 .. :try_end_e} :catchall_20

    move-result v0

    .line 258
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    .line 252
    :catch_13
    move-exception v6

    .line 253
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_14
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_1f

    .line 254
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 256
    :cond_1f
    throw v6
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_20

    .line 258
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_20
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method
