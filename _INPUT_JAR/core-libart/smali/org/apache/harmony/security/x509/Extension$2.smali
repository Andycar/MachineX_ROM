.class final Lorg/apache/harmony/security/x509/Extension$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extension;
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
    .line 374
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 376
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;->setDefault(Ljava/lang/Object;I)V

    .line 377
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 12
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 382
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v1

    check-cast v0, [I

    move-object v8, v0

    check-cast v8, [I

    .line 383
    .local v8, "oid":[I
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B

    .line 384
    .local v3, "extnValue":[B
    aget-object v0, v9, v5

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, [B

    move-object v4, v0

    check-cast v4, [B

    .line 386
    .local v4, "rawExtnValue":[B
    const/4 v6, 0x0

    .line 388
    .local v6, "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 389
    new-instance v6, Lorg/apache/harmony/security/x509/KeyUsage;

    .end local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    .line 394
    .restart local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    :cond_39
    :goto_39
    new-instance v0, Lorg/apache/harmony/security/x509/Extension;

    aget-object v1, v9, v1

    check-cast v1, [I

    check-cast v1, [I

    aget-object v2, v9, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V

    return-object v0

    .line 390
    :cond_52
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 391
    new-instance v6, Lorg/apache/harmony/security/x509/BasicConstraints;

    .end local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    invoke-direct {v6, v3}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    .restart local v6    # "decodedExtValue":Lorg/apache/harmony/security/x509/ExtensionValue;
    goto :goto_39
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 399
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    .line 400
    .local v0, "ext":Lorg/apache/harmony/security/x509/Extension;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/Extension;->extnID:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$100(Lorg/apache/harmony/security/x509/Extension;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 401
    const/4 v2, 0x1

    # getter for: Lorg/apache/harmony/security/x509/Extension;->critical:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$200(Lorg/apache/harmony/security/x509/Extension;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_13
    aput-object v1, p2, v2

    .line 402
    const/4 v1, 0x2

    # getter for: Lorg/apache/harmony/security/x509/Extension;->extnValue:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extension;->access$300(Lorg/apache/harmony/security/x509/Extension;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 403
    return-void

    .line 401
    :cond_1d
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13
.end method
