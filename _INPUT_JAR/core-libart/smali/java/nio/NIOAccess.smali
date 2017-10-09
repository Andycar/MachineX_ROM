.class final Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .registers 2
    .param p0, "b"    # Ljava/nio/Buffer;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getBaseArrayOffset(Ljava/nio/Buffer;)I
    .registers 3
    .param p0, "b"    # Ljava/nio/Buffer;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static getBasePointer(Ljava/nio/Buffer;)J
    .registers 6
    .param p0, "b"    # Ljava/nio/Buffer;

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    iget-wide v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:J

    .line 31
    .local v0, "address":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 34
    :goto_8
    return-wide v2

    :cond_9
    iget v2, p0, Ljava/nio/Buffer;->position:I

    iget v3, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    goto :goto_8
.end method
