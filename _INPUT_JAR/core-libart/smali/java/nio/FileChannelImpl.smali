.class final Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;
    }
.end annotation


# static fields
.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final ioObject:Ljava/io/Closeable;

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/nio/FileChannelImpl$1;

    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)V
    .registers 6
    .param p1, "ioObject"    # Ljava/io/Closeable;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "mode"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    .line 67
    iput-object p2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 68
    iput-object p1, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    .line 69
    iput p3, p0, Ljava/nio/FileChannelImpl;->mode:I

    .line 70
    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .registers 10
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 551
    .local v2, "lockEnd":J
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 552
    .local v0, "existingLock":Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2c

    .line 561
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_25
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 562
    monitor-exit p0

    return-void

    .line 557
    .restart local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 558
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    .line 550
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lockEnd":J
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 18
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .param p6, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int v7, v1, v2

    .line 96
    .local v7, "accessMode":I
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v7, v1, :cond_12

    .line 97
    if-nez p5, :cond_1e

    .line 98
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 100
    :cond_12
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v7, v1, :cond_1e

    .line 101
    if-eqz p5, :cond_1e

    .line 102
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 106
    :cond_1e
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2a

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_4d

    .line 107
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_4d
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 111
    .local v0, "pendingLock":Ljava/nio/channels/FileLock;
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    .line 113
    new-instance v9, Landroid/system/StructFlock;

    invoke-direct {v9}, Landroid/system/StructFlock;-><init>()V

    .line 114
    .local v9, "flock":Landroid/system/StructFlock;
    if-eqz p5, :cond_8c

    sget v1, Landroid/system/OsConstants;->F_RDLCK:I

    :goto_63
    int-to-short v1, v1

    iput-short v1, v9, Landroid/system/StructFlock;->l_type:S

    .line 115
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    int-to-short v1, v1

    iput-short v1, v9, Landroid/system/StructFlock;->l_whence:S

    .line 116
    iput-wide p1, v9, Landroid/system/StructFlock;->l_start:J

    .line 117
    invoke-static {p3, p4}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v9, Landroid/system/StructFlock;->l_len:J

    .line 119
    const/4 v10, 0x0

    .line 121
    .local v10, "success":Z
    :try_start_74
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p6, :cond_8f

    sget v1, Landroid/system/OsConstants;->F_SETLKW64:I

    :goto_7c
    invoke-interface {v2, v3, v1, v9}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_7f
    .catch Landroid/system/ErrnoException; {:try_start_74 .. :try_end_7f} :catch_94
    .catchall {:try_start_74 .. :try_end_7f} :catchall_9a

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_92

    const/4 v10, 0x1

    .line 125
    :goto_84
    if-nez v10, :cond_89

    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 129
    :cond_89
    if-eqz v10, :cond_a1

    .end local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :goto_8b
    return-object v0

    .line 114
    .end local v10    # "success":Z
    .restart local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :cond_8c
    sget v1, Landroid/system/OsConstants;->F_WRLCK:I

    goto :goto_63

    .line 121
    .restart local v10    # "success":Z
    :cond_8f
    :try_start_8f
    sget v1, Landroid/system/OsConstants;->F_SETLK64:I
    :try_end_91
    .catch Landroid/system/ErrnoException; {:try_start_8f .. :try_end_91} :catch_94
    .catchall {:try_start_8f .. :try_end_91} :catchall_9a

    goto :goto_7c

    :cond_92
    const/4 v10, 0x0

    goto :goto_84

    .line 122
    :catch_94
    move-exception v8

    .line 123
    .local v8, "errnoException":Landroid/system/ErrnoException;
    :try_start_95
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_9a

    .line 125
    .end local v8    # "errnoException":Landroid/system/ErrnoException;
    :catchall_9a
    move-exception v1

    if-nez v10, :cond_a0

    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    :cond_a0
    throw v1

    .line 129
    :cond_a1
    const/4 v0, 0x0

    goto :goto_8b
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .registers 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "copyingIn"    # Z

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    add-int v2, p1, p2

    if-ge v1, v2, :cond_17

    .line 532
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 533
    if-eqz p3, :cond_14

    .line 534
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 531
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 537
    :cond_17
    return v0
.end method

.method private checkOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 74
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 76
    :cond_c
    return-void
.end method

.method private checkReadable()V
    .registers 3

    .prologue
    .line 79
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_f

    .line 80
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 82
    :cond_f
    return-void
.end method

.method private checkWritable()V
    .registers 3

    .prologue
    .line 85
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_f

    .line 86
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 88
    :cond_f
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;J)I
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 296
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 297
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_12

    .line 329
    :goto_11
    return v4

    .line 301
    :cond_12
    const/4 v0, 0x0

    .line 302
    .local v0, "bytesRead":I
    const/4 v1, 0x0

    .line 304
    .local v1, "completed":Z
    :try_start_14
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_53

    .line 306
    const-wide/16 v6, -0x1

    cmp-long v5, p2, v6

    if-nez v5, :cond_3c

    .line 307
    :try_start_1d
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_24} :catch_45
    .catchall {:try_start_1d .. :try_end_24} :catchall_53

    move-result v0

    .line 311
    :goto_25
    if-nez v0, :cond_28

    .line 312
    const/4 v0, -0x1

    .line 322
    :cond_28
    :goto_28
    const/4 v1, 0x1

    .line 324
    if-eqz v1, :cond_5c

    if-ltz v0, :cond_5c

    :goto_2d
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 326
    if-lez v0, :cond_3a

    .line 327
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3a
    move v4, v0

    .line 329
    goto :goto_11

    .line 309
    :cond_3c
    :try_start_3c
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_3c .. :try_end_43} :catch_45
    .catchall {:try_start_3c .. :try_end_43} :catchall_53

    move-result v0

    goto :goto_25

    .line 314
    :catch_45
    move-exception v2

    .line 315
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_46
    iget v5, v2, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v5, v6, :cond_4e

    .line 317
    const/4 v0, 0x0

    goto :goto_28

    .line 319
    :cond_4e
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_53

    .line 324
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_53
    move-exception v5

    if-eqz v1, :cond_5e

    if-ltz v0, :cond_5e

    :goto_58
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v5

    :cond_5c
    move v3, v4

    goto :goto_2d

    :cond_5e
    move v3, v4

    goto :goto_58
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .registers 3
    .param p1, "lock"    # Ljava/nio/channels/FileLock;

    .prologue
    .line 569
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 570
    monitor-exit p0

    return-void

    .line 569
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferIoVec(Ljava/nio/IoVec;)I
    .registers 5
    .param p1, "ioVec"    # Ljava/nio/IoVec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/nio/IoVec;->init()I

    move-result v2

    if-nez v2, :cond_8

    .line 334
    const/4 v0, 0x0

    .line 346
    :goto_7
    return v0

    .line 336
    :cond_8
    const/4 v0, 0x0

    .line 337
    .local v0, "bytesTransferred":I
    const/4 v1, 0x0

    .line 339
    .local v1, "completed":Z
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 340
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v2}, Ljava/nio/IoVec;->doTransfer(Ljava/io/FileDescriptor;)I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1b

    move-result v0

    .line 341
    const/4 v1, 0x1

    .line 343
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 345
    invoke-virtual {p1, v0}, Ljava/nio/IoVec;->didTransfer(I)V

    goto :goto_7

    .line 343
    :catchall_1b
    move-exception v2

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2
.end method

.method private static translateLockLength(J)J
    .registers 4
    .param p0, "byteCount"    # J

    .prologue
    .line 134
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const-wide/16 p0, 0x0

    .end local p0    # "byteCount":J
    :cond_b
    return-wide p0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;J)I
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 487
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 488
    if-nez p1, :cond_10

    .line 489
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_18

    .line 492
    const/4 v0, 0x0

    .line 514
    :cond_17
    :goto_17
    return v0

    .line 494
    :cond_18
    const/4 v0, 0x0

    .line 495
    .local v0, "bytesWritten":I
    const/4 v1, 0x0

    .line 497
    .local v1, "completed":Z
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_49

    .line 499
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_3a

    .line 500
    :try_start_23
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_23 .. :try_end_2a} :catch_43
    .catchall {:try_start_23 .. :try_end_2a} :catchall_49

    move-result v0

    .line 507
    :goto_2b
    const/4 v1, 0x1

    .line 509
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 511
    if-lez v0, :cond_17

    .line 512
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_17

    .line 502
    :cond_3a
    :try_start_3a
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3a .. :try_end_41} :catch_43
    .catchall {:try_start_3a .. :try_end_41} :catchall_49

    move-result v0

    goto :goto_2b

    .line 504
    :catch_43
    move-exception v2

    .line 505
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_44
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_49

    .line 509
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_49
    move-exception v3

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v3
.end method


# virtual methods
.method public force(Z)V
    .registers 5
    .param p1, "metadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 207
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, v2

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    if-eq v1, v2, :cond_15

    .line 209
    if-eqz p1, :cond_16

    .line 210
    :try_start_e
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 218
    :cond_15
    :goto_15
    return-void

    .line 212
    :cond_16
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 214
    :catch_1e
    move-exception v0

    .line 215
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 92
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 17
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 161
    const/4 v9, 0x0

    .line 163
    .local v9, "resultLock":Ljava/nio/channels/FileLock;
    const/4 v0, 0x0

    .line 165
    .local v0, "completed":Z
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 166
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1e

    move-result-object v9

    .line 167
    const/4 v0, 0x1

    .line 170
    :try_start_13
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_16
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_13 .. :try_end_16} :catch_17

    .line 176
    return-object v9

    .line 171
    :catch_17
    move-exception v8

    .line 172
    .local v8, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1

    .line 169
    .end local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catchall_1e
    move-exception v1

    .line 170
    :try_start_1f
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_22
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1f .. :try_end_22} :catch_23

    .line 172
    throw v1

    .line 171
    :catch_23
    move-exception v8

    .line 172
    .restart local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    throw v1
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 22
    .param p1, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 222
    if-nez p1, :cond_d

    .line 223
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "mapMode == null"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v3, p2, v10

    if-ltz v3, :cond_20

    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-ltz v3, :cond_20

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, p4, v10

    if-lez v3, :cond_47

    .line 226
    :cond_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_47
    move-object/from16 v0, p0

    iget v3, v0, Ljava/nio/FileChannelImpl;->mode:I

    sget v6, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int v2, v3, v6

    .line 229
    .local v2, "accessMode":I
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne v2, v3, :cond_5f

    .line 230
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_69

    .line 231
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 233
    :cond_5f
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    if-ne v2, v3, :cond_69

    .line 234
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 236
    :cond_69
    add-long v10, p2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v14

    cmp-long v3, v10, v14

    if-lez v3, :cond_7e

    .line 240
    :try_start_73
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v10, p2, p4

    invoke-interface {v3, v6, v10, v11}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_7e
    .catch Landroid/system/ErrnoException; {:try_start_73 .. :try_end_7e} :catch_ac

    .line 255
    :cond_7e
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v6, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v3, v6}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v10

    rem-long v10, p2, v10

    sub-long v4, p2, v10

    .line 256
    .local v4, "alignment":J
    sub-long v10, p2, v4

    long-to-int v9, v10

    .line 257
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    int-to-long v10, v9

    add-long v6, p4, v10

    move-object/from16 v8, p1

    invoke-static/range {v3 .. v8}, Ljava/nio/MemoryBlock;->mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    move-result-object v7

    .line 258
    .local v7, "block":Ljava/nio/MemoryBlock;
    new-instance v6, Ljava/nio/DirectByteBuffer;

    move-wide/from16 v0, p4

    long-to-int v8, v0

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_d0

    const/4 v10, 0x1

    :goto_a6
    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    return-object v6

    .line 241
    .end local v4    # "alignment":J
    .end local v7    # "block":Ljava/nio/MemoryBlock;
    .end local v9    # "offset":I
    :catch_ac
    move-exception v13

    .line 247
    .local v13, "ftruncateException":Landroid/system/ErrnoException;
    :try_start_ad
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v6}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-nez v3, :cond_c5

    iget v3, v13, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v6, :cond_7e

    .line 248
    :cond_c5
    invoke-virtual {v13}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_ca
    .catch Landroid/system/ErrnoException; {:try_start_ad .. :try_end_ca} :catch_ca

    .line 250
    :catch_ca
    move-exception v12

    .line 251
    .local v12, "fstatException":Landroid/system/ErrnoException;
    invoke-virtual {v12}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 258
    .end local v12    # "fstatException":Landroid/system/ErrnoException;
    .end local v13    # "ftruncateException":Landroid/system/ErrnoException;
    .restart local v4    # "alignment":J
    .restart local v7    # "block":Ljava/nio/MemoryBlock;
    .restart local v9    # "offset":I
    :cond_d0
    const/4 v10, 0x0

    goto :goto_a6
.end method

.method public position()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 264
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x0

    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_e} :catch_10

    move-result-wide v2

    return-wide v2

    .line 265
    :catch_10
    move-exception v0

    .line 266
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 8
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 272
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_22

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_22
    :try_start_22
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 280
    return-object p0

    .line 277
    :catch_2c
    move-exception v0

    .line 278
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 351
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 352
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 353
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release(Ljava/nio/channels/FileLock;)V
    .registers 7
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 191
    new-instance v1, Landroid/system/StructFlock;

    invoke-direct {v1}, Landroid/system/StructFlock;-><init>()V

    .line 192
    .local v1, "flock":Landroid/system/StructFlock;
    sget v2, Landroid/system/OsConstants;->F_UNLCK:I

    int-to-short v2, v2

    iput-short v2, v1, Landroid/system/StructFlock;->l_type:S

    .line 193
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    int-to-short v2, v2

    iput-short v2, v1, Landroid/system/StructFlock;->l_whence:S

    .line 194
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/system/StructFlock;->l_start:J

    .line 195
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/system/StructFlock;->l_len:J

    .line 197
    :try_start_22
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->F_SETLKW64:I

    invoke-interface {v2, v3, v4, v1}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_2b} :catch_2f

    .line 202
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 203
    return-void

    .line 198
    :catch_2f
    move-exception v0

    .line 199
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public size()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 359
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_d} :catch_e

    return-wide v2

    .line 360
    :catch_e
    move-exception v0

    .line 361
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 16
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 367
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_f

    .line 368
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 370
    :cond_f
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 371
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_25

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-ltz v1, :cond_25

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, p4, v4

    if-lez v1, :cond_48

    .line 372
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_48
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-lez v1, :cond_53

    .line 375
    const-wide/16 v4, 0x0

    .line 402
    :goto_52
    return-wide v4

    .line 384
    :cond_53
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_82

    move-object v0, p1

    .line 385
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 386
    .local v0, "fileSrc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 387
    .local v8, "size":J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 388
    .local v2, "filePosition":J
    sub-long v4, v8, v2

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 389
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 391
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    add-long v4, v2, p4

    :try_start_71
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 392
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_7d

    move-result v1

    int-to-long v4, v1

    .line 394
    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_52

    :catchall_7d
    move-exception v1

    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v1

    .line 399
    .end local v0    # "fileSrc":Ljava/nio/channels/FileChannel;
    .end local v2    # "filePosition":J
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "size":J
    :cond_82
    long-to-int v1, p4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 400
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 401
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 402
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v4, v1

    goto :goto_52
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 25
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 407
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    .line 408
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 410
    :cond_f
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 411
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/FileChannelImpl;

    if-eqz v2, :cond_1f

    move-object/from16 v2, p5

    .line 412
    check-cast v2, Ljava/nio/FileChannelImpl;

    invoke-direct {v2}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 414
    :cond_1f
    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-ltz v2, :cond_2b

    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-gez v2, :cond_52

    .line 415
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_52
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-eqz v2, :cond_60

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-ltz v2, :cond_63

    .line 419
    :cond_60
    const-wide/16 v16, 0x0

    .line 451
    :goto_62
    return-wide v16

    .line 421
    :cond_63
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    sub-long v6, v6, p1

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 424
    const/4 v13, 0x0

    .line 425
    .local v13, "completed":Z
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/SocketChannelImpl;

    if-eqz v2, :cond_b9

    move-object/from16 v2, p5

    .line 426
    check-cast v2, Ljava/nio/SocketChannelImpl;

    invoke-virtual {v2}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 428
    .local v3, "outFd":Ljava/io/FileDescriptor;
    :try_start_7e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_ad

    .line 430
    :try_start_81
    new-instance v5, Landroid/util/MutableLong;

    move-wide/from16 v0, p1

    invoke-direct {v5, v0, v1}, Landroid/util/MutableLong;-><init>(J)V

    .line 431
    .local v5, "offset":Landroid/util/MutableLong;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    :try_end_93
    .catch Landroid/system/ErrnoException; {:try_start_81 .. :try_end_93} :catch_9b
    .catchall {:try_start_81 .. :try_end_93} :catchall_ad

    move-result-wide v16

    .line 432
    .local v16, "rc":J
    const/4 v13, 0x1

    .line 442
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_62

    .line 434
    .end local v5    # "offset":Landroid/util/MutableLong;
    .end local v16    # "rc":J
    :catch_9b
    move-exception v14

    .line 437
    .local v14, "errnoException":Landroid/system/ErrnoException;
    :try_start_9c
    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v2, v4, :cond_b4

    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v2, v4, :cond_b4

    .line 438
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ad

    .line 442
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :catchall_ad
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2

    .restart local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_b4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 446
    .end local v3    # "outFd":Ljava/io/FileDescriptor;
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_b9
    const/4 v12, 0x0

    .line 448
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    :try_start_ba
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v6, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    .line 449
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_cb
    .catchall {:try_start_ba .. :try_end_cb} :catchall_d3

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 451
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_62

    :catchall_d3
    move-exception v2

    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 8
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 457
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_22

    .line 458
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_22
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 461
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-gez v1, :cond_34

    .line 463
    :try_start_2d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_34} :catch_40

    .line 468
    :cond_34
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_3f

    .line 469
    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 471
    :cond_3f
    return-object p0

    .line 464
    :catch_40
    move-exception v0

    .line 465
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 15
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 181
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 519
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 520
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 521
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
