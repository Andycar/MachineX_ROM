.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:J

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 46
    iput v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 47
    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 57
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 58
    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    .line 59
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(J)V

    .line 60
    return-void
.end method

.method private static native GsmAmrEncoderCleanup(J)V
.end method

.method private static native GsmAmrEncoderDelete(J)V
.end method

.method private static native GsmAmrEncoderEncode(J[BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native GsmAmrEncoderInitialize(J)V
.end method

.method private static native GsmAmrEncoderNew()J
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 105
    :try_start_3
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3e

    .line 107
    :cond_c
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 109
    :try_start_e
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_19

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_2b

    .line 112
    :cond_19
    :try_start_19
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_24

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_27

    .line 114
    :cond_24
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    .line 118
    return-void

    .line 114
    :catchall_27
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    .line 111
    :catchall_2b
    move-exception v0

    .line 112
    :try_start_2c
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_37

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3a

    .line 114
    :cond_37
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_3a
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    .line 107
    :catchall_3e
    move-exception v0

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 109
    :try_start_41
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4c

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_5e

    .line 112
    :cond_4c
    :try_start_4c
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_57

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_5a

    .line 114
    :cond_57
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_5a
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    .line 111
    :catchall_5e
    move-exception v0

    .line 112
    :try_start_5f
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6a

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6d

    .line 114
    :cond_6a
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_6d
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 123
    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_14
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .line 65
    .local v0, "rtn":I
    if-ne v0, v3, :cond_11

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 75
    iget-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_13
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v1, v2, :cond_3e

    .line 80
    iput v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 81
    iput v3, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 84
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    const/16 v1, 0x140

    if-ge v6, v1, :cond_31

    .line 85
    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v4, v6, 0x140

    invoke-virtual {v1, v2, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 86
    .local v7, "n":I
    if-ne v7, v0, :cond_2f

    .line 99
    .end local v6    # "i":I
    .end local v7    # "n":I
    :goto_2e
    return v0

    .line 87
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    :cond_2f
    add-int/2addr v6, v7

    .line 88
    goto :goto_1e

    .line 91
    .end local v7    # "n":I
    :cond_31
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(J[BI[BI)I

    move-result v0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 95
    .end local v6    # "i":I
    :cond_3e
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_4b

    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int p3, v0, v1

    .line 96
    :cond_4b
    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 97
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    move v0, p3

    .line 99
    goto :goto_2e
.end method
