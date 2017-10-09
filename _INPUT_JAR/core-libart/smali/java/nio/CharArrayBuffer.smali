.class final Ljava/nio/CharArrayBuffer;
.super Ljava/nio/CharBuffer;
.source "CharArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[C

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[CIZ)V
    .registers 7
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [C
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/CharBuffer;-><init>(IJ)V

    .line 37
    iput-object p2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    .line 38
    iput p3, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    .line 39
    iput-boolean p4, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    .line 40
    return-void
.end method

.method constructor <init>([C)V
    .registers 4
    .param p1, "array"    # [C

    .prologue
    const/4 v1, 0x0

    .line 32
    array-length v0, p1

    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/CharArrayBuffer;-><init>(I[CIZ)V

    .line 33
    return-void
.end method

.method private static copy(Ljava/nio/CharArrayBuffer;IZ)Ljava/nio/CharArrayBuffer;
    .registers 7
    .param p0, "other"    # Ljava/nio/CharArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    .prologue
    .line 43
    new-instance v0, Ljava/nio/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/CharArrayBuffer;-><init>(I[CIZ)V

    .line 44
    .local v0, "buf":Ljava/nio/CharArrayBuffer;
    iget v1, p0, Ljava/nio/CharArrayBuffer;->limit:I

    iput v1, v0, Ljava/nio/CharArrayBuffer;->limit:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->position()I

    move-result v1

    iput v1, v0, Ljava/nio/CharArrayBuffer;->position:I

    .line 46
    iput p1, v0, Ljava/nio/CharArrayBuffer;->mark:I

    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Ljava/nio/CharArrayBuffer;->mark:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/nio/CharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;IZ)Ljava/nio/CharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 58
    :cond_a
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->position:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 59
    iget v0, p0, Ljava/nio/CharArrayBuffer;->limit:I

    iget v1, p0, Ljava/nio/CharArrayBuffer;->position:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    .line 60
    iget v0, p0, Ljava/nio/CharArrayBuffer;->capacity:I

    iput v0, p0, Ljava/nio/CharArrayBuffer;->limit:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/CharArrayBuffer;->mark:I

    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .registers 3

    .prologue
    .line 66
    iget v0, p0, Ljava/nio/CharArrayBuffer;->mark:I

    iget-boolean v1, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    invoke-static {p0, v0, v1}, Ljava/nio/CharArrayBuffer;->copy(Ljava/nio/CharArrayBuffer;IZ)Ljava/nio/CharArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get()C
    .registers 5

    .prologue
    .line 99
    iget v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/CharArrayBuffer;->limit:I

    if-ne v0, v1, :cond_c

    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public final get(I)C
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/CharArrayBuffer;->checkIndex(I)V

    .line 107
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "dst"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 112
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 114
    :cond_c
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 115
    iget v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    .line 116
    return-object p0
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
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

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

.method protectedArray()[C
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 79
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 81
    :cond_a
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    return-object v0
.end method

.method protectedArrayOffset()I
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 88
    :cond_a
    iget v0, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    return v0
.end method

.method protectedHasArray()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

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

.method public put(C)Ljava/nio/CharBuffer;
    .registers 6
    .param p1, "c"    # C

    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 137
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 139
    :cond_a
    iget v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    iget v1, p0, Ljava/nio/CharArrayBuffer;->limit:I

    if-ne v0, v1, :cond_16

    .line 140
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 142
    :cond_16
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, v2

    aput-char p1, v0, v1

    .line 143
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 148
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 150
    :cond_a
    invoke-virtual {p0, p1}, Ljava/nio/CharArrayBuffer;->checkIndex(I)V

    .line 151
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    add-int/2addr v1, p1

    aput-char p2, v0, v1

    .line 152
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .registers 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    .prologue
    .line 156
    iget-boolean v0, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    if-eqz v0, :cond_a

    .line 157
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 159
    :cond_a
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_16

    .line 160
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 162
    :cond_16
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 163
    iget v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/CharArrayBuffer;->position:I

    .line 164
    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .registers 6

    .prologue
    .line 70
    new-instance v0, Ljava/nio/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v3, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v4, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ljava/nio/CharArrayBuffer;->isReadOnly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/CharArrayBuffer;-><init>(I[CIZ)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharArrayBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final subSequence(II)Ljava/nio/CharBuffer;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharArrayBuffer;->checkStartEndRemaining(II)V

    .line 129
    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 130
    .local v0, "result":Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 131
    iget v1, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Ljava/nio/CharArrayBuffer;->backingArray:[C

    iget v1, p0, Ljava/nio/CharArrayBuffer;->arrayOffset:I

    iget v2, p0, Ljava/nio/CharArrayBuffer;->position:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/CharArrayBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
