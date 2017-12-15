.class public final Landroid/speech/srec/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "UlawEncoderInputStream.java"


# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UlawEncoderInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I

.field private final mOneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "max"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    .line 44
    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    .line 136
    iput-object p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 137
    iput p2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    .line 138
    return-void
.end method

.method public static encode([BI[BIII)V
    .registers 14
    .param p0, "pcmBuf"    # [B
    .param p1, "pcmOffset"    # I
    .param p2, "ulawBuf"    # [B
    .param p3, "ulawOffset"    # I
    .param p4, "length"    # I
    .param p5, "max"    # I

    .prologue
    .line 76
    if-gtz p5, :cond_4

    const/16 p5, 0x2000

    .line 78
    :cond_4
    const/high16 v6, 0x20000000

    div-int v0, v6, p5

    .line 80
    .local v0, "coef":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, p3

    .end local p3    # "ulawOffset":I
    .local v5, "ulawOffset":I
    move v3, p1

    .end local p1    # "pcmOffset":I
    .local v3, "pcmOffset":I
    :goto_b
    if-ge v1, p4, :cond_e9

    .line 81
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "pcmOffset":I
    .restart local p1    # "pcmOffset":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "pcmOffset":I
    .restart local v3    # "pcmOffset":I
    aget-byte v7, p0, p1

    shl-int/lit8 v7, v7, 0x8

    add-int v2, v6, v7

    .line 82
    .local v2, "pcm":I
    mul-int v6, v2, v0

    shr-int/lit8 v2, v6, 0x10

    .line 85
    if-ltz v2, :cond_89

    .line 86
    if-gtz v2, :cond_2e

    const/16 v4, 0xff

    .line 108
    .local v4, "ulaw":I
    :goto_25
    add-int/lit8 p3, v5, 0x1

    .end local v5    # "ulawOffset":I
    .restart local p3    # "ulawOffset":I
    int-to-byte v6, v4

    aput-byte v6, p2, v5

    .line 80
    add-int/lit8 v1, v1, 0x1

    move v5, p3

    .end local p3    # "ulawOffset":I
    .restart local v5    # "ulawOffset":I
    goto :goto_b

    .line 86
    .end local v4    # "ulaw":I
    :cond_2e
    const/16 v6, 0x1e

    if-gt v2, v6, :cond_39

    rsub-int/lit8 v6, v2, 0x1e

    shr-int/lit8 v6, v6, 0x1

    add-int/lit16 v4, v6, 0xf0

    goto :goto_25

    :cond_39
    const/16 v6, 0x5e

    if-gt v2, v6, :cond_44

    rsub-int/lit8 v6, v2, 0x5e

    shr-int/lit8 v6, v6, 0x2

    add-int/lit16 v4, v6, 0xe0

    goto :goto_25

    :cond_44
    const/16 v6, 0xde

    if-gt v2, v6, :cond_4f

    rsub-int v6, v2, 0xde

    shr-int/lit8 v6, v6, 0x3

    add-int/lit16 v4, v6, 0xd0

    goto :goto_25

    :cond_4f
    const/16 v6, 0x1de

    if-gt v2, v6, :cond_5a

    rsub-int v6, v2, 0x1de

    shr-int/lit8 v6, v6, 0x4

    add-int/lit16 v4, v6, 0xc0

    goto :goto_25

    :cond_5a
    const/16 v6, 0x3de

    if-gt v2, v6, :cond_65

    rsub-int v6, v2, 0x3de

    shr-int/lit8 v6, v6, 0x5

    add-int/lit16 v4, v6, 0xb0

    goto :goto_25

    :cond_65
    const/16 v6, 0x7de

    if-gt v2, v6, :cond_70

    rsub-int v6, v2, 0x7de

    shr-int/lit8 v6, v6, 0x6

    add-int/lit16 v4, v6, 0xa0

    goto :goto_25

    :cond_70
    const/16 v6, 0xfde

    if-gt v2, v6, :cond_7b

    rsub-int v6, v2, 0xfde

    shr-int/lit8 v6, v6, 0x7

    add-int/lit16 v4, v6, 0x90

    goto :goto_25

    :cond_7b
    const/16 v6, 0x1fde

    if-gt v2, v6, :cond_86

    rsub-int v6, v2, 0x1fde

    shr-int/lit8 v6, v6, 0x8

    add-int/lit16 v4, v6, 0x80

    goto :goto_25

    :cond_86
    const/16 v4, 0x80

    goto :goto_25

    .line 97
    :cond_89
    const/4 v6, -0x1

    if-gt v6, v2, :cond_8f

    const/16 v4, 0x7f

    .restart local v4    # "ulaw":I
    :goto_8e
    goto :goto_25

    .end local v4    # "ulaw":I
    :cond_8f
    const/16 v6, -0x1f

    if-gt v6, v2, :cond_9a

    add-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v6, 0x70

    goto :goto_8e

    :cond_9a
    const/16 v6, -0x5f

    if-gt v6, v2, :cond_a5

    add-int/lit8 v6, v2, 0x5f

    shr-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v6, 0x60

    goto :goto_8e

    :cond_a5
    const/16 v6, -0xdf

    if-gt v6, v2, :cond_b0

    add-int/lit16 v6, v2, 0xdf

    shr-int/lit8 v6, v6, 0x3

    add-int/lit8 v4, v6, 0x50

    goto :goto_8e

    :cond_b0
    const/16 v6, -0x1df

    if-gt v6, v2, :cond_bb

    add-int/lit16 v6, v2, 0x1df

    shr-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v6, 0x40

    goto :goto_8e

    :cond_bb
    const/16 v6, -0x3df

    if-gt v6, v2, :cond_c6

    add-int/lit16 v6, v2, 0x3df

    shr-int/lit8 v6, v6, 0x5

    add-int/lit8 v4, v6, 0x30

    goto :goto_8e

    :cond_c6
    const/16 v6, -0x7df

    if-gt v6, v2, :cond_d1

    add-int/lit16 v6, v2, 0x7df

    shr-int/lit8 v6, v6, 0x6

    add-int/lit8 v4, v6, 0x20

    goto :goto_8e

    :cond_d1
    const/16 v6, -0xfdf

    if-gt v6, v2, :cond_dc

    add-int/lit16 v6, v2, 0xfdf

    shr-int/lit8 v6, v6, 0x7

    add-int/lit8 v4, v6, 0x10

    goto :goto_8e

    :cond_dc
    const/16 v6, -0x1fdf

    if-gt v6, v2, :cond_e7

    add-int/lit16 v6, v2, 0x1fdf

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v6, 0x0

    goto :goto_8e

    :cond_e7
    const/4 v4, 0x0

    goto :goto_8e

    .line 110
    .end local v2    # "pcm":I
    :cond_e9
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .registers 9
    .param p0, "pcmBuf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_3
    if-ge v0, p2, :cond_1c

    .line 123
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p0, p1

    shl-int/lit8 v5, v5, 0x8

    add-int v3, v4, v5

    .line 124
    .local v3, "pcm":I
    if-gez v3, :cond_16

    neg-int v3, v3

    .line 125
    :cond_16
    if-le v3, v1, :cond_19

    move v1, v3

    .line 122
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 127
    .end local v3    # "pcm":I
    :cond_1c
    return v1
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
    .line 185
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    .line 177
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 178
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .line 179
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 181
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_c
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 169
    iget-object v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    .line 170
    .local v0, "n":I
    if-ne v0, v1, :cond_c

    .line 171
    :goto_b
    return v1

    :cond_c
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_b
.end method

.method public read([B)I
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 142
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    .local v4, "n":I
    :cond_e
    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 145
    .end local v4    # "n":I
    :cond_13
    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_31

    .line 146
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget v3, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v5, p3, 0x2

    iget-object v7, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    array-length v7, v7

    iget v8, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    sub-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 147
    .restart local v4    # "n":I
    if-ne v4, v0, :cond_e

    .line 159
    :goto_30
    return v0

    .line 152
    .end local v4    # "n":I
    :cond_31
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 153
    .restart local v4    # "n":I
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    const/4 v1, 0x0

    iget v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/UlawEncoderInputStream;->encode([BI[BIII)V

    .line 156
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .line 157
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4b
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    if-ge v6, v0, :cond_5d

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v6

    aget-byte v1, v1, v2

    aput-byte v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_5d
    move v0, v4

    .line 159
    goto :goto_30
.end method
