.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$1;,
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:J

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 70
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 71
    if-ltz p2, :cond_1c

    .line 72
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    .line 77
    if-lez p2, :cond_35

    .line 78
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    const/4 v1, 0x3

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    .line 82
    :goto_1b
    return-void

    .line 74
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    goto :goto_1b
.end method

.method static synthetic access$200(Landroid/os/MemoryFile;)I
    .registers 2
    .param p0, "x0"    # Landroid/os/MemoryFile;

    .prologue
    .line 36
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isDeactivated()Z
    .registers 5

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/os/MemoryFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;J[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;J[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .registers 5
    .param p1, "allowPurging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 162
    .local v0, "oldValue":Z
    if-eq v0, p1, :cond_f

    .line 163
    iget-object v2, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_11

    const/4 v1, 0x1

    :goto_a
    invoke-static {v2, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    .line 164
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    .line 166
    :cond_f
    monitor-exit p0

    return v0

    .line 163
    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    .line 161
    .end local v0    # "oldValue":Z
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 90
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    .line 93
    :cond_e
    return-void
.end method

.method deactivate()V
    .registers 5

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_11

    .line 105
    :try_start_6
    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    iget v1, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v2, v3, v1}, Landroid/os/MemoryFile;->native_munmap(JI)V

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    .line 111
    :cond_11
    :goto_11
    return-void

    .line 107
    :catch_12
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 130
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    .line 133
    :cond_10
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .prologue
    .line 184
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_e
    if-ltz p3, :cond_24

    array-length v0, p1

    if-gt p3, v0, :cond_24

    if-ltz p4, :cond_24

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_24

    if-ltz p2, :cond_24

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_24

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p2

    if-le p4, v0, :cond_2a

    .line 207
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 209
    :cond_2a
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    iget-boolean v8, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v8}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;J[BIIIZ)I

    move-result v0

    return v0
.end method

.method public writeBytes([BIII)V
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 225
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write to deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_e
    if-ltz p2, :cond_24

    array-length v0, p1

    if-gt p2, v0, :cond_24

    if-ltz p4, :cond_24

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_24

    if-ltz p3, :cond_24

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_24

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_2a

    .line 231
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 233
    :cond_2a
    iget-object v1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/os/MemoryFile;->mAddress:J

    iget-boolean v8, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v8}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;J[BIIIZ)V

    .line 234
    return-void
.end method
