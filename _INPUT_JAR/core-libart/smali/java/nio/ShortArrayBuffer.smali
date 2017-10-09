.class final Ljava/nio/ShortArrayBuffer;
.super Ljava/nio/ShortBuffer;
.source "ShortArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[S

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[SIZ)V
    .registers 7
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [S
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;-><init>(IJ)V

    .line 37
    iput-object p2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    .line 38
    iput p3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    .line 39
    iput-boolean p4, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    .line 40
    return-void
.end method

.method constructor <init>([S)V
    .registers 4
    .param p1, "array"    # [S

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    .line 33
    return-void
.end method

.method private static copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;
    .registers 7
    .param p0, "other"    # Ljava/nio/ShortArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    .line 44
    .local v0, "buf":Ljava/nio/ShortArrayBuffer;
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/ShortArrayBuffer;->limit:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/ShortArrayBuffer;->position:I

    .line 46
    iput p1, v0, Ljava/nio/ShortArrayBuffer;->mark:I

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/ShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 58
    :cond_a
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 59
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    .line 60
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .registers 3

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/ShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 112
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 115
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    .line 116
    return-object p0
.end method

.method public final get()S
    .registers 5

    .prologue
    .line 99
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-short v0, v0, v1

    return v0
.end method

.method public final get(I)S
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ShortArrayBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    return v0
.end method

.method public final isDirect()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protectedArray()[S
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 79
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 81
    :cond_a
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    return-object v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 88
    :cond_a
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "c"    # S

    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 142
    :cond_a
    invoke-virtual {p0, p1}, Ljava/nio/ShortArrayBuffer;->checkIndex(I)V

    .line 143
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput-short p2, v0, v1

    .line 144
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "c"    # S

    .prologue
    .line 128
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 131
    :cond_a
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    if-ne v0, v1, :cond_16

    .line 132
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 134
    :cond_16
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-short p1, v0, v1

    .line 135
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .registers 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 149
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 151
    :cond_a
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_16

    .line 152
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 154
    :cond_16
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 155
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    .line 156
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .registers 6

    .prologue
    .line 70
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/ShortArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    return-object v0
.end method
