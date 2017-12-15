.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$ListenerBridge;,
        Landroid/os/ParcelFileDescriptor$Status;,
        Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;,
        Landroid/os/ParcelFileDescriptor$OnCloseListener;,
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STATUS:I = 0x400

.field public static final MODE_APPEND:I = 0x2000000

.field public static final MODE_CREATE:I = 0x8000000

.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_TRUNCATE:I = 0x4000000

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WRITE_ONLY:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "ParcelFileDescriptor"


# instance fields
.field private volatile mClosed:Z

.field private mCommFd:Ljava/io/FileDescriptor;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mStatus:Landroid/os/ParcelFileDescriptor$Status;

.field private mStatusBuf:[B

.field private final mWrapped:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 905
    new-instance v0, Landroid/os/ParcelFileDescriptor$1;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 161
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 162
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 163
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "commChannel"    # Ljava/io/FileDescriptor;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 174
    if-nez p1, :cond_13

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FileDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 178
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 179
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 180
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 3
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # [B

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    return-object v0
.end method

.method public static adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "fd"    # I

    .prologue
    .line 318
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 319
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 321
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private closeWithStatus(ILjava/lang/String;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_5

    .line 644
    :goto_4
    return-void

    .line 638
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 639
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 641
    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 642
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 643
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    goto :goto_4
.end method

.method private static createCommSocketPair()[Ljava/io/FileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 436
    .local v0, "comm1":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 437
    .local v1, "comm2":Ljava/io/FileDescriptor;
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v4, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 438
    const/4 v3, 0x0

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 439
    const/4 v3, 0x0

    invoke-static {v1, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 440
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/FileDescriptor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    .line 441
    .end local v1    # "comm2":Ljava/io/FileDescriptor;
    :catch_24
    move-exception v2

    .line 442
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static createPipe()[Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 363
    .local v1, "fds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v4, v2, v3
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v2

    .line 366
    :catch_1e
    move-exception v0

    .line 367
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static createReliablePipe()[Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 384
    .local v0, "comm":[Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 385
    .local v2, "fds":[Ljava/io/FileDescriptor;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v3

    .line 388
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    :catch_28
    move-exception v1

    .line 389
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static createReliableSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 422
    .local v0, "comm":[Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 423
    .local v2, "fd0":Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 424
    .local v3, "fd1":Ljava/io/FileDescriptor;
    sget v4, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v2, v3}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 425
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v6, v2, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v6, v3, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v6, v4, v5
    :try_end_2f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v4

    .line 428
    .end local v2    # "fd0":Ljava/io/FileDescriptor;
    .end local v3    # "fd1":Ljava/io/FileDescriptor;
    :catch_30
    move-exception v1

    .line 429
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
.end method

.method public static createSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 400
    .local v1, "fd0":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 401
    .local v2, "fd1":Ljava/io/FileDescriptor;
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v4, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 402
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v5, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v3

    .line 405
    .end local v2    # "fd1":Ljava/io/FileDescriptor;
    :catch_26
    move-exception v0

    .line 406
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "orig"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 265
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v2

    .line 266
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_a
    move-exception v0

    .line 267
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 458
    if-nez p0, :cond_5

    .line 465
    :cond_4
    :goto_4
    return-object v2

    .line 459
    :cond_5
    new-instance v1, Landroid/os/MemoryFile;

    array-length v3, p0

    invoke-direct {v1, p1, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 460
    .local v1, "file":Landroid/os/MemoryFile;
    array-length v3, p0

    if-lez v3, :cond_12

    .line 461
    array-length v3, p0

    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 463
    :cond_12
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    .line 464
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 465
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_4

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_4
.end method

.method public static fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "datagramSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 352
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static fromFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 297
    .local v2, "original":Ljava/io/FileDescriptor;
    invoke-virtual {v2, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 300
    :try_start_8
    invoke-static {v2}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 301
    .local v0, "dup":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_11} :catch_12

    return-object v3

    .line 302
    .end local v0    # "dup":Ljava/io/FileDescriptor;
    :catch_12
    move-exception v1

    .line 303
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 337
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 338
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private getOrCreateStatusBuffer()[B
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    if-nez v0, :cond_a

    .line 656
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    .line 658
    :cond_a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    return-object v0
.end method

.method public static open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 200
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 202
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_7
.end method

.method public static open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 225
    if-nez p2, :cond_b

    .line 226
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Handler must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_b
    if-nez p3, :cond_15

    .line 229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_15
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 233
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_1d

    const/4 v3, 0x0

    .line 243
    :goto_1c
    return-object v3

    .line 235
    :cond_1d
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 236
    .local v1, "comm":[Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-direct {v3, v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 239
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    aget-object v4, v1, v5

    invoke-static {v4, v5}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 240
    new-instance v0, Landroid/os/ParcelFileDescriptor$ListenerBridge;

    aget-object v4, v1, v5

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v4, v5, p3}, Landroid/os/ParcelFileDescriptor$ListenerBridge;-><init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 241
    .local v0, "bridge":Landroid/os/ParcelFileDescriptor$ListenerBridge;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$ListenerBridge;->start()V

    goto :goto_1c
.end method

.method private static openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    const/high16 v1, 0x30000000

    and-int/2addr v1, p1

    if-nez v1, :cond_d

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify MODE_READ_ONLY, MODE_WRITE_ONLY, or MODE_READ_WRITE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/Parcel;->openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public static parseMode(Ljava/lang/String;)I
    .registers 5
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string/jumbo v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 479
    const/high16 v0, 0x10000000

    .line 498
    .local v0, "modeBits":I
    :goto_b
    return v0

    .line 480
    .end local v0    # "modeBits":I
    :cond_c
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 481
    :cond_1e
    const/high16 v0, 0x2c000000

    .restart local v0    # "modeBits":I
    goto :goto_b

    .line 484
    .end local v0    # "modeBits":I
    :cond_21
    const-string/jumbo v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 485
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_b

    .line 488
    .end local v0    # "modeBits":I
    :cond_2d
    const-string/jumbo v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 489
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_b

    .line 491
    .end local v0    # "modeBits":I
    :cond_39
    const-string/jumbo v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 492
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_b

    .line 496
    .end local v0    # "modeBits":I
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 10
    .param p0, "comm"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B

    .prologue
    const/4 v7, -0x2

    .line 715
    const/4 v4, 0x0

    :try_start_2
    array-length v5, p1

    invoke-static {p0, p1, v4, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 716
    .local v2, "n":I
    if-nez v2, :cond_10

    .line 718
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    .line 737
    .end local v2    # "n":I
    :goto_f
    return-object v4

    .line 720
    .restart local v2    # "n":I
    :cond_10
    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 721
    .local v3, "status":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_31

    .line 722
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x4

    add-int/lit8 v5, v2, -0x4

    invoke-direct {v1, p1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 723
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v3, v1}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_27} :catch_37

    goto :goto_f

    .line 727
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "status":I
    :catch_28
    move-exception v0

    .line 728
    .local v0, "e":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v4, v5, :cond_56

    .line 730
    const/4 v4, 0x0

    goto :goto_f

    .line 725
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "n":I
    .restart local v3    # "status":I
    :cond_31
    :try_start_31
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_36} :catch_28
    .catch Ljava/io/InterruptedIOException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_f

    .line 735
    .end local v2    # "n":I
    .end local v3    # "status":I
    :catch_37
    move-exception v0

    .line 736
    .local v0, "e":Ljava/io/InterruptedIOException;
    const-string v4, "ParcelFileDescriptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read status; assuming dead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v7}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    goto :goto_f

    .line 732
    .local v0, "e":Landroid/system/ErrnoException;
    :cond_56
    const-string v4, "ParcelFileDescriptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read status; assuming dead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v7}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    goto :goto_f
.end method

.method private writeCommStatusAndClose(ILjava/lang/String;)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 662
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v5, :cond_20

    .line 664
    if-eqz p2, :cond_1f

    .line 665
    const-string v5, "ParcelFileDescriptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to inform peer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1f
    :goto_1f
    return-void

    .line 670
    :cond_20
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2a

    .line 671
    const-string v5, "ParcelFileDescriptor"

    const-string v6, "Peer expected signal when closed; unable to deliver after detach"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_2a
    const/4 v5, -0x1

    if-ne p1, v5, :cond_35

    .line 708
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 709
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_1f

    .line 679
    :cond_35
    :try_start_35
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v5

    iput-object v5, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 682
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_95

    if-eqz v5, :cond_4d

    .line 708
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 709
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_1f

    .line 685
    :cond_4d
    :try_start_4d
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v0

    .line 686
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 688
    .local v4, "writePtr":I
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, p1, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 689
    add-int/lit8 v4, v4, 0x4

    .line 691
    if-eqz p2, :cond_6d

    .line 692
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 693
    .local v3, "rawMsg":[B
    array-length v5, v3

    array-length v6, v0

    add-int/lit8 v6, v6, -0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 694
    .local v2, "len":I
    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 695
    add-int/lit8 v4, v2, 0x4

    .line 698
    .end local v2    # "len":I
    .end local v3    # "rawMsg":[B
    :cond_6d
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_73
    .catch Landroid/system/ErrnoException; {:try_start_4d .. :try_end_73} :catch_7b
    .catch Ljava/io/InterruptedIOException; {:try_start_4d .. :try_end_73} :catch_9e
    .catchall {:try_start_4d .. :try_end_73} :catchall_95

    .line 708
    .end local v0    # "buf":[B
    .end local v4    # "writePtr":I
    :goto_73
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 709
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_1f

    .line 699
    :catch_7b
    move-exception v1

    .line 701
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_7c
    const-string v5, "ParcelFileDescriptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to report status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_95

    goto :goto_73

    .line 708
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catchall_95
    move-exception v5

    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 709
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    throw v5

    .line 702
    :catch_9e
    move-exception v1

    .line 704
    .local v1, "e":Ljava/io/InterruptedIOException;
    :try_start_9f
    const-string v5, "ParcelFileDescriptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to report status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_9f .. :try_end_b7} :catchall_95

    goto :goto_73
.end method


# virtual methods
.method public canDetectErrors()Z
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 749
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    .line 751
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public checkError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    .line 772
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 792
    :cond_9
    :goto_9
    return-void

    .line 774
    :cond_a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-nez v0, :cond_26

    .line 775
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1a

    .line 776
    const-string v0, "ParcelFileDescriptor"

    const-string v1, "Peer didn\'t provide a comm channel; unable to check for errors"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 782
    :cond_1a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 785
    :cond_26
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    iget v0, v0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    if-eqz v0, :cond_9

    .line 789
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 605
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 607
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 612
    :goto_c
    return-void

    .line 607
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 610
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public closeWithError(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 624
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 626
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 634
    :goto_c
    return-void

    .line 626
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 629
    :cond_12
    if-nez p1, :cond_1c

    .line 630
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 869
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    .line 871
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public detachFd()I
    .registers 4

    .prologue
    .line 581
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_b

    .line 582
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 590
    :goto_a
    return v0

    .line 584
    :cond_b
    iget-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v1, :cond_17

    .line 585
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_17
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 588
    .local v0, "fd":I
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/os/Parcel;->clearFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 589
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    goto :goto_a
.end method

.method public dup()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 279
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 281
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_a
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_7

    .line 852
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 854
    :cond_7
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_10

    .line 855
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 858
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_19

    .line 859
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 862
    :cond_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 864
    return-void

    .line 862
    :catchall_1d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFd()I
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 560
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 565
    :goto_a
    return v0

    .line 562
    :cond_b
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_17

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_17
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    goto :goto_a
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 508
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 510
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    goto :goto_a
.end method

.method public getStatSize()J
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 519
    iget-object v4, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_d

    .line 520
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    .line 531
    :cond_c
    :goto_c
    return-wide v2

    .line 523
    :cond_d
    :try_start_d
    iget-object v4, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    .line 524
    .local v1, "st":Landroid/system/StructStat;
    iget v4, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v4

    if-nez v4, :cond_23

    iget v4, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 525
    :cond_23
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_c

    .line 529
    .end local v1    # "st":Landroid/system/StructStat;
    :catch_26
    move-exception v0

    .line 530
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v4, "ParcelFileDescriptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fstat() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public releaseResources()V
    .registers 1

    .prologue
    .line 652
    return-void
.end method

.method public seekTo(J)J
    .registers 8
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_b

    .line 543
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v2

    .line 546
    :goto_a
    return-wide v2

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, p1, p2, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_12} :catch_14

    move-result-wide v2

    goto :goto_a

    .line 547
    :catch_14
    move-exception v0

    .line 548
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 842
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 843
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ParcelFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 884
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 886
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 888
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 903
    :cond_c
    :goto_c
    return-void

    .line 888
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 891
    :cond_12
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 892
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_32

    .line 893
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 898
    :goto_24
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_c

    .line 900
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_c

    .line 896
    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24
.end method
