.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljava/security/spec/KeySpec;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .registers 7
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p1, :cond_d

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_d
    array-length v0, p1

    if-nez v0, :cond_18

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_18
    if-ltz p3, :cond_1c

    if-gez p2, :cond_24

    .line 101
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len < 0 || offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_24
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_30

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_30
    if-nez p4, :cond_3a

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3a
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 110
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 111
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 112
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 6
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_e

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_e
    array-length v0, p1

    if-nez v0, :cond_19

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_19
    if-nez p2, :cond_23

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_23
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 69
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 70
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-ne p1, p0, :cond_5

    .line 175
    :cond_4
    :goto_4
    return v1

    .line 171
    :cond_5
    instance-of v3, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-nez v3, :cond_b

    move v1, v2

    .line 172
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 174
    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 175
    .local v0, "ks":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    iget-object v4, v0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v4, v0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_22
    move v1, v2

    goto :goto_4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 139
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 150
    iget-object v5, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 151
    .local v4, "result":I
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_12

    aget-byte v1, v0, v2

    .line 152
    .local v1, "element":B
    add-int/2addr v4, v1

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 154
    .end local v1    # "element":B
    :cond_12
    return v4
.end method
