.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 58
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 59
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 76
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 10
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_c

    .line 83
    :try_start_8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_28

    .line 96
    :goto_b
    return-void

    .line 89
    :cond_c
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 91
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_11
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_23

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_b

    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 84
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_28
    move-exception v1

    goto :goto_b
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 101
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .registers 8
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_8

    .line 108
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_24

    .line 121
    :goto_7
    return-void

    .line 114
    :cond_8
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 116
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1f

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_7

    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 109
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_24
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method closeFd(I)V
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_12

    .line 169
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_13

    .line 172
    :goto_d
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 174
    :cond_12
    return-void

    .line 170
    :catch_13
    move-exception v0

    goto :goto_d
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 125
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .registers 10
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_39

    .line 130
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 137
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 141
    :goto_13
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_44

    iget-boolean v2, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v2, :cond_44

    .line 142
    iget-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 143
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3e

    .line 145
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v0    # "waitTime":J
    :catchall_36
    move-exception v2

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    :try_start_38
    throw v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 161
    :catchall_39
    move-exception v2

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v2

    .line 150
    .restart local v0    # "waitTime":J
    :cond_3e
    :try_start_3e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_36

    goto :goto_13

    .line 151
    :catch_42
    move-exception v2

    goto :goto_13

    .line 156
    .end local v0    # "waitTime":J
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_50

    .line 157
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_36

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 163
    return-void
.end method

.method public kill()V
    .registers 2

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 180
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0xa

    .line 185
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 189
    .local v0, "buffer":[B
    monitor-enter p0

    .line 190
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 191
    .local v7, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v7, :cond_16

    .line 192
    const-string v10, "TransferPipe"

    const-string v11, "Pipe has been closed..."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit p0

    .line 253
    :goto_15
    return-void

    .line 195
    :cond_16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 196
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 197
    .local v4, "fos":Ljava/io/FileOutputStream;
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_50

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "bufferPrefix":[B
    const/4 v6, 0x1

    .line 202
    .local v6, "needPrefix":Z
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v10, :cond_33

    .line 203
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 208
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "size":I
    if-lez v8, :cond_7f

    .line 210
    if-nez v1, :cond_53

    .line 211
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3f} :catch_40

    goto :goto_33

    .line 241
    .end local v8    # "size":I
    :catch_40
    move-exception v2

    .line 242
    .local v2, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 243
    :try_start_42
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit p0

    goto :goto_15

    .line 246
    :catchall_4d
    move-exception v10

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_4d

    throw v10

    .line 197
    .end local v1    # "bufferPrefix":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "needPrefix":Z
    .end local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catchall_50
    move-exception v10

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v10

    .line 213
    .restart local v1    # "bufferPrefix":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "needPrefix":Z
    .restart local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "size":I
    :cond_53
    const/4 v9, 0x0

    .line 214
    .local v9, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_55
    if-ge v5, v8, :cond_77

    .line 215
    :try_start_57
    aget-byte v10, v0, v5

    if-eq v10, v11, :cond_74

    .line 216
    if-le v5, v9, :cond_62

    .line 217
    sub-int v10, v5, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 219
    :cond_62
    move v9, v5

    .line 220
    if-eqz v6, :cond_69

    .line 221
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 222
    const/4 v6, 0x0

    .line 225
    :cond_69
    add-int/lit8 v5, v5, 0x1

    .line 226
    if-ge v5, v8, :cond_71

    aget-byte v10, v0, v5

    if-ne v10, v11, :cond_69

    .line 227
    :cond_71
    if-ge v5, v8, :cond_74

    .line 228
    const/4 v6, 0x1

    .line 214
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 232
    :cond_77
    if-le v8, v9, :cond_33

    .line 233
    sub-int v10, v8, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_33

    .line 238
    .end local v5    # "i":I
    .end local v9    # "start":I
    :cond_7f
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_84} :catch_40

    move-result v10

    if-eqz v10, :cond_87

    .line 249
    :cond_87
    monitor-enter p0

    .line 250
    const/4 v10, 0x1

    :try_start_89
    iput-boolean v10, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit p0

    goto :goto_15

    :catchall_90
    move-exception v10

    monitor-exit p0
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_90

    throw v10
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 71
    return-void
.end method
