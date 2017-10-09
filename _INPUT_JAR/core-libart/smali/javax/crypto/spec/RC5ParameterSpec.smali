.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B

.field private final rounds:I

.field private final version:I

.field private final wordSize:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 47
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 48
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 50
    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 8
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p4, :cond_e

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_e
    array-length v0, p4

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1d

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length < 2 * (wordSize / 8)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1d
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 81
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 82
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 83
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 84
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 85
    return-void
.end method

.method public constructor <init>(III[BI)V
    .registers 9
    .param p1, "version"    # I
    .param p2, "rounds"    # I
    .param p3, "wordSize"    # I
    .param p4, "iv"    # [B
    .param p5, "offset"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p4, :cond_d

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_d
    if-gez p5, :cond_28

    .line 117
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_28
    array-length v0, p4

    sub-int/2addr v0, p5

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_38

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length - offset < 2 * (wordSize / 8)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_38
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 123
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 124
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 125
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 126
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    const/4 v1, 0x0

    div-int/lit8 v2, p3, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p4, p5, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 127
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    if-ne p1, p0, :cond_5

    .line 188
    :cond_4
    :goto_4
    return v1

    .line 184
    :cond_5
    instance-of v3, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    if-nez v3, :cond_b

    move v1, v2

    .line 185
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 187
    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 188
    .local v0, "ps":Ljavax/crypto/spec/RC5ParameterSpec;
    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v4, v0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    iget v4, v0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    iget v4, v0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v4, v0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public getIV()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v1, :cond_7

    .line 163
    const/4 v0, 0x0

    .line 167
    :goto_6
    return-object v0

    .line 165
    :cond_7
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 166
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public getRounds()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    return v0
.end method

.method public getWordSize()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 201
    iget v6, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v7, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    add-int/2addr v6, v7

    iget v7, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    add-int v4, v6, v7

    .line 202
    .local v4, "result":I
    iget-object v6, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v6, :cond_f

    move v5, v4

    .line 208
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_e
    return v5

    .line 205
    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_f
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_13
    if-ge v2, v3, :cond_1d

    aget-byte v1, v0, v2

    .line 206
    .local v1, "element":B
    and-int/lit16 v6, v1, 0xff

    add-int/2addr v4, v6

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v1    # "element":B
    :cond_1d
    move v5, v4

    .line 208
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_e
.end method
