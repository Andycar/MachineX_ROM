.class Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "columns"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 46
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 48
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 49
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 52
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 53
    return-void
.end method

.method private final growBuffer()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 255
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 256
    .local v1, "columns":I
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v7

    mul-int/2addr v7, v1

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 258
    .local v4, "newvalues":[I
    array-length v7, v4

    div-int v3, v7, v1

    .line 260
    .local v3, "newsize":I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 261
    .local v6, "valuegap":[I
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 263
    .local v5, "rowgapstart":I
    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v8, v5

    sub-int v0, v7, v8

    .line 265
    .local v0, "after":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    if-eqz v7, :cond_37

    .line 266
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v8, v1, v5

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 267
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v8, v0

    mul-int/2addr v8, v1

    sub-int v9, v3, v0

    mul-int/2addr v9, v1

    mul-int v10, v0, v1

    invoke-static {v7, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 272
    :cond_37
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_50

    .line 273
    aget v7, v6, v2

    if-lt v7, v5, :cond_4d

    .line 274
    aget v7, v6, v2

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v6, v2

    .line 276
    aget v7, v6, v2

    if-ge v7, v5, :cond_4d

    .line 277
    aput v5, v6, v2

    .line 272
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 282
    :cond_50
    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v3, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 283
    iput v3, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 284
    iput-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 285
    return-void
.end method

.method private final moveRowGapTo(I)V
    .registers 14
    .param p1, "where"    # I

    .prologue
    .line 315
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v9, :cond_5

    .line 368
    :goto_4
    return-void

    .line 317
    :cond_5
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-le p1, v9, :cond_4f

    .line 318
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v9, p1

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v11, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 319
    .local v5, "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 320
    .local v0, "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 321
    .local v7, "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 322
    .local v8, "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, v9, v10

    .line 324
    .local v2, "gapend":I
    move v3, v2

    .local v3, "i":I
    :goto_20
    add-int v9, v2, v5

    if-ge v3, v9, :cond_8f

    .line 325
    sub-int v9, v3, v2

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int v1, v9, v10

    .line 327
    .local v1, "destrow":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2b
    if-ge v4, v0, :cond_4c

    .line 328
    mul-int v9, v3, v0

    add-int/2addr v9, v4

    aget v6, v8, v9

    .line 330
    .local v6, "val":I
    aget v9, v7, v4

    if-lt v3, v9, :cond_3b

    .line 331
    add-int v9, v4, v0

    aget v9, v7, v9

    add-int/2addr v6, v9

    .line 334
    :cond_3b
    aget v9, v7, v4

    if-lt v1, v9, :cond_44

    .line 335
    add-int v9, v4, v0

    aget v9, v7, v9

    sub-int/2addr v6, v9

    .line 338
    :cond_44
    mul-int v9, v1, v0

    add-int/2addr v9, v4

    aput v6, v8, v9

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 324
    .end local v6    # "val":I
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 342
    .end local v0    # "columns":I
    .end local v1    # "destrow":I
    .end local v2    # "gapend":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "moving":I
    .end local v7    # "valuegap":[I
    .end local v8    # "values":[I
    :cond_4f
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int v5, v9, p1

    .line 343
    .restart local v5    # "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 344
    .restart local v0    # "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 345
    .restart local v7    # "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 346
    .restart local v8    # "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, v9, v10

    .line 348
    .restart local v2    # "gapend":I
    add-int v9, p1, v5

    add-int/lit8 v3, v9, -0x1

    .restart local v3    # "i":I
    :goto_63
    if-lt v3, p1, :cond_8f

    .line 349
    sub-int v9, v3, p1

    add-int/2addr v9, v2

    sub-int v1, v9, v5

    .line 351
    .restart local v1    # "destrow":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6b
    if-ge v4, v0, :cond_8c

    .line 352
    mul-int v9, v3, v0

    add-int/2addr v9, v4

    aget v6, v8, v9

    .line 354
    .restart local v6    # "val":I
    aget v9, v7, v4

    if-lt v3, v9, :cond_7b

    .line 355
    add-int v9, v4, v0

    aget v9, v7, v9

    add-int/2addr v6, v9

    .line 358
    :cond_7b
    aget v9, v7, v4

    if-lt v1, v9, :cond_84

    .line 359
    add-int v9, v4, v0

    aget v9, v7, v9

    sub-int/2addr v6, v9

    .line 362
    :cond_84
    mul-int v9, v1, v0

    add-int/2addr v9, v4

    aput v6, v8, v9

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 348
    .end local v6    # "val":I
    :cond_8c
    add-int/lit8 v3, v3, -0x1

    goto :goto_63

    .line 367
    .end local v1    # "destrow":I
    .end local v4    # "j":I
    :cond_8f
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    goto/16 :goto_4
.end method

.method private final moveValueGapTo(II)V
    .registers 10
    .param p1, "column"    # I
    .param p2, "where"    # I

    .prologue
    .line 292
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 293
    .local v2, "valuegap":[I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 294
    .local v3, "values":[I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 296
    .local v0, "columns":I
    aget v4, v2, p1

    if-ne p2, v4, :cond_b

    .line 309
    :goto_a
    return-void

    .line 298
    :cond_b
    aget v4, v2, p1

    if-le p2, v4, :cond_22

    .line 299
    aget v1, v2, p1

    .local v1, "i":I
    :goto_11
    if-ge v1, p2, :cond_36

    .line 300
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    aget v5, v3, v4

    add-int v6, p1, v0

    aget v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 303
    .end local v1    # "i":I
    :cond_22
    move v1, p2

    .restart local v1    # "i":I
    :goto_23
    aget v4, v2, p1

    if-ge v1, v4, :cond_36

    .line 304
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    aget v5, v3, v4

    add-int v6, p1, v0

    aget v6, v2, v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 308
    :cond_36
    aput p2, v2, p1

    goto :goto_a
.end method

.method private setValueInternal(III)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .prologue
    .line 124
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_7

    .line 125
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 128
    :cond_7
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 129
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_13

    .line 130
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 133
    :cond_13
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 134
    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .registers 7
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .prologue
    .line 150
    or-int v0, p1, p2

    if-ltz v0, :cond_10

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_10

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-lt p2, v0, :cond_2d

    .line 152
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2d
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_34

    .line 156
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 159
    :cond_34
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 160
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 161
    return-void
.end method

.method public deleteAt(II)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "count"    # I

    .prologue
    .line 217
    or-int v0, p1, p2

    if-ltz v0, :cond_c

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-le v0, v1, :cond_29

    .line 218
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_29
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 223
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 224
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 228
    return-void
.end method

.method public getValue(II)I
    .registers 9
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 68
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 70
    .local v0, "columns":I
    or-int v3, p1, p2

    if-ltz v3, :cond_e

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v3

    if-ge p1, v3, :cond_e

    if-lt p2, v0, :cond_2b

    .line 71
    :cond_e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_2b
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v3, :cond_32

    .line 75
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v3

    .line 78
    :cond_32
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v4, p1, v0

    add-int/2addr v4, p2

    aget v1, v3, v4

    .line 80
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 81
    .local v2, "valuegap":[I
    aget v3, v2, p2

    if-lt p1, v3, :cond_44

    .line 82
    add-int v3, p2, v0

    aget v3, v2, v3

    add-int/2addr v1, v3

    .line 85
    :cond_44
    return v1
.end method

.method public insertAt(I[I)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .prologue
    .line 177
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-le p1, v1, :cond_22

    .line 178
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_22
    if-eqz p2, :cond_46

    array-length v1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 182
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_46
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 187
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v1, :cond_50

    .line 188
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 191
    :cond_50
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 192
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 194
    if-nez p2, :cond_6b

    .line 195
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_62
    if-ltz v0, :cond_79

    .line 196
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 195
    add-int/lit8 v0, v0, -0x1

    goto :goto_62

    .line 199
    .end local v0    # "i":I
    :cond_6b
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_6f
    if-ltz v0, :cond_79

    .line 200
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 199
    add-int/lit8 v0, v0, -0x1

    goto :goto_6f

    .line 203
    :cond_79
    return-void
.end method

.method public setValue(III)V
    .registers 8
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .prologue
    .line 99
    or-int v1, p1, p2

    if-ltz v1, :cond_e

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_e

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-lt p2, v1, :cond_2b

    .line 100
    :cond_e
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_2b
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_32

    .line 104
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 107
    :cond_32
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 108
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_3e

    .line 109
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 112
    :cond_3e
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 113
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    .line 237
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
