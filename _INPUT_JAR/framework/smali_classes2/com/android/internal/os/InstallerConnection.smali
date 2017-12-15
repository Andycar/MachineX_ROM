.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    .line 46
    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_6

    .line 207
    :goto_5
    return v2

    .line 192
    :cond_6
    const-string v3, "InstallerConnection"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_d
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    .line 196
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 199
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    .line 202
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_33

    goto :goto_5

    .line 203
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_33
    move-exception v1

    .line 204
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 205
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private readFully([BI)Z
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 224
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_9

    .line 235
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 225
    :catch_9
    move-exception v0

    .line 226
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "InstallerConnection"

    const-string/jumbo v3, "read exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    goto :goto_8
.end method

.method private readReply()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 239
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 254
    :cond_c
    :goto_c
    return v0

    .line 243
    :cond_d
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 244
    .local v0, "len":I
    if-lt v0, v4, :cond_25

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_48

    .line 245
    :cond_25
    const-string v2, "InstallerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    move v0, v1

    .line 247
    goto :goto_c

    .line 250
    :cond_48
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    invoke-direct {p0, v2, v0}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 251
    goto :goto_c
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .registers 11
    .param p1, "cmdString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 259
    .local v0, "cmd":[B
    array-length v2, v0

    .line 260
    .local v2, "len":I
    if-lt v2, v3, :cond_e

    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v5, v5

    if-le v2, v5, :cond_10

    :cond_e
    move v3, v4

    .line 274
    :goto_f
    return v3

    .line 264
    :cond_10
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 265
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 267
    :try_start_20
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 268
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2f} :catch_30

    goto :goto_f

    .line 269
    :catch_30
    move-exception v1

    .line 270
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "InstallerConnection"

    const-string/jumbo v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    move v3, v4

    .line 272
    goto :goto_f
.end method


# virtual methods
.method public asyncDexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZZI)I
    .registers 12
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "vmSafeMode"    # Z
    .param p7, "interpret_only"    # Z
    .param p8, "hashCode"    # I

    .prologue
    const/16 v2, 0x20

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncdexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    if-eqz p3, :cond_4b

    const-string v1, " 1"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p6, :cond_4e

    const-string v1, " 1"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    if-eqz p7, :cond_51

    const-string v1, " 1"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 137
    :cond_4b
    const-string v1, " 0"

    goto :goto_19

    .line 143
    :cond_4e
    const-string v1, " 0"

    goto :goto_2f

    .line 145
    :cond_51
    const-string v1, " 0"

    goto :goto_39
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;)I
    .registers 13
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 95
    const-string v4, "*"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)I
    .registers 15
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "vmSafeMode"    # Z

    .prologue
    .line 102
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZZ)I
    .registers 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "vmSafeMode"    # Z
    .param p7, "interpret_only"    # Z

    .prologue
    const/16 v2, 0x20

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    if-eqz p3, :cond_45

    const-string v1, " 1"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    if-eqz p6, :cond_48

    const-string v1, " 1"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p7, :cond_4b

    const-string v1, " 1"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 114
    :cond_45
    const-string v1, " 0"

    goto :goto_19

    .line 120
    :cond_48
    const-string v1, " 0"

    goto :goto_2f

    .line 122
    :cond_4b
    const-string v1, " 0"

    goto :goto_39
.end method

.method public disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v0, "InstallerConnection"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 216
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    .line 217
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    .line 218
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    .line 219
    return-void
.end method

.method public execute(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "res":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 89
    :goto_8
    return v2

    .line 88
    :catch_9
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_8
.end method

.method public patchoat(Ljava/lang/String;IZLjava/lang/String;)I
    .registers 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v4, "*"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->patchoat(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public patchoat(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "patchoat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_31

    const-string v1, " 1 "

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 164
    :cond_31
    const-string v1, " 0 "

    goto :goto_1a
.end method

.method public patchoat_art(Ljava/lang/String;IZLjava/lang/String;)I
    .registers 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v4, "*"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->patchoat_art(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public patchoat_art(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "patchoat_art"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    if-eqz p3, :cond_32

    const-string v1, " 1"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 180
    :cond_32
    const-string v1, " 0"

    goto :goto_1a
.end method

.method public processAsyncResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncresult"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "asyncresult"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-nez v2, :cond_12

    .line 50
    const-string v2, "InstallerConnection"

    const-string v3, "connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "-1"
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_41

    .line 80
    :goto_10
    monitor-exit p0

    return-object v1

    .line 54
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 60
    const-string v2, "InstallerConnection"

    const-string/jumbo v3, "write command failed? reconnect!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 62
    :cond_2c
    const-string v1, "-1"

    goto :goto_10

    .line 69
    :cond_2f
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->readReply()I

    move-result v0

    .line 70
    .local v0, "replyLength":I
    if-lez v0, :cond_3e

    .line 71
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 75
    .local v1, "s":Ljava/lang/String;
    goto :goto_10

    .line 80
    .end local v1    # "s":Ljava/lang/String;
    :cond_3e
    const-string v1, "-1"
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_41

    goto :goto_10

    .line 49
    .end local v0    # "replyLength":I
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method
