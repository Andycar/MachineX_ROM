.class public Ljavax/crypto/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private final inputBuffer:[B

.field private outputBuffer:[B

.field private outputIndex:I

.field private outputLength:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 78
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Ljavax/crypto/Cipher;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    iput-object p2, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 61
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    .local v0, "blockSize":I
    const/16 v2, 0x2000

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    .local v1, "bufferSize":I
    new-array v2, v1, [B

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    .line 65
    if-le v0, v3, :cond_24

    mul-int/lit8 v2, v0, 0x2

    :goto_1e
    add-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    .line 66
    return-void

    .line 65
    :cond_24
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private fillBuffer()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 87
    iget-boolean v0, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    if-eqz v0, :cond_7

    .line 115
    :goto_6
    return v9

    .line 90
    :cond_7
    iput v9, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    .line 91
    iput v9, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    .line 92
    :goto_b
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-nez v0, :cond_65

    .line 95
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v7

    .line 96
    .local v7, "outputSize":I
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    if-eqz v0, :cond_21

    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    array-length v0, v0

    if-ge v0, v7, :cond_25

    .line 97
    :cond_21
    new-array v0, v7, [B

    iput-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    .line 99
    :cond_25
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 100
    .local v3, "byteCount":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4f

    .line 102
    :try_start_30
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_44

    .line 106
    iput-boolean v8, p0, Ljavax/crypto/CipherInputStream;->finished:Z

    .line 107
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-eqz v0, :cond_4d

    move v0, v8

    :goto_42
    move v9, v0

    goto :goto_6

    .line 103
    :catch_44
    move-exception v6

    .line 104
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while finalizing cipher"

    invoke-direct {v0, v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4d
    move v0, v9

    .line 107
    goto :goto_42

    .line 110
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->inputBuffer:[B

    const/4 v2, 0x0

    iget-object v4, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    iput v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I
    :try_end_5d
    .catch Ljavax/crypto/ShortBufferException; {:try_start_4f .. :try_end_5d} :catch_5e

    goto :goto_b

    .line 111
    :catch_5e
    move-exception v6

    .line 112
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .end local v3    # "byteCount":I
    .end local v6    # "e":Ljavax/crypto/ShortBufferException;
    .end local v7    # "outputSize":I
    :cond_65
    move v9, v8

    .line 115
    goto :goto_6
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 190
    :try_start_5
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_a} :catch_b

    .line 195
    :goto_a
    return-void

    .line 191
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_c
    iget v0, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->fillBuffer()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 131
    const/4 v0, -0x1

    .line 133
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_19
.end method

.method public read([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_c

    .line 153
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_c
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    if-ne v1, v2, :cond_1a

    invoke-direct {p0}, Ljavax/crypto/CipherInputStream;->fillBuffer()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 156
    const/4 v1, -0x1

    .line 166
    :goto_19
    return v1

    .line 158
    :cond_1a
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputLength:I

    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    sub-int v0, v1, v2

    .line 159
    .local v0, "available":I
    if-ge v0, p3, :cond_23

    .line 160
    move p3, v0

    .line 162
    :cond_23
    if-eqz p1, :cond_2c

    .line 163
    iget-object v1, p0, Ljavax/crypto/CipherInputStream;->outputBuffer:[B

    iget v2, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 165
    :cond_2c
    iget v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    add-int/2addr v1, p3

    iput v1, p0, Ljavax/crypto/CipherInputStream;->outputIndex:I

    move v1, p3

    .line 166
    goto :goto_19
.end method

.method public skip(J)J
    .registers 6
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
