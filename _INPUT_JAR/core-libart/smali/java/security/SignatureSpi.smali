.class public abstract Ljava/security/SignatureSpi;
.super Ljava/lang/Object;
.source "SignatureSpi.java"


# instance fields
.field protected appRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
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
    .line 310
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineInitSign(Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 76
    invoke-virtual {p0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 77
    return-void
.end method

.method protected abstract engineInitVerify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineSign([BII)I
    .registers 8
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    .line 185
    .local v0, "tmp":[B
    if-nez v0, :cond_8

    .line 198
    :goto_7
    return v1

    .line 188
    :cond_8
    array-length v2, v0

    if-ge p3, v2, :cond_13

    .line 189
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "The value of len parameter is less than the actual signature length"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_13
    if-gez p2, :cond_1d

    .line 192
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "offset < 0"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_1d
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2a

    .line 195
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "offset + len > outbuf.length"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_2a
    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 198
    array-length v1, v0

    goto :goto_7
.end method

.method protected abstract engineSign()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_7

    .line 145
    :goto_6
    return-void

    .line 125
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 127
    .local v4, "tmp":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 128
    .local v2, "offset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 129
    .local v3, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 131
    .local v1, "limit":I
    add-int v5, v2, v3

    sub-int v6, v1, v3

    :try_start_21
    invoke-virtual {p0, v4, v5, v6}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_24
    .catch Ljava/security/SignatureException; {:try_start_21 .. :try_end_24} :catch_28

    .line 135
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 132
    :catch_28
    move-exception v0

    .line 133
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 137
    .end local v0    # "e":Ljava/security/SignatureException;
    .end local v1    # "limit":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    .end local v4    # "tmp":[B
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    new-array v4, v5, [B

    .line 138
    .restart local v4    # "tmp":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 140
    const/4 v5, 0x0

    :try_start_3e
    array-length v6, v4

    invoke-virtual {p0, v4, v5, v6}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_42
    .catch Ljava/security/SignatureException; {:try_start_3e .. :try_end_42} :catch_43

    goto :goto_6

    .line 141
    :catch_43
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected abstract engineUpdate([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineVerify([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineVerify([BII)Z
    .registers 6
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 246
    new-array v0, p3, [B

    .line 247
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 248
    invoke-virtual {p0, v0}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v1

    return v1
.end method
