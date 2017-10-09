.class final Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    invoke-direct {p0, v0, v2, v3}, Ljava/nio/DoubleBuffer;-><init>(IJ)V

    .line 46
    iput-object p1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 48
    return-void
.end method

.method static asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;
    .registers 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 53
    .local v0, "buf":Ljava/nio/ByteBufferAsDoubleBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 55
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    .line 56
    iget-object v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 57
    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 65
    :cond_e
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 68
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 70
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    .line 72
    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .registers 5

    .prologue
    .line 77
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 79
    .local v1, "buf":Ljava/nio/ByteBufferAsDoubleBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 81
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    .line 82
    return-object v1
.end method

.method public get()D
    .registers 4

    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 88
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 90
    :cond_c
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(I)D
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)V

    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 104
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([DII)V

    .line 108
    :goto_1f
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 109
    return-object p0

    .line 106
    :cond_25
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([DII)V

    goto :goto_1f
.end method

.method public isDirect()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[D
    .registers 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "c"    # D

    .prologue
    .line 141
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 142
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 144
    :cond_c
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 145
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "c"    # D

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)V

    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 152
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_25

    .line 160
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([DII)V

    .line 164
    :goto_1f
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 165
    return-object p0

    .line 162
    :cond_25
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Ljava/nio/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([DII)V

    goto :goto_1f
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .registers 5

    .prologue
    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 174
    .local v1, "result":Ljava/nio/DoubleBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 175
    return-object v1
.end method
