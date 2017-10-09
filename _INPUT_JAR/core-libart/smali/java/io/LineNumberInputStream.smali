.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lastChar:I

.field private lineNumber:I

.field private markedLastChar:I

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    .line 39
    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 55
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x0

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 97
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 98
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    .line 99
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    .line 100
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
    const/4 v3, -0x1

    .line 120
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 121
    .local v0, "currentChar":I
    if-ne v0, v3, :cond_f

    .line 122
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 126
    :goto_b
    packed-switch v0, :pswitch_data_2c

    .line 137
    :goto_e
    :pswitch_e
    return v0

    .line 124
    :cond_f
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    goto :goto_b

    .line 128
    :pswitch_12
    const/16 v0, 0xa

    .line 129
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 130
    iget v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_24

    .line 131
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 135
    :cond_24
    :pswitch_24
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    goto :goto_e

    .line 126
    nop

    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_24
        :pswitch_e
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public read([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 160
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 161
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, p3, :cond_1e

    .line 164
    :try_start_8
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_12

    move-result v0

    .line 171
    .local v0, "currentChar":I
    if-ne v0, v3, :cond_16

    .line 172
    if-nez v2, :cond_11

    move v2, v3

    .line 176
    .end local v0    # "currentChar":I
    .end local v2    # "i":I
    :cond_11
    :goto_11
    return v2

    .line 165
    .restart local v2    # "i":I
    :catch_12
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    if-nez v2, :cond_11

    .line 169
    throw v1

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "currentChar":I
    :cond_16
    add-int v4, p2, v2

    int-to-byte v5, v0

    aput-byte v5, p1, v4

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v0    # "currentChar":I
    :cond_1e
    move v2, p3

    .line 176
    goto :goto_11
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 193
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 194
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 195
    return-void
.end method

.method public setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .prologue
    .line 208
    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 209
    return-void
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
    .line 229
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
