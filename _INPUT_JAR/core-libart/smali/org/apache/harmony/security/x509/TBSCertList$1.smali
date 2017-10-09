.class final Lorg/apache/harmony/security/x509/TBSCertList$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 334
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 335
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 336
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 13
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 340
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, [Ljava/lang/Object;

    .line 341
    .local v10, "values":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList;

    aget-object v1, v10, v3

    if-nez v1, :cond_36

    move v1, v2

    :goto_10
    aget-object v2, v10, v2

    check-cast v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    check-cast v3, Lorg/apache/harmony/security/x501/Name;

    const/4 v4, 0x3

    aget-object v4, v10, v4

    check-cast v4, Ljava/util/Date;

    const/4 v5, 0x4

    aget-object v5, v10, v5

    check-cast v5, Ljava/util/Date;

    const/4 v6, 0x5

    aget-object v6, v10, v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x6

    aget-object v7, v10, v7

    check-cast v7, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList$1;)V

    return-object v0

    :cond_36
    aget-object v1, v10, v3

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 356
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    .line 357
    .local v0, "tbs":Lorg/apache/harmony/security/x509/TBSCertList;
    const/4 v2, 0x0

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I

    move-result v1

    if-le v1, v3, :cond_41

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    :goto_15
    aput-object v1, p2, v2

    .line 359
    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$500(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    aput-object v1, p2, v3

    .line 360
    const/4 v1, 0x2

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$600(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    .line 361
    const/4 v1, 0x3

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$700(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 362
    const/4 v1, 0x4

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$800(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 363
    const/4 v1, 0x5

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$900(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v1

    .line 364
    const/4 v1, 0x6

    # getter for: Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->access$1000(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    .line 365
    return-void

    .line 357
    :cond_41
    const/4 v1, 0x0

    goto :goto_15
.end method
