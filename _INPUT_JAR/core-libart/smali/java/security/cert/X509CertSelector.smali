.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field private authorityKeyIdentifier:[B

.field private certificateEquals:Ljava/security/cert/X509Certificate;

.field private certificateValid:Ljava/util/Date;

.field private extendedKeyUsage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerBytes:[B

.field private issuerName:Ljava/lang/String;

.field private keyUsage:[Z

.field private matchAllNames:Z

.field private nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

.field private pathLen:I

.field private pathToNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAltNames:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private subjectKeyIdentifier:[B

.field private subjectPublicKey:[B

.field private subjectPublicKeyAlgID:Ljava/lang/String;

.field private subjectPublicKeyImpl:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 80
    return-void
.end method

.method private checkOID(Ljava/lang/String;)V
    .registers 9
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2e

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "beg":I
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 458
    .local v3, "end":I
    :try_start_7
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, "comp":I
    add-int/lit8 v0, v3, 0x1

    .line 460
    if-ltz v1, :cond_16

    const/4 v4, 0x2

    if-le v1, v4, :cond_49

    .line 461
    :cond_16
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_2f} :catch_76

    .line 468
    .end local v1    # "comp":I
    :catch_2f
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "comp":I
    :cond_49
    const/16 v4, 0x2e

    :try_start_4b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 464
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 465
    if-ltz v1, :cond_5d

    const/16 v4, 0x27

    if-le v1, v4, :cond_90

    .line 466
    :cond_5d
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_76
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4b .. :try_end_76} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_76} :catch_76

    .line 470
    .end local v1    # "comp":I
    :catch_76
    move-exception v2

    .line 471
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "comp":I
    :cond_90
    return-void
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1083
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1084
    .local v0, "bytes":[B
    if-nez v0, :cond_9

    move-object v2, v3

    .line 1089
    .end local v0    # "bytes":[B
    :goto_8
    return-object v2

    .line 1087
    .restart local v0    # "bytes":[B
    :cond_9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_8

    .line 1088
    .end local v0    # "bytes":[B
    :catch_16
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 1089
    goto :goto_8
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 902
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 904
    .local v0, "path_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 907
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public addPathToName(I[B)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 960
    .local v0, "path_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 961
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 963
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 693
    .local v0, "alt_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 694
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 696
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 697
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 699
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 716
    .local v0, "alt_name":Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 717
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 719
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 720
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 722
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 10

    .prologue
    const/16 v8, 0x9

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1338
    :try_start_4
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_a} :catch_86

    .line 1343
    .local v2, "result":Ljava/security/cert/X509CertSelector;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v3, :cond_1f

    .line 1344
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 1346
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1350
    :cond_1f
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v3, :cond_34

    .line 1351
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 1353
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1357
    :cond_34
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v3, :cond_49

    .line 1358
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 1359
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1362
    :cond_49
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v3, :cond_5e

    .line 1363
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v3, v3

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 1364
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 1367
    :cond_5e
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-nez v3, :cond_89

    move-object v3, v4

    :goto_63
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 1370
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v3, :cond_91

    .line 1371
    new-array v3, v8, [Ljava/util/ArrayList;

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 1372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6e
    if-ge v1, v8, :cond_91

    .line 1373
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v3, v3, v1

    if-eqz v3, :cond_83

    .line 1374
    iget-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v6, v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v5, v3, v1

    .line 1372
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 1339
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/security/cert/X509CertSelector;
    :catch_86
    move-exception v0

    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    move-object v2, v4

    .line 1383
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_88
    return-object v2

    .line 1367
    .restart local v2    # "result":Ljava/security/cert/X509CertSelector;
    :cond_89
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_63

    .line 1379
    :cond_91
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-nez v3, :cond_9f

    move-object v3, v4

    :goto_96
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 1380
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_a7

    :goto_9c
    iput-object v4, v2, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    goto :goto_88

    .line 1379
    :cond_9f
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_96

    .line 1380
    :cond_a7
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9c
.end method

.method public getAuthorityKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 391
    const/4 v0, 0x0

    .line 395
    :goto_6
    return-object v0

    .line 393
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 394
    .local v0, "res":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 847
    iget v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_5
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_7

    .line 225
    const/4 v0, 0x0

    .line 232
    :goto_6
    return-object v0

    .line 227
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    if-nez v1, :cond_13

    .line 228
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 230
    :cond_13
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 231
    .local v0, "result":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x0

    .line 188
    :goto_5
    return-object v0

    .line 185
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 186
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 188
    :cond_12
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    goto :goto_5
.end method

.method public getKeyUsage()[Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v1, :cond_7

    .line 575
    const/4 v0, 0x0

    .line 579
    :goto_6
    return-object v0

    .line 577
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 578
    .local v0, "result":[Z
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_6
.end method

.method public getMatchAllSubjectAltNames()Z
    .registers 2

    .prologue
    .line 640
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getPathToNames()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 977
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 978
    const/4 v2, 0x0

    .line 984
    :cond_5
    return-object v2

    .line 980
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    .line 982
    .local v1, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public getPolicy()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 449
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 451
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v4, :cond_6

    .line 741
    const/4 v2, 0x0

    .line 754
    :cond_5
    return-object v2

    .line 743
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<*>;>;"
    const/4 v3, 0x0

    .local v3, "tag":I
    :goto_c
    const/16 v4, 0x9

    if-ge v3, v4, :cond_5

    .line 745
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3f

    .line 746
    const/4 v1, 0x0

    .local v1, "name":I
    :goto_17
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 748
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 744
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "name":I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c
.end method

.method public getSubjectAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 356
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 357
    const/4 v0, 0x0

    .line 361
    :goto_6
    return-object v0

    .line 359
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 360
    .local v0, "res":[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 27
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 1103
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 1104
    const/16 v23, 0x0

    .line 1326
    :goto_a
    return v23

    :cond_b
    move-object/from16 v4, p1

    .line 1107
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1108
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_28

    .line 1110
    const/16 v23, 0x0

    goto :goto_a

    .line 1112
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    if-eqz v23, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_43

    .line 1114
    const/16 v23, 0x0

    goto :goto_a

    .line 1116
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5e

    .line 1118
    const/16 v23, 0x0

    goto :goto_a

    .line 1120
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_79

    .line 1122
    const/16 v23, 0x0

    goto :goto_a

    .line 1124
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.14"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_9b

    .line 1129
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1131
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.35"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_bd

    .line 1134
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1136
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d0

    .line 1138
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_d0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c5 .. :try_end_d0} :catch_e8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c5 .. :try_end_d0} :catch_ed

    .line 1145
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13b

    .line 1147
    :try_start_d8
    const-string v23, "2.5.29.16"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    .line 1148
    .local v3, "bytes":[B
    if-nez v3, :cond_f2

    .line 1149
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1139
    .end local v3    # "bytes":[B
    :catch_e8
    move-exception v5

    .line 1140
    .local v5, "e":Ljava/security/cert/CertificateExpiredException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1141
    .end local v5    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_ed
    move-exception v5

    .line 1142
    .local v5, "e":Ljava/security/cert/CertificateNotYetValidException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1151
    .end local v5    # "e":Ljava/security/cert/CertificateNotYetValidException;
    .restart local v3    # "bytes":[B
    :cond_f2
    sget-object v23, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .line 1153
    .local v18, "pkup":Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotBefore()Ljava/util/Date;

    move-result-object v16

    .line 1154
    .local v16, "notBefore":Ljava/util/Date;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotAfter()Ljava/util/Date;

    move-result-object v15

    .line 1155
    .local v15, "notAfter":Ljava/util/Date;
    if-nez v16, :cond_10c

    if-nez v15, :cond_10c

    .line 1156
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1158
    :cond_10c
    if-eqz v16, :cond_122

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v23

    if-lez v23, :cond_122

    .line 1160
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1162
    :cond_122
    if-eqz v15, :cond_13b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_12f} :catch_136

    move-result v23

    if-gez v23, :cond_13b

    .line 1164
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1166
    .end local v3    # "bytes":[B
    .end local v15    # "notAfter":Ljava/util/Date;
    .end local v16    # "notBefore":Ljava/util/Date;
    .end local v18    # "pkup":Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    :catch_136
    move-exception v5

    .line 1167
    .local v5, "e":Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1170
    .end local v5    # "e":Ljava/io/IOException;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_175

    .line 1172
    :try_start_143
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 1173
    .local v6, "encoding":[B
    sget-object v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 1176
    .local v2, "ai":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_166} :catch_16d

    move-result v23

    if-nez v23, :cond_175

    .line 1177
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1179
    .end local v2    # "ai":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v6    # "encoding":[B
    :catch_16d
    move-exception v5

    .line 1180
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1181
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1184
    .end local v5    # "e":Ljava/io/IOException;
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_195

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_195

    .line 1187
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1190
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f9

    .line 1191
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 1192
    .local v10, "ku":[Z
    if-eqz v10, :cond_1f9

    .line 1193
    const/4 v7, 0x0

    .line 1194
    .local v7, "i":I
    array-length v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1cd

    array-length v12, v10

    .line 1196
    .local v12, "min_length":I
    :goto_1b9
    if-ge v7, v12, :cond_1dc

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v7

    if-eqz v23, :cond_1d7

    aget-boolean v23, v10, v7

    if-nez v23, :cond_1d7

    .line 1200
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1194
    .end local v12    # "min_length":I
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v12, v0

    goto :goto_1b9

    .line 1196
    .restart local v12    # "min_length":I
    :cond_1d7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b9

    .line 1203
    :cond_1da
    add-int/lit8 v7, v7, 0x1

    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_1f9

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v7

    if-eqz v23, :cond_1da

    .line 1205
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1210
    .end local v7    # "i":I
    .end local v10    # "ku":[Z
    .end local v12    # "min_length":I
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_21e

    .line 1212
    :try_start_201
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v9

    .line 1213
    .local v9, "keyUsage":Ljava/util/List;
    if-eqz v9, :cond_21e

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_212
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_201 .. :try_end_212} :catch_219

    move-result v23

    if-nez v23, :cond_21e

    .line 1215
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1218
    .end local v9    # "keyUsage":Ljava/util/List;
    :catch_219
    move-exception v5

    .line 1219
    .local v5, "e":Ljava/security/cert/CertificateParsingException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1222
    .end local v5    # "e":Ljava/security/cert/CertificateParsingException;
    :cond_21e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_256

    .line 1223
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v17

    .line 1224
    .local v17, "p_len":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-gez v23, :cond_23e

    if-ltz v17, :cond_23e

    .line 1226
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1228
    :cond_23e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-lez v23, :cond_256

    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-le v0, v1, :cond_256

    .line 1230
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1233
    .end local v17    # "p_len":I
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2f9

    .line 1236
    :try_start_25e
    const-string v23, "2.5.29.17"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    .line 1237
    .restart local v3    # "bytes":[B
    if-nez v3, :cond_26e

    .line 1238
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1240
    :cond_26e
    sget-object v23, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v21

    .line 1242
    .local v21, "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    if-eqz v21, :cond_284

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_288

    .line 1243
    :cond_284
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1245
    :cond_288
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v11, v0, [[Z

    .line 1247
    .local v11, "map":[[Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_28f
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ge v7, v0, :cond_2b9

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    if-nez v23, :cond_2a6

    sget-object v23, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :goto_2a1
    aput-object v23, v11, v7

    .line 1247
    add-int/lit8 v7, v7, 0x1

    goto :goto_28f

    .line 1248
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    goto :goto_2a1

    .line 1251
    :cond_2b9
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2bd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_31c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1252
    .local v13, "name":Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v13}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v22

    .line 1253
    .local v22, "tag":I
    const/4 v7, 0x0

    :goto_2ce
    aget-object v23, v11, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_2bd

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v22

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/GeneralName;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/harmony/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_319

    .line 1255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0
    :try_end_2f7
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_2f7} :catch_34e

    if-nez v23, :cond_313

    .line 1279
    .end local v3    # "bytes":[B
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "map":[[Z
    .end local v13    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v21    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .end local v22    # "tag":I
    :cond_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    if-eqz v23, :cond_356

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/security/cert/X509Certificate;)Z

    move-result v23

    if-nez v23, :cond_356

    .line 1281
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1258
    .restart local v3    # "bytes":[B
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "map":[[Z
    .restart local v13    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .restart local v21    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .restart local v22    # "tag":I
    :cond_313
    :try_start_313
    aget-object v23, v11, v22

    const/16 v24, 0x1

    aput-boolean v24, v23, v7

    .line 1253
    :cond_319
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ce

    .line 1262
    .end local v13    # "name":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v22    # "tag":I
    :cond_31c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0

    if-nez v23, :cond_328

    .line 1264
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1267
    :cond_328
    const/16 v22, 0x0

    .restart local v22    # "tag":I
    :goto_32a
    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2f9

    .line 1268
    const/4 v13, 0x0

    .local v13, "name":I
    :goto_333
    aget-object v23, v11, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_34b

    .line 1269
    aget-object v23, v11, v22

    aget-boolean v23, v23, v13
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_313 .. :try_end_342} :catch_34e

    if-nez v23, :cond_348

    .line 1270
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1268
    :cond_348
    add-int/lit8 v13, v13, 0x1

    goto :goto_333

    .line 1267
    :cond_34b
    add-int/lit8 v22, v22, 0x1

    goto :goto_32a

    .line 1274
    .end local v3    # "bytes":[B
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "map":[[Z
    .end local v13    # "name":I
    .end local v21    # "sans":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    .end local v22    # "tag":I
    :catch_34e
    move-exception v5

    .line 1275
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1276
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1284
    .end local v5    # "e":Ljava/io/IOException;
    :cond_356
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3ac

    .line 1285
    const-string v23, "2.5.29.32"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    .line 1286
    .restart local v3    # "bytes":[B
    if-nez v3, :cond_36e

    .line 1287
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1289
    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    if-nez v23, :cond_37e

    .line 1292
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 1296
    :cond_37e
    :try_start_37e
    sget-object v23, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/CertificatePolicies;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/CertificatePolicies;->getPolicyInformations()Ljava/util/List;

    move-result-object v20

    .line 1299
    .local v20, "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_390
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3dc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/security/x509/PolicyInformation;

    .line 1300
    .local v19, "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PolicyInformation;->getPolicyIdentifier()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3a9
    .catch Ljava/io/IOException; {:try_start_37e .. :try_end_3a9} :catch_3e0

    move-result v23

    if-eqz v23, :cond_390

    .line 1310
    .end local v3    # "bytes":[B
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v19    # "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    .end local v20    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3ea

    .line 1311
    const-string v23, "2.5.29.30"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    .line 1312
    .restart local v3    # "bytes":[B
    if-eqz v3, :cond_3ea

    .line 1315
    :try_start_3c0
    sget-object v23, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/x509/NameConstraints;
    :try_end_3ca
    .catch Ljava/io/IOException; {:try_start_3c0 .. :try_end_3ca} :catch_3e5

    .line 1321
    .local v14, "nameConstraints":Lorg/apache/harmony/security/x509/NameConstraints;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v23

    if-nez v23, :cond_3ea

    .line 1322
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1304
    .end local v14    # "nameConstraints":Lorg/apache/harmony/security/x509/NameConstraints;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v20    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :cond_3dc
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1305
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v20    # "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    :catch_3e0
    move-exception v5

    .line 1307
    .restart local v5    # "e":Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1317
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3e5
    move-exception v5

    .line 1319
    .restart local v5    # "e":Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1326
    .end local v3    # "bytes":[B
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3ea
    const/16 v23, 0x1

    goto/16 :goto_a
.end method

.method public setAuthorityKeyIdentifier([B)V
    .registers 5
    .param p1, "authorityKeyIdentifier"    # [B

    .prologue
    const/4 v2, 0x0

    .line 372
    if-nez p1, :cond_7

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 380
    :goto_6
    return-void

    .line 376
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 377
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public setBasicConstraints(I)V
    .registers 4
    .param p1, "pathLen"    # I

    .prologue
    .line 830
    const/4 v0, -0x2

    if-ge p1, v0, :cond_b

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathLen < -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_b
    iput p1, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 834
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 89
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    .line 90
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "certificateValid"    # Ljava/util/Date;

    .prologue
    .line 406
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 409
    return-void

    .line 406
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_3
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "keyUsage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 593
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 602
    :cond_b
    :goto_b
    return-void

    .line 596
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 597
    .local v1, "key_u":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 598
    .local v2, "usage":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 601
    .end local v2    # "usage":Ljava/lang/String;
    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    goto :goto_b
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 5
    .param p1, "issuerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    if-nez p1, :cond_a

    .line 159
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 160
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 171
    :goto_9
    return-void

    .line 165
    :cond_a
    :try_start_a
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 166
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_9

    .line 168
    :catch_17
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 132
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 134
    return-void
.end method

.method public setIssuer([B)V
    .registers 7
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_6

    .line 202
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 213
    :goto_5
    return-void

    .line 206
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 208
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 209
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_5

    .line 210
    :catch_1e
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setKeyUsage([Z)V
    .registers 5
    .param p1, "keyUsage"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 558
    if-nez p1, :cond_7

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 564
    :goto_6
    return-void

    .line 562
    :cond_7
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 563
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_6
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .registers 2
    .param p1, "matchAllNames"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 627
    return-void
.end method

.method public setNameConstraints([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    .line 802
    return-void

    .line 799
    :cond_6
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    goto :goto_3
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 930
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 944
    :cond_b
    return-void

    .line 933
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 934
    .local v1, "name":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 935
    .local v2, "tag":I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 936
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 937
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(ILjava/lang/String;)V

    goto :goto_10

    .line 938
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 939
    check-cast v3, [B

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    goto :goto_10

    .line 941
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPolicy(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    .local p1, "policies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_6

    .line 865
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 874
    :goto_5
    return-void

    .line 868
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 869
    .local v2, "pols":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 870
    .local v0, "certPolicyId":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 873
    .end local v0    # "certPolicyId":Ljava/lang/String;
    :cond_26
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    goto :goto_5
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .registers 3
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    .prologue
    .line 432
    if-nez p1, :cond_6

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 437
    :goto_5
    return-void

    .line 436
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 110
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 111
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 5
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_6

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 277
    :goto_5
    return-void

    .line 273
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 274
    :catch_e
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 243
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 244
    return-void
.end method

.method public setSubject([B)V
    .registers 5
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_6

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 313
    :goto_5
    return-void

    .line 309
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 310
    :catch_e
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 663
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 677
    :cond_b
    return-void

    .line 666
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 667
    .local v1, "name":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 668
    .local v2, "tag":I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 669
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 670
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(ILjava/lang/String;)V

    goto :goto_10

    .line 671
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 672
    check-cast v3, [B

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(I[B)V

    goto :goto_10

    .line 674
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setSubjectKeyIdentifier([B)V
    .registers 5
    .param p1, "subjectKeyIdentifier"    # [B

    .prologue
    const/4 v2, 0x0

    .line 340
    if-nez p1, :cond_7

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 347
    :goto_6
    return-void

    .line 344
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 345
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_6
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 513
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 514
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 515
    return-void

    .line 513
    :cond_8
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    goto :goto_3
.end method

.method public setSubjectPublicKey([B)V
    .registers 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 527
    if-nez p1, :cond_9

    .line 528
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 529
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 537
    :goto_8
    return-void

    .line 532
    :cond_9
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 533
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 534
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    goto :goto_8
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .registers 3
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    if-nez p1, :cond_6

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    .line 494
    :goto_5
    return-void

    .line 492
    :cond_6
    invoke-direct {p0, p1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 493
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x9

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v7, "X509CertSelector: \n["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_1b

    .line 1002
    const-string v7, "\n  certificateEquals: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_1b
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v7, :cond_2a

    .line 1005
    const-string v7, "\n  serialNumber: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1007
    :cond_2a
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_39

    .line 1008
    const-string v7, "\n  issuer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1010
    :cond_39
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_48

    .line 1011
    const-string v7, "\n  subject: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1013
    :cond_48
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v7, :cond_5b

    .line 1014
    const-string v7, "\n  subjectKeyIdentifier: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :cond_5b
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v7, :cond_6e

    .line 1018
    const-string v7, "\n  authorityKeyIdentifier: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    :cond_6e
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v7, :cond_7d

    .line 1022
    const-string v7, "\n  certificateValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1024
    :cond_7d
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    if-eqz v7, :cond_8c

    .line 1025
    const-string v7, "\n  subjectPublicKeyAlgID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_8c
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v7, :cond_9b

    .line 1028
    const-string v7, "\n  privateKeyValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_9b
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v7, :cond_ae

    .line 1031
    const-string v7, "\n  subjectPublicKey: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_ae
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v7, :cond_103

    .line 1035
    const-string v7, "\n  keyUsage: \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    new-array v3, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "digitalSignature"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "nonRepudiation"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "keyEncipherment"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "dataEncipherment"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "keyAgreement"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string v8, "keyCertSign"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "cRLSign"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    const-string v8, "encipherOnly"

    aput-object v8, v3, v7

    const/16 v7, 0x8

    const-string v8, "decipherOnly"

    aput-object v8, v3, v7

    .line 1041
    .local v3, "kuNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e8
    if-ge v1, v9, :cond_fe

    .line 1042
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_fb

    .line 1043
    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 1046
    :cond_fe
    const-string v7, "\n  ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .end local v1    # "i":I
    .end local v3    # "kuNames":[Ljava/lang/String;
    :cond_103
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-eqz v7, :cond_116

    .line 1049
    const-string v7, "\n  extendedKeyUsage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_116
    const-string v7, "\n  matchAllNames: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1052
    const-string v7, "\n  pathLen: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1053
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v7, :cond_168

    .line 1054
    const-string v7, "\n  subjectAltNames:  \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_136
    if-ge v1, v9, :cond_163

    .line 1056
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v7, v1

    .line 1057
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    if-eqz v4, :cond_160

    .line 1058
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1059
    .local v6, "size":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_146
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_160

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1060
    .local v0, "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_146

    .line 1055
    .end local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "size":I
    :cond_160
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 1064
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralName;>;"
    :cond_163
    const-string v7, "\n  ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .end local v1    # "i":I
    :cond_168
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-eqz v7, :cond_16c

    .line 1068
    :cond_16c
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-eqz v7, :cond_17f

    .line 1069
    const-string v7, "\n  policies: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_17f
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-eqz v7, :cond_1a8

    .line 1072
    const-string v7, "\n  pathToNames:  \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_18e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1074
    .restart local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18e

    .line 1077
    .end local v0    # "generalName":Lorg/apache/harmony/security/x509/GeneralName;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1a8
    const-string v7, "\n]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
