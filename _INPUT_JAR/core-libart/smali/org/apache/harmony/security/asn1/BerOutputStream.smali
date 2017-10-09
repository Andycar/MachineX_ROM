.class public Lorg/apache/harmony/security/asn1/BerOutputStream;
.super Ljava/lang/Object;
.source "BerOutputStream.java"


# instance fields
.field public content:Ljava/lang/Object;

.field public encoded:[B

.field public length:I

.field protected offset:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeANY()V
    .registers 6

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 72
    return-void
.end method

.method public encodeBitString()V
    .registers 7

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    .line 77
    .local v0, "bStr":Lorg/apache/harmony/security/asn1/BitString;
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v3, v0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 78
    iget-object v1, v0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 80
    return-void
.end method

.method public encodeBoolean()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 88
    :goto_11
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 89
    return-void

    .line 86
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_11
.end method

.method public encodeChoice(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 4
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 4
    .param p1, "explicit"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeGeneralizedTime()V
    .registers 6

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 102
    return-void
.end method

.method public encodeInteger()V
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 112
    return-void
.end method

.method public encodeOID()V
    .registers 10

    .prologue
    const/16 v8, 0x7f

    const/4 v7, 0x1

    .line 121
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 123
    .local v2, "oid":[I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 127
    .local v3, "oidLen":I
    array-length v4, v2

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_f
    if-le v1, v7, :cond_45

    .line 128
    aget v0, v2, v1

    .line 129
    .local v0, "elem":I
    if-le v0, v8, :cond_36

    .line 130
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 131
    shr-int/lit8 v0, v0, 0x7

    .line 132
    :goto_23
    if-lez v0, :cond_40

    .line 133
    add-int/lit8 v3, v3, -0x1

    .line 134
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 135
    shr-int/lit8 v0, v0, 0x7

    goto :goto_23

    .line 138
    :cond_36
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 127
    :cond_40
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 143
    .end local v0    # "elem":I
    :cond_45
    const/4 v4, 0x0

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x28

    aget v5, v2, v7

    add-int v0, v4, v5

    .line 144
    .restart local v0    # "elem":I
    if-le v0, v8, :cond_71

    .line 145
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 146
    shr-int/lit8 v0, v0, 0x7

    .line 147
    :goto_5e
    if-lez v0, :cond_7b

    .line 148
    add-int/lit8 v3, v3, -0x1

    .line 149
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    or-int/lit16 v6, v0, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 150
    shr-int/lit8 v0, v0, 0x7

    goto :goto_5e

    .line 153
    :cond_71
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 156
    :cond_7b
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 157
    return-void
.end method

.method public encodeOctetString()V
    .registers 6

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 117
    return-void
.end method

.method public encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .prologue
    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 4
    .param p1, "sequenceOf"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 4
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 4
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeString()V
    .registers 6

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 178
    return-void
.end method

.method public final encodeTag(I)V
    .registers 9
    .param p1, "tag"    # I

    .prologue
    .line 46
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 48
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    const/16 v5, 0x7f

    if-le v4, v5, :cond_49

    .line 49
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    shr-int/lit8 v0, v4, 0x8

    .line 50
    .local v0, "eLen":I
    const/4 v2, 0x1

    .line 51
    .local v2, "numOctets":B
    :goto_16
    if-lez v0, :cond_1e

    .line 52
    add-int/lit8 v4, v2, 0x1

    int-to-byte v2, v4

    .line 51
    shr-int/lit8 v0, v0, 0x8

    goto :goto_16

    .line 55
    :cond_1e
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    or-int/lit16 v6, v2, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 56
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 58
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 59
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    add-int/lit8 v3, v4, -0x1

    .line 60
    .local v3, "numOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    if-ge v1, v2, :cond_43

    .line 61
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    sub-int v5, v3, v1

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 60
    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    goto :goto_35

    .line 63
    :cond_43
    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 67
    .end local v0    # "eLen":I
    .end local v1    # "i":I
    .end local v2    # "numOctets":B
    .end local v3    # "numOffset":I
    :goto_48
    return-void

    .line 65
    :cond_49
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v6, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_48
.end method

.method public encodeUTCTime()V
    .registers 6

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->encoded:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerOutputStream;->offset:I

    .line 107
    return-void
.end method

.method public getChoiceLength(Lorg/apache/harmony/security/asn1/ASN1Choice;)V
    .registers 4
    .param p1, "choice"    # Lorg/apache/harmony/security/asn1/ASN1Choice;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V
    .registers 4
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 4
    .param p1, "sequence"    # Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 4
    .param p1, "set"    # Lorg/apache/harmony/security/asn1/ASN1Set;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 4
    .param p1, "setOf"    # Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
