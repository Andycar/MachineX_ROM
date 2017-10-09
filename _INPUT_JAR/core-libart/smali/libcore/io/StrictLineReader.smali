.class public Llibcore/io/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 69
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I

    .prologue
    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_d

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_d
    if-nez p3, :cond_17

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_17
    if-gez p2, :cond_21

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_21
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_41
    iput-object p1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    .line 123
    iput-object p3, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 124
    new-array v0, p2, [B

    iput-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 94
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Llibcore/io/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Llibcore/io/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2
    .param p0, "x0"    # Llibcore/io/StrictLineReader;

    .prologue
    .line 45
    iget-object v0, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/io/StrictLineReader;->buf:[B

    iget-object v3, p0, Llibcore/io/StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 236
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 237
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 239
    :cond_15
    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I

    .line 240
    iput v0, p0, Llibcore/io/StrictLineReader;->end:I

    .line 241
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    if-eqz v0, :cond_f

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/io/StrictLineReader;->buf:[B

    .line 138
    iget-object v0, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_f
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public hasUnterminatedLine()Z
    .registers 3

    .prologue
    .line 224
    iget v0, p0, Llibcore/io/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public readInt()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Llibcore/io/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "intString":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 212
    :catch_9
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readLine()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 152
    iget-object v5, p0, Llibcore/io/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 153
    :try_start_5
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    if-nez v4, :cond_14

    .line 154
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :catchall_11
    move-exception v4

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v4

    .line 160
    :cond_14
    :try_start_14
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    iget v6, p0, Llibcore/io/StrictLineReader;->end:I

    if-lt v4, v6, :cond_1d

    .line 161
    invoke-direct {p0}, Llibcore/io/StrictLineReader;->fillBuf()V

    .line 164
    :cond_1d
    iget v0, p0, Llibcore/io/StrictLineReader;->pos:I

    .local v0, "i":I
    :goto_1f
    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    if-eq v0, v4, :cond_53

    .line 165
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_50

    .line 166
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_4e

    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4e

    add-int/lit8 v1, v0, -0x1

    .line 167
    .local v1, "lineEnd":I
    :goto_39
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    iget v7, p0, Llibcore/io/StrictLineReader;->pos:I

    sub-int v7, v1, v7

    iget-object v8, p0, Llibcore/io/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 168
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I

    .line 169
    monitor-exit v5

    .line 194
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :goto_4d
    return-object v3

    :cond_4e
    move v1, v0

    .line 166
    goto :goto_39

    .line 164
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 174
    :cond_53
    new-instance v2, Llibcore/io/StrictLineReader$1;

    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Llibcore/io/StrictLineReader$1;-><init>(Llibcore/io/StrictLineReader;I)V

    .line 183
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_5f
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    iget v7, p0, Llibcore/io/StrictLineReader;->end:I

    iget v8, p0, Llibcore/io/StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 185
    const/4 v4, -0x1

    iput v4, p0, Llibcore/io/StrictLineReader;->end:I

    .line 186
    invoke-direct {p0}, Llibcore/io/StrictLineReader;->fillBuf()V

    .line 188
    iget v0, p0, Llibcore/io/StrictLineReader;->pos:I

    :goto_73
    iget v4, p0, Llibcore/io/StrictLineReader;->end:I

    if-eq v0, v4, :cond_5f

    .line 189
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_96

    .line 190
    iget v4, p0, Llibcore/io/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_8c

    .line 191
    iget-object v4, p0, Llibcore/io/StrictLineReader;->buf:[B

    iget v6, p0, Llibcore/io/StrictLineReader;->pos:I

    iget v7, p0, Llibcore/io/StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 193
    :cond_8c
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Llibcore/io/StrictLineReader;->pos:I

    .line 194
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5
    :try_end_95
    .catchall {:try_start_14 .. :try_end_95} :catchall_11

    goto :goto_4d

    .line 188
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_73
.end method
