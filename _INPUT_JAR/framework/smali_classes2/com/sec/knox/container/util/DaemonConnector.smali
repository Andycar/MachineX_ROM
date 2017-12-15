.class public Lcom/sec/knox/container/util/DaemonConnector;
.super Ljava/lang/Object;
.source "DaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;,
        Lcom/sec/knox/container/util/DaemonConnector$Command;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xea60

.field private static final LOGD:Z = true

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p1, "callbacks"    # Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 67
    const/16 v0, 0x1000

    iput v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->BUFFER_SIZE:I

    .line 71
    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    .line 72
    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    if-eqz p4, :cond_26

    .end local p4    # "logTag":Ljava/lang/String;
    :goto_23
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    .line 76
    return-void

    .line 75
    .restart local p4    # "logTag":Ljava/lang/String;
    :cond_26
    const-string p4, "ECS_DaemonConnector"

    goto :goto_23
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x22

    .line 407
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_25

    const/4 v1, 0x1

    .line 408
    .local v1, "hasSpaces":Z
    :goto_b
    if-eqz v1, :cond_10

    .line 409
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 413
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v3, :cond_35

    .line 414
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    if-ne v0, v5, :cond_27

    .line 417
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 407
    .end local v0    # "c":C
    .end local v1    # "hasSpaces":Z
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_25
    const/4 v1, 0x0

    goto :goto_b

    .line 418
    .restart local v0    # "c":C
    .restart local v1    # "hasSpaces":Z
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_27
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_31

    .line 419
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 421
    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 425
    .end local v0    # "c":C
    :cond_35
    if-eqz v1, :cond_3a

    .line 426
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_3a
    return-void
.end method

.method private listenToSocket()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v12, 0x0

    .line 111
    .local v12, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_256
    .catchall {:try_start_1 .. :try_end_6} :catchall_c3

    .line 112
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .local v13, "socket":Landroid/net/LocalSocket;
    :try_start_6
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v16, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 115
    .local v2, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 117
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 118
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_a5
    .catchall {:try_start_6 .. :try_end_21} :catchall_19c

    .line 119
    :try_start_21
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 120
    monitor-exit v16
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_a2

    .line 122
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    invoke-interface {v15}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 124
    const/16 v15, 0x1000

    new-array v3, v15, [B

    .line 125
    .local v3, "buffer":[B
    const/4 v14, 0x0

    .line 128
    .local v14, "start":I
    :goto_36
    rsub-int v15, v14, 0x1000

    invoke-virtual {v9, v3, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 129
    .local v4, "count":I
    if-gez v4, :cond_10b

    .line 130
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reading with start = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_60} :catch_a5
    .catchall {:try_start_2a .. :try_end_60} :catchall_19c

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 183
    :try_start_67
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_1f7

    if-eqz v15, :cond_9b

    .line 185
    :try_start_6d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closing stream for "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_96} :catch_1da
    .catchall {:try_start_6d .. :try_end_96} :catchall_1f7

    .line 190
    :goto_96
    const/4 v15, 0x0

    :try_start_97
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 192
    :cond_9b
    monitor-exit v16
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_1f7

    .line 195
    if-eqz v13, :cond_a1

    .line 196
    :try_start_9e
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_1fa

    .line 202
    :cond_a1
    :goto_a1
    return-void

    .line 120
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v14    # "start":I
    :catchall_a2
    move-exception v15

    :try_start_a3
    monitor-exit v16
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw v15
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_19c

    .line 177
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :catch_a5
    move-exception v7

    move-object v12, v13

    .line 178
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .local v7, "ex":Ljava/io/IOException;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :goto_a7
    :try_start_a7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Communications error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    throw v7
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_c3

    .line 182
    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_c3
    move-exception v15

    :goto_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 183
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_234

    if-eqz v17, :cond_104

    .line 185
    :try_start_d3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "closing stream for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_fc} :catch_215
    .catchall {:try_start_d3 .. :try_end_fc} :catchall_234

    .line 190
    :goto_fc
    const/16 v17, 0x0

    :try_start_fe
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 192
    :cond_104
    monitor-exit v16
    :try_end_105
    .catchall {:try_start_fe .. :try_end_105} :catchall_234

    .line 195
    if-eqz v12, :cond_10a

    .line 196
    :try_start_107
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_237

    .line 200
    :cond_10a
    :goto_10a
    throw v15

    .line 135
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v14    # "start":I
    :cond_10b
    add-int/2addr v4, v14

    .line 136
    const/4 v14, 0x0

    .line 138
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_10e
    if-ge v8, v4, :cond_1a0

    .line 139
    :try_start_110
    aget-byte v15, v3, v8

    if-nez v15, :cond_167

    .line 140
    new-instance v10, Ljava/lang/String;

    sub-int v15, v8, v14

    const-string v16, "UTF-8"

    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v3, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    .local v10, "rawEvent":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RCV <- {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_142} :catch_a5
    .catchall {:try_start_110 .. :try_end_142} :catchall_19c

    .line 145
    :try_start_142
    invoke-static {v10}, Lcom/sec/knox/container/util/DaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v6

    .line 146
    .local v6, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited()Z

    move-result v15

    if-eqz v15, :cond_16a

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v17

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .end local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :goto_165
    add-int/lit8 v14, v8, 0x1

    .line 138
    .end local v10    # "rawEvent":Ljava/lang/String;
    :cond_167
    add-int/lit8 v8, v8, 0x1

    goto :goto_10e

    .line 152
    .restart local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v10    # "rawEvent":Ljava/lang/String;
    :cond_16a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/DaemonEvent;->getCmdNumber()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->add(ILcom/sec/knox/container/util/DaemonEvent;)V
    :try_end_177
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_177} :catch_178
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_177} :catch_a5
    .catchall {:try_start_142 .. :try_end_177} :catchall_19c

    goto :goto_165

    .line 154
    .end local v6    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_178
    move-exception v5

    .line 155
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_179
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem parsing message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    goto :goto_165

    .line 182
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "rawEvent":Ljava/lang/String;
    .end local v14    # "start":I
    :catchall_19c
    move-exception v15

    move-object v12, v13

    .end local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_c4

    .line 161
    .end local v12    # "socket":Landroid/net/LocalSocket;
    .restart local v2    # "address":Landroid/net/LocalSocketAddress;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "socket":Landroid/net/LocalSocket;
    .restart local v14    # "start":I
    :cond_1a0
    if-nez v14, :cond_1cc

    .line 162
    new-instance v10, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v10, v3, v14, v4, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    .restart local v10    # "rawEvent":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RCV incomplete <- {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 169
    .end local v10    # "rawEvent":Ljava/lang/String;
    :cond_1cc
    if-eq v14, v4, :cond_1d7

    .line 170
    rsub-int v11, v14, 0x1000

    .line 171
    .local v11, "remaining":I
    const/4 v15, 0x0

    invoke-static {v3, v14, v3, v15, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_1d4} :catch_a5
    .catchall {:try_start_179 .. :try_end_1d4} :catchall_19c

    .line 172
    move v14, v11

    .line 173
    goto/16 :goto_36

    .line 174
    .end local v11    # "remaining":I
    :cond_1d7
    const/4 v14, 0x0

    goto/16 :goto_36

    .line 187
    .end local v8    # "i":I
    :catch_1da
    move-exception v5

    .line 188
    .local v5, "e":Ljava/io/IOException;
    :try_start_1db
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing output stream: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_96

    .line 192
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1f7
    move-exception v15

    monitor-exit v16
    :try_end_1f9
    .catchall {:try_start_1db .. :try_end_1f9} :catchall_1f7

    throw v15

    .line 198
    :catch_1fa
    move-exception v7

    .line 199
    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 187
    .end local v2    # "address":Landroid/net/LocalSocketAddress;
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "socket":Landroid/net/LocalSocket;
    .end local v14    # "start":I
    .restart local v12    # "socket":Landroid/net/LocalSocket;
    :catch_215
    move-exception v5

    .line 188
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_216
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing output stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_fc

    .line 192
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_234
    move-exception v15

    monitor-exit v16
    :try_end_236
    .catchall {:try_start_216 .. :try_end_236} :catchall_234

    throw v15

    .line 198
    :catch_237
    move-exception v7

    .line 199
    .restart local v7    # "ex":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing socket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_10a

    .line 177
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_256
    move-exception v7

    goto/16 :goto_a7
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_21

    .line 211
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    :cond_21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    move-object v2, p3

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_27
    if-ge v3, v4, :cond_5a

    aget-object v0, v2, v3

    .line 216
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4f

    .line 218
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_4f
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p1, v1}, Lcom/sec/knox/container/util/DaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 224
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "argString":Ljava/lang/String;
    :cond_5a
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 367
    .local v5, "rawEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    .line 368
    .local v2, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    move-object v0, v2

    .local v0, "arr$":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 369
    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 371
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1c
    return-object v5
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expectedCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 382
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    .line 383
    .local v2, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_47

    .line 384
    aget-object v1, v2, v4

    .line 385
    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    .line 386
    .local v0, "code":I
    if-ne v0, p2, :cond_23

    .line 387
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 389
    :cond_23
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected list response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 394
    .end local v0    # "code":I
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_47
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v2, v6

    .line 395
    .local v3, "finalEvent":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v3}, Lcom/sec/knox/container/util/DaemonEvent;->isClassOk()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 396
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected final event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 399
    :cond_6c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 474
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 475
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public execute(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 236
    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    .line 250
    .local v0, "events":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    .line 251
    new-instance v1, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_22
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public varargs execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 24
    .param p1, "timeout"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 299
    .local v9, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/knox/container/util/DaemonEvent;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 300
    .local v12, "sequenceNumber":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    .local v4, "cmdBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 304
    .local v14, "startTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/knox/container/util/DaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "logCmd":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_70

    .line 312
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SND -> {"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 315
    :cond_70
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 318
    .local v11, "sentCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 319
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v13, :cond_92

    .line 320
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string v17, "missing output stream"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 328
    :catchall_8f
    move-exception v13

    monitor-exit v16
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_8f

    throw v13

    .line 323
    :cond_92
    :try_start_92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a7} :catch_d6
    .catchall {:try_start_92 .. :try_end_a7} :catchall_8f

    .line 328
    :try_start_a7
    monitor-exit v16
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_8f

    .line 330
    const/4 v8, 0x0

    .line 332
    .local v8, "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move/from16 v0, p1

    invoke-virtual {v13, v12, v0, v11}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    .line 333
    if-nez v8, :cond_e2

    .line 334
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timed-out waiting for response to "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 335
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    invoke-direct {v13, v10, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 324
    .end local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_d6
    move-exception v5

    .line 325
    .local v5, "e":Ljava/lang/Exception;
    :try_start_d7
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string/jumbo v17, "problem sending command"

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v5}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_e2
    .catchall {:try_start_d7 .. :try_end_e2} :catchall_8f

    .line 337
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_e2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RMV <- {"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassContinue()Z

    move-result v13

    if-nez v13, :cond_a9

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 342
    .local v6, "endTime":J
    sub-long v16, v6, v14

    const-wide/16 v18, 0x1f4

    cmp-long v13, v16, v18

    if-lez v13, :cond_11a

    .line 348
    :cond_11a
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassClientError()Z

    move-result v13

    if-eqz v13, :cond_126

    .line 349
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;

    invoke-direct {v13, v10, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 351
    :cond_126
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassServerError()Z

    move-result v13

    if-eqz v13, :cond_132

    .line 352
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    invoke-direct {v13, v10, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    .line 355
    :cond_132
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sec/knox/container/util/DaemonEvent;

    return-object v13
.end method

.method public executeForList(Lcom/sec/knox/container/util/DaemonConnector$Command;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .param p1, "cmd"    # Lcom/sec/knox/container/util/DaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 268
    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .prologue
    .line 282
    const v0, 0xea60

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "event":Ljava/lang/String;
    :try_start_5
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 99
    const-string v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    .line 104
    :cond_22
    :goto_22
    return v5

    .line 101
    :catch_23
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public monitor()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 80
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 86
    :goto_28
    :try_start_28
    invoke-direct {p0}, Lcom/sec/knox/container/util/DaemonConnector;->listenToSocket()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_28

    .line 87
    :catch_2c
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in DaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    .line 89
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_28
.end method
