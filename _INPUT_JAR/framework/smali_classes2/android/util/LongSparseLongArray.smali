.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_11

    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 69
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 74
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 75
    return-void

    .line 71
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 72
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_d
.end method


# virtual methods
.method public append(JJ)V
    .registers 8
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 225
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 226
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 233
    :goto_13
    return-void

    .line 230
    :cond_14
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 231
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 232
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_13
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 218
    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .registers 4

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "clone":Landroid/util/LongSparseLongArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongSparseLongArray;

    move-object v1, v0

    .line 82
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 83
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 87
    :goto_1d
    return-object v1

    .line 84
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 116
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 118
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 119
    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    .line 121
    :cond_d
    return-void
.end method

.method public get(J)J
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .registers 8
    .param p1, "key"    # J
    .param p3, "valueIfKeyNotFound"    # J

    .prologue
    .line 103
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 105
    .local v0, "i":I
    if-gez v0, :cond_b

    .line 108
    .end local p3    # "valueIfKeyNotFound":J
    :goto_a
    return-wide p3

    .restart local p3    # "valueIfKeyNotFound":J
    :cond_b
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p3, v1, v0

    goto :goto_a
.end method

.method public indexOfKey(J)I
    .registers 6
    .param p1, "key"    # J

    .prologue
    .line 194
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .registers 8
    .param p1, "value"    # J

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_11

    .line 207
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_e

    .line 210
    .end local v0    # "i":I
    :goto_d
    return v0

    .line 206
    .restart local v0    # "i":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public keyAt(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 170
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .registers 8
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 138
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 140
    .local v0, "i":I
    if-ltz v0, :cond_f

    .line 141
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 149
    :goto_e
    return-void

    .line 143
    :cond_f
    xor-int/lit8 v0, v0, -0x1

    .line 145
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 146
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 147
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_e
.end method

.method public removeAt(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 128
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 129
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 130
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_a

    .line 243
    const-string/jumbo v6, "{}"

    .line 259
    :goto_9
    return-object v6

    .line 246
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    mul-int/lit8 v6, v6, 0x1c

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v1, v6, :cond_3a

    .line 249
    if-lez v1, :cond_24

    .line 250
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 253
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 256
    .local v4, "value":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 258
    .end local v2    # "key":J
    .end local v4    # "value":J
    :cond_3a
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9
.end method

.method public valueAt(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
