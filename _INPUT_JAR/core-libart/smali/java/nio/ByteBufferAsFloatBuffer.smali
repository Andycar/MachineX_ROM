.class final Ljava/nio/ByteBufferAsFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "ByteBufferAsFloatBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    invoke-direct {p0, v0, v2, v3}, Ljava/nio/FloatBuffer;-><init>(IJ)V

    .line 45
    iput-object p1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 47
    return-void
.end method

.method static asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    .local v0, "buf":Ljava/nio/ByteBufferAsFloatBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    .line 53
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    .line 55
    iget-object v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 56
    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 64
    :cond_e
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    .line 71
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .registers 5

    .prologue
    .line 76
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 78
    .local v1, "buf":Ljava/nio/ByteBufferAsFloatBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    .line 79
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    .line 81
    return-object v1
.end method

.method public get()F
    .registers 4

    .prologue
    .line 86
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 87
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 89
    :cond_c
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public get(I)F
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)V

    .line 95
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 100
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([FII)V

    .line 107
    :goto_1f
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 108
    return-object p0

    .line 105
    :cond_25
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([FII)V

    goto :goto_1f
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[F
    .registers 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "c"    # F

    .prologue
    .line 140
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 141
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 143
    :cond_c
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 144
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "c"    # F

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)V

    .line 150
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 151
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .registers 6
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    .prologue
    .line 156
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([FII)V

    .line 163
    :goto_1f
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    .line 164
    return-object p0

    .line 161
    :cond_25
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([FII)V

    goto :goto_1f
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .registers 5

    .prologue
    .line 169
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 172
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 173
    .local v1, "result":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 174
    return-object v1
.end method
