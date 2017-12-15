.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 62
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 68
    :try_start_11
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    iget-object v5, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 72
    return-void

    .line 69
    :catch_1e
    move-exception v0

    .line 70
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 80
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 81
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 83
    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    .line 95
    const/16 v5, 0x2000

    new-array v4, v5, [B

    .line 97
    .local v4, "temp":[B
    :cond_7
    :goto_7
    :try_start_7
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ne v5, v8, :cond_93

    .line 98
    const/4 v5, 0x0

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v6}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 99
    .local v0, "cmd":I
    if-ne v0, v9, :cond_67

    .line 101
    const/4 v5, 0x4

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v6}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    .line 102
    .local v2, "len":I
    :goto_22
    if-lez v2, :cond_7

    .line 103
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 104
    .local v3, "n":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_5f

    .line 105
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_52} :catch_52
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_52} :catch_78
    .catchall {:try_start_7 .. :try_end_52} :catchall_97

    .line 127
    .end local v0    # "cmd":I
    .end local v2    # "len":I
    .end local v3    # "n":I
    :catch_52
    move-exception v5

    move-object v1, v5

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    :goto_54
    :try_start_54
    const-string v5, "FileBridge"

    const-string v6, "Failed during bridge"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_97

    .line 130
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void

    .line 108
    .restart local v0    # "cmd":I
    .restart local v2    # "len":I
    .restart local v3    # "n":I
    :cond_5f
    :try_start_5f
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 109
    sub-int/2addr v2, v3

    .line 110
    goto :goto_22

    .line 112
    .end local v2    # "len":I
    .end local v3    # "n":I
    :cond_67
    const/4 v5, 0x2

    if-ne v0, v5, :cond_7b

    .line 114
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 115
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_7

    .line 127
    .end local v0    # "cmd":I
    :catch_78
    move-exception v5

    move-object v1, v5

    goto :goto_54

    .line 117
    .restart local v0    # "cmd":I
    :cond_7b
    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 119
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 120
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 122
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_93
    .catch Landroid/system/ErrnoException; {:try_start_5f .. :try_end_93} :catch_52
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_93} :catch_78
    .catchall {:try_start_5f .. :try_end_93} :catchall_97

    .line 130
    .end local v0    # "cmd":I
    :cond_93
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_5e

    :catchall_97
    move-exception v5

    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    throw v5
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "target"    # Ljava/io/FileDescriptor;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    .line 87
    return-void
.end method
