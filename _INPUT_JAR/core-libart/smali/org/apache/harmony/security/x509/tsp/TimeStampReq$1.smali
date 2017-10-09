.class final Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 164
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setDefault(Ljava/lang/Object;I)V

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 167
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 12
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 171
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 173
    .local v9, "values":[Ljava/lang/Object;
    const/4 v0, 0x2

    aget-object v0, v9, v0

    if-nez v0, :cond_35

    const/4 v3, 0x0

    .line 175
    .local v3, "objID":Ljava/lang/String;
    :goto_d
    const/4 v0, 0x3

    aget-object v0, v9, v0

    if-nez v0, :cond_41

    const/4 v4, 0x0

    .line 178
    .local v4, "nonce":Ljava/math/BigInteger;
    :goto_13
    const/4 v0, 0x5

    aget-object v0, v9, v0

    if-nez v0, :cond_4e

    .line 179
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v5, 0x4

    aget-object v5, v9, v5

    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    .line 189
    :goto_34
    return-object v0

    .line 173
    .end local v3    # "objID":Ljava/lang/String;
    .end local v4    # "nonce":Ljava/math/BigInteger;
    :cond_35
    const/4 v0, 0x2

    aget-object v0, v9, v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 175
    .restart local v3    # "objID":Ljava/lang/String;
    :cond_41
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x3

    aget-object v0, v9, v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_13

    .line 189
    .restart local v4    # "nonce":Ljava/math/BigInteger;
    :cond_4e
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v5, 0x4

    aget-object v5, v9, v5

    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x5

    aget-object v6, v9, v6

    check-cast v6, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    goto :goto_34
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 202
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    .line 203
    .local v0, "req":Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    .line 204
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$200(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-result-object v3

    aput-object v3, p2, v1

    .line 205
    const/4 v3, 0x2

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3c

    move-object v1, v2

    :goto_1e
    aput-object v1, p2, v3

    .line 207
    const/4 v1, 0x3

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_45

    :goto_27
    aput-object v2, p2, v1

    .line 208
    const/4 v2, 0x4

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_4e

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_32
    aput-object v1, p2, v2

    .line 209
    const/4 v1, 0x5

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$600(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    .line 210
    return-void

    .line 205
    :cond_3c
    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_1e

    .line 207
    :cond_45
    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    goto :goto_27

    .line 208
    :cond_4e
    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_32
.end method
