.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    .line 55
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 57
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 102
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 103
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 116
    .local v0, "flags":I
    :cond_1c
    :goto_1c
    iput v0, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 120
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_31

    .line 122
    :try_start_2c
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_88

    .line 127
    :cond_31
    :goto_31
    iget-object v1, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 128
    return-void

    .line 104
    .end local v0    # "flags":I
    :cond_39
    const-string v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "rws"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "rwd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 105
    :cond_51
    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v1, v2

    .line 106
    .restart local v0    # "flags":I
    const-string v1, "rws"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    goto :goto_1c

    .line 109
    :cond_63
    const-string v1, "rwd"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 111
    sget v1, Landroid/system/OsConstants;->O_SYNC:I

    or-int/2addr v0, v1

    goto :goto_1c

    .line 114
    .end local v0    # "flags":I
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .restart local v0    # "flags":I
    :catch_88
    move-exception v1

    goto :goto_31
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 160
    monitor-enter p0

    .line 161
    :try_start_6
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 162
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 165
    :cond_1a
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 174
    :cond_9
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 176
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_f

    .line 192
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, p0, Ljava/io/RandomAccessFile;->mode:I

    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 194
    :cond_f
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 191
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFilePointer()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x0

    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    .line 223
    :catch_d
    move-exception v0

    .line 224
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public length()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v2

    .line 238
    :catch_b
    move-exception v0

    .line 239
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 254
    iget-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-eq v1, v0, :cond_11

    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :cond_11
    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 303
    .local v0, "temp":I
    if-gez v0, :cond_c

    .line 304
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 306
    :cond_c
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 323
    .local v0, "temp":I
    if-gez v0, :cond_c

    .line 324
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 326
    :cond_c
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 382
    return-void
.end method

.method public final readFully([BII)V
    .registers 6
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 412
    :goto_4
    if-lez p3, :cond_15

    .line 413
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 414
    .local v0, "result":I
    if-gez v0, :cond_12

    .line 415
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 417
    :cond_12
    add-int/2addr p2, v0

    .line 418
    sub-int/2addr p3, v0

    .line 419
    goto :goto_4

    .line 420
    .end local v0    # "result":I
    :cond_15
    return-void
.end method

.method public final readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 436
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 455
    .local v1, "line":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 456
    .local v0, "foundTerminator":Z
    const-wide/16 v4, 0x0

    .line 458
    .local v4, "unreadPosition":J
    :goto_a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 459
    .local v2, "nextByte":I
    sparse-switch v2, :sswitch_data_42

    .line 474
    if-eqz v0, :cond_3d

    .line 475
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1a
    return-object v3

    .line 461
    :sswitch_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_26
    const/4 v3, 0x0

    goto :goto_1a

    .line 463
    :sswitch_28
    if-eqz v0, :cond_32

    .line 464
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    .line 467
    :cond_32
    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 470
    goto :goto_a

    .line 472
    :sswitch_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    .line 478
    :cond_3d
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 459
    :sswitch_data_42
    .sparse-switch
        -0x1 -> :sswitch_1b
        0xa -> :sswitch_38
        0xd -> :sswitch_28
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 497
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 514
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    .line 572
    .local v1, "utfSize":I
    if-nez v1, :cond_a

    .line 573
    const-string v2, ""

    .line 579
    :goto_9
    return-object v2

    .line 575
    :cond_a
    new-array v0, v1, [B

    .line 576
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1a

    .line 577
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 579
    :cond_1a
    new-array v2, v1, [C

    invoke-static {v0, v2, v4, v1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public final readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 531
    .local v0, "temp":I
    if-gez v0, :cond_c

    .line 532
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 534
    :cond_c
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .registers 8
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1f

    .line 597
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_1f
    :try_start_1f
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_28
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_28} :catch_29

    .line 604
    return-void

    .line 601
    :catch_29
    move-exception v0

    .line 602
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public setLength(J)V
    .registers 10
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gez v1, :cond_e

    .line 622
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "newLength < 0"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_e
    :try_start_e
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v4, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_15} :catch_2a

    .line 630
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 631
    .local v2, "filePointer":J
    cmp-long v1, v2, p1

    if-lez v1, :cond_20

    .line 632
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 636
    :cond_20
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_29

    .line 637
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 639
    :cond_29
    return-void

    .line 626
    .end local v2    # "filePointer":J
    :catch_2a
    move-exception v0

    .line 627
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public skipBytes(I)I
    .registers 10
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    if-lez p1, :cond_1b

    .line 655
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, "currentPos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 656
    .local v2, "eof":J
    int-to-long v6, p1

    add-long/2addr v6, v0

    cmp-long v5, v6, v2

    if-lez v5, :cond_19

    sub-long v6, v2, v0

    :goto_12
    long-to-int v4, v6

    .line 657
    .local v4, "newCount":I
    int-to-long v6, v4

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 660
    .end local v0    # "currentPos":J
    .end local v2    # "eof":J
    .end local v4    # "newCount":I
    :goto_18
    return v4

    .line 656
    .restart local v0    # "currentPos":J
    .restart local v2    # "eof":J
    :cond_19
    int-to-long v6, p1

    goto :goto_12

    .line 660
    .end local v0    # "currentPos":J
    .end local v2    # "eof":J
    :cond_1b
    const/4 v4, 0x0

    goto :goto_18
.end method

.method public write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 707
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 708
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 674
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 690
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_e

    .line 691
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 693
    :cond_e
    return-void
.end method

.method public final writeBoolean(Z)V
    .registers 3
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 722
    return-void

    .line 721
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final writeByte(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 737
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 750
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 751
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 753
    :cond_19
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 754
    return-void
.end method

.method public final writeChar(I)V
    .registers 2
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 769
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 783
    return-void
.end method

.method public final writeDouble(D)V
    .registers 6
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 798
    return-void
.end method

.method public final writeFloat(F)V
    .registers 3
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 813
    return-void
.end method

.method public final writeInt(I)V
    .registers 5
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 827
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 828
    return-void
.end method

.method public final writeLong(J)V
    .registers 6
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 841
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 842
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 843
    return-void
.end method

.method public final writeShort(I)V
    .registers 6
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 858
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    int-to-short v1, p1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    .line 859
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 860
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 877
    return-void
.end method
