.class public final Lcom/android/server/DrsService;
.super Ljava/lang/Object;
.source "DrsService.java"


# static fields
.field private static final DRSLOG:Z = false

.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "drsService"

.field private static instance:Lcom/android/server/DrsService;


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/DrsService;->buf:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DrsService;->buflen:I

    .line 46
    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_6

    .line 75
    :goto_5
    return v2

    .line 62
    :cond_6
    :try_start_6
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    .line 64
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "drsd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 67
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 69
    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    .line 70
    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2b} :catch_2c

    goto :goto_5

    .line 71
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_2c
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    .line 73
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private disconnect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_27

    .line 87
    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_13

    .line 88
    iget-object v0, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_25

    .line 92
    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1c

    .line 93
    iget-object v0, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_23

    .line 96
    :cond_1c
    :goto_1c
    iput-object v1, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    .line 97
    iput-object v1, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    .line 98
    iput-object v1, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    .line 99
    return-void

    .line 94
    :catch_23
    move-exception v0

    goto :goto_1c

    .line 89
    :catch_25
    move-exception v0

    goto :goto_13

    .line 84
    :catch_27
    move-exception v0

    goto :goto_a
.end method

.method private execute(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "res":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 211
    :goto_8
    return v2

    .line 210
    :catch_9
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_8
.end method

.method public static getInstance()Lcom/android/server/DrsService;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/android/server/DrsService;

    invoke-direct {v0}, Lcom/android/server/DrsService;-><init>()V

    sput-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    .line 52
    :cond_b
    sget-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    return-object v0
.end method

.method private readBytes([BI)Z
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "off":I
    if-gez p2, :cond_6

    .line 126
    :goto_4
    return v3

    .line 113
    .local v0, "count":I
    :cond_5
    add-int/2addr v2, v0

    .line 105
    .end local v0    # "count":I
    :cond_6
    if-eq v2, p2, :cond_12

    .line 107
    :try_start_8
    iget-object v4, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_16

    move-result v0

    .line 108
    .restart local v0    # "count":I
    if-gtz v0, :cond_5

    .line 123
    .end local v0    # "count":I
    :cond_12
    :goto_12
    if-ne v2, p2, :cond_18

    .line 124
    const/4 v3, 0x1

    goto :goto_4

    .line 114
    :catch_16
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_12

    .line 125
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_18
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    goto :goto_4
.end method

.method private readReply()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/android/server/DrsService;->buflen:I

    .line 132
    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/DrsService;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_e

    .line 144
    :cond_d
    :goto_d
    return v1

    .line 134
    :cond_e
    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/DrsService;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 135
    .local v0, "len":I
    if-lt v0, v2, :cond_24

    const/16 v3, 0x400

    if-le v0, v3, :cond_28

    .line 138
    :cond_24
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    goto :goto_d

    .line 141
    :cond_28
    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/DrsService;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 143
    iput v0, p0, Lcom/android/server/DrsService;->buflen:I

    move v1, v2

    .line 144
    goto :goto_d
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DrsService;->connect()Z

    move-result v1

    if-nez v1, :cond_b

    .line 173
    const-string v0, "-1"
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_34

    .line 201
    :goto_9
    monitor-exit p0

    return-object v0

    .line 176
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 184
    invoke-direct {p0}, Lcom/android/server/DrsService;->connect()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 185
    :cond_1d
    const-string v0, "-1"

    goto :goto_9

    .line 191
    :cond_20
    invoke-direct {p0}, Lcom/android/server/DrsService;->readReply()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 192
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/DrsService;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 196
    .local v0, "s":Ljava/lang/String;
    goto :goto_9

    .line 201
    .end local v0    # "s":Ljava/lang/String;
    :cond_31
    const-string v0, "-1"
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_9

    .line 170
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .registers 11
    .param p1, "_cmd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 149
    .local v0, "cmd":[B
    array-length v2, v0

    .line 150
    .local v2, "len":I
    if-lt v2, v3, :cond_d

    const/16 v5, 0x400

    if-le v2, v5, :cond_17

    .line 151
    :cond_d
    const-string v3, "drsService"

    const-string/jumbo v5, "size error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 165
    :goto_16
    return v3

    .line 154
    :cond_17
    iget-object v5, p0, Lcom/android/server/DrsService;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 155
    iget-object v5, p0, Lcom/android/server/DrsService;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 157
    :try_start_27
    iget-object v5, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    iget-object v5, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_37

    goto :goto_16

    .line 159
    :catch_37
    move-exception v1

    .line 162
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    move v3, v4

    .line 163
    goto :goto_16
.end method


# virtual methods
.method public relabelAppDir(Ljava/lang/String;)Z
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->execute(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_31

    .line 236
    const-string v1, "drsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relabeling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_30
    return v0

    .line 240
    :cond_31
    const-string v1, "drsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relabeling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " succeeded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x1

    goto :goto_30
.end method

.method public relabelDataDir(Ljava/util/Queue;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 219
    .local v2, "result":Z
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/DrsService;->execute(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 223
    const/4 v2, 0x0

    goto :goto_5

    .line 226
    .end local v1    # "msg":Ljava/lang/String;
    :cond_19
    if-nez v2, :cond_24

    .line 227
    const-string v3, "drsService"

    const-string/jumbo v4, "relabeling /data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_23
    return v2

    .line 229
    :cond_24
    const-string v3, "drsService"

    const-string/jumbo v4, "relabeling /data succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
