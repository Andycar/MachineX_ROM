.class public abstract Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.super Ljava/lang/Object;
.source "ChunkHandler.java"


# static fields
.field public static final CHUNK_FAIL:I

.field public static final CHUNK_ORDER:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    .line 32
    const-string v0, "FAIL"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 5
    .param p0, "errorCode"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_4

    .line 63
    const-string p1, ""

    .line 65
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "out":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    invoke-static {v0, p1}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    .line 93
    new-array v0, p1, [C

    .line 94
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_e

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static name(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 127
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 129
    .local v0, "ascii":[C
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 130
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 131
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 132
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 134
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 104
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 106
    :cond_11
    return-void
.end method

.method public static type(Ljava/lang/String;)I
    .registers 6
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_20

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad type name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_20
    const/4 v1, 0x0

    .line 116
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v4, :cond_31

    .line 117
    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 119
    :cond_31
    return v1
.end method

.method public static wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 80
    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    .local v0, "in":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    return-object v0
.end method


# virtual methods
.method public abstract connected()V
.end method

.method public abstract disconnected()V
.end method

.method public abstract handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
.end method
