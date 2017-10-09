.class final Lorg/apache/harmony/security/x509/TBSCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertificate;
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
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setDefault(Ljava/lang/Object;I)V

    .line 241
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 242
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 243
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    .line 244
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 16
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x7

    const/4 v12, 0x0

    .line 247
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/Object;

    .line 249
    .local v13, "values":[Ljava/lang/Object;
    aget-object v0, v13, v1

    if-nez v0, :cond_51

    move-object v8, v12

    .line 251
    .local v8, "issuerUniqueID":[Z
    :goto_10
    aget-object v0, v13, v2

    if-nez v0, :cond_5a

    move-object v9, v12

    .line 253
    .local v9, "subjectUniqueID":[Z
    :goto_15
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v3, v13, v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v3, 0x2

    aget-object v3, v13, v3

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v4, 0x3

    aget-object v4, v13, v4

    check-cast v4, Lorg/apache/harmony/security/x501/Name;

    const/4 v5, 0x4

    aget-object v5, v13, v5

    check-cast v5, Lorg/apache/harmony/security/x509/Validity;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    check-cast v6, Lorg/apache/harmony/security/x501/Name;

    const/4 v7, 0x6

    aget-object v7, v13, v7

    check-cast v7, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/16 v10, 0x9

    aget-object v10, v13, v10

    check-cast v10, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V

    return-object v0

    .line 249
    .end local v8    # "issuerUniqueID":[Z
    .end local v9    # "subjectUniqueID":[Z
    :cond_51
    aget-object v0, v13, v1

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v8

    goto :goto_10

    .line 251
    .restart local v8    # "issuerUniqueID":[Z
    :cond_5a
    aget-object v0, v13, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v9

    goto :goto_15
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 269
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 270
    .local v0, "tbs":Lorg/apache/harmony/security/x509/TBSCertificate;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 271
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 272
    const/4 v1, 0x2

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    .line 273
    const/4 v1, 0x3

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    .line 274
    const/4 v1, 0x4

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    aput-object v2, p2, v1

    .line 275
    const/4 v1, 0x5

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    .line 276
    const/4 v1, 0x6

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v2

    aput-object v2, p2, v1

    .line 277
    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 278
    const/4 v1, 0x7

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v1

    .line 280
    :cond_4e
    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v1

    if-eqz v1, :cond_61

    .line 281
    const/16 v1, 0x8

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v1

    .line 283
    :cond_61
    const/16 v1, 0x9

    # getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    .line 284
    return-void
.end method
