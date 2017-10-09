.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineDigest([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v1

    if-ge p3, v1, :cond_11

    .line 122
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 123
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "The value of len parameter is less than the actual digest length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_11
    if-gez p2, :cond_1e

    .line 126
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 127
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "offset < 0"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1e
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2e

    .line 130
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 131
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "offset + len > buf.length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2e
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    .line 134
    .local v0, "tmp":[B
    array-length v1, v0

    if-ge p3, v1, :cond_3d

    .line 135
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "The value of len parameter is less than the actual digest length"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_3d
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 138
    array-length v1, v0

    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7

    .line 89
    :goto_6
    return-void

    .line 77
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 79
    .local v3, "tmp":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 80
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 81
    .local v2, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 82
    .local v0, "limit":I
    add-int v4, v1, v2

    sub-int v5, v0, v2

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 83
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 85
    .end local v0    # "limit":I
    .end local v1    # "offset":I
    .end local v2    # "position":I
    .end local v3    # "tmp":[B
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    .line 86
    .restart local v3    # "tmp":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 87
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    goto :goto_6
.end method

.method protected abstract engineUpdate([BII)V
.end method
