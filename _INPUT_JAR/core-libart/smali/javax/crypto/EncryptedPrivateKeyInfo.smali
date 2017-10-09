.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# static fields
.field private static final ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

.field private static final ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final nullParam:[B


# instance fields
.field private algName:Ljava/lang/String;

.field private final algParameters:Ljava/security/AlgorithmParameters;

.field private volatile encoded:[B

.field private final encryptedData:[B

.field private oid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 492
    new-array v0, v3, [B

    fill-array-data v0, :array_4e

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    .line 494
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$1;

    new-array v1, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 533
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 535
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$2;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 492
    nop

    :array_4e
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "encryptionAlgorithmName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-nez p1, :cond_e

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionAlgorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_e
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_31

    .line 143
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_31
    if-nez p2, :cond_3b

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptedData == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3b
    array-length v0, p2

    if-nez v0, :cond_46

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encryptedData.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_46
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 152
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .registers 6
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-nez p1, :cond_e

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algParams == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_e
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 178
    if-nez p2, :cond_1a

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptedData == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1a
    array-length v0, p2

    if-nez v0, :cond_25

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encryptedData.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_25
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 185
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 187
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_59

    .line 189
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_59
    return-void
.end method

.method public constructor <init>([B)V
    .registers 10
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_e

    .line 83
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "encoded == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_e
    array-length v5, p1

    new-array v5, v5, [B

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 86
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 89
    sget-object v5, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v5, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 91
    .local v4, "values":[Ljava/lang/Object;
    aget-object v0, v4, v7

    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 93
    .local v0, "aId":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v2

    .line 99
    .local v2, "mappingExists":Z
    const/4 v1, 0x0

    .line 100
    .local v1, "aParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v3

    .line 101
    .local v3, "params":[B
    if-eqz v3, :cond_54

    invoke-static {v3}, Ljavax/crypto/EncryptedPrivateKeyInfo;->isNullValue([B)Z

    move-result v5

    if-nez v5, :cond_54

    .line 103
    :try_start_3f
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 105
    if-nez v2, :cond_54

    .line 106
    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_54} :catch_60

    .line 111
    :cond_54
    :goto_54
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 113
    const/4 v5, 0x1

    aget-object v5, v4, v5

    check-cast v5, [B

    check-cast v5, [B

    iput-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 114
    return-void

    .line 108
    :catch_60
    move-exception v5

    goto :goto_54
.end method

.method static synthetic access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/EncryptedPrivateKeyInfo;

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .prologue
    .line 58
    sget-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    return-object v0
.end method

.method static synthetic access$200(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/EncryptedPrivateKeyInfo;

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/EncryptedPrivateKeyInfo;

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-object v0
.end method

.method private invalidKey()Ljava/security/InvalidKeyException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isNullValue([B)Z
    .registers 5
    .param p0, "toCheck"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    aget-byte v2, p0, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_c

    aget-byte v2, p0, v0

    if-nez v2, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method private mapAlgName()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 450
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 456
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 478
    :cond_21
    :goto_21
    const/4 v1, 0x1

    :cond_22
    return v1

    .line 459
    :cond_23
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->getStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "stdName":Ljava/lang/String;
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 464
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 465
    if-eqz v0, :cond_22

    .line 469
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 470
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 473
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_21

    .line 474
    :cond_44
    if-eqz v0, :cond_21

    .line 475
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_21
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v1, :cond_d

    .line 437
    sget-object v1, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 439
    :cond_d
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 440
    .local v0, "ret":[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 441
    return-object v0
.end method

.method public getEncryptedData()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 219
    .local v0, "ret":[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 220
    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 8
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 280
    if-nez p1, :cond_a

    .line 281
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_a
    :try_start_a
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 285
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_29

    .line 286
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 290
    :goto_18
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_1d} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_1d} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1d} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_1d} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_1d} :catch_62

    move-result-object v1

    .line 292
    .local v1, "decryptedData":[B
    :try_start_1e
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_3b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1e .. :try_end_23} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1e .. :try_end_23} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_23} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1e .. :try_end_23} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1e .. :try_end_23} :catch_62

    .line 296
    :try_start_23
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 288
    .end local v1    # "decryptedData":[B
    :cond_29
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_23 .. :try_end_2f} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_23 .. :try_end_2f} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_2f} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_23 .. :try_end_2f} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_23 .. :try_end_2f} :catch_62

    goto :goto_18

    .line 297
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_30
    move-exception v2

    .line 298
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_3b
    move-exception v3

    .line 294
    .local v3, "e1":Ljava/io/IOException;
    :try_start_3c
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3c .. :try_end_41} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3c .. :try_end_41} :catch_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_41} :catch_4c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3c .. :try_end_41} :catch_57
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3c .. :try_end_41} :catch_62

    .line 299
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_41
    move-exception v2

    .line 300
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4c
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_57
    move-exception v2

    .line 304
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_62
    move-exception v2

    .line 306
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 9
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_a

    .line 337
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 339
    :cond_a
    if-nez p2, :cond_14

    .line 340
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "providerName == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_14
    :try_start_14
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 344
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_33

    .line 345
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 349
    :goto_22
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_27
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_14 .. :try_end_27} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14 .. :try_end_27} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_27} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_27} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_27} :catch_6c

    move-result-object v1

    .line 351
    .local v1, "decryptedData":[B
    :try_start_28
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_45
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_28 .. :try_end_2d} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_28 .. :try_end_2d} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2d} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_28 .. :try_end_2d} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_28 .. :try_end_2d} :catch_6c

    .line 355
    :try_start_2d
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 347
    .end local v1    # "decryptedData":[B
    :cond_33
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_39
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2d .. :try_end_39} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2d .. :try_end_39} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_39} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2d .. :try_end_39} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2d .. :try_end_39} :catch_6c

    goto :goto_22

    .line 356
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_3a
    move-exception v2

    .line 357
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 352
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_45
    move-exception v3

    .line 353
    .local v3, "e1":Ljava/io/IOException;
    :try_start_46
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_4b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_46 .. :try_end_4b} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_46 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_4b} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_46 .. :try_end_4b} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_46 .. :try_end_4b} :catch_6c

    .line 358
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_4b
    move-exception v2

    .line 359
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_56
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_61
    move-exception v2

    .line 363
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6c
    move-exception v2

    .line 365
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 9
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 390
    if-nez p1, :cond_a

    .line 391
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "decryptKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_a
    if-nez p2, :cond_14

    .line 394
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "provider == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 397
    :cond_14
    :try_start_14
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 398
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_33

    .line 399
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 403
    :goto_22
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_27
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_14 .. :try_end_27} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14 .. :try_end_27} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_27} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_27} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_27} :catch_6c

    move-result-object v1

    .line 405
    .local v1, "decryptedData":[B
    :try_start_28
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_45
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_28 .. :try_end_2d} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_28 .. :try_end_2d} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2d} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_28 .. :try_end_2d} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_28 .. :try_end_2d} :catch_6c

    .line 409
    :try_start_2d
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 401
    .end local v1    # "decryptedData":[B
    :cond_33
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_39
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2d .. :try_end_39} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2d .. :try_end_39} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_39} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2d .. :try_end_39} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2d .. :try_end_39} :catch_6c

    goto :goto_22

    .line 410
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_3a
    move-exception v2

    .line 411
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedData":[B
    :catch_45
    move-exception v3

    .line 407
    .local v3, "e1":Ljava/io/IOException;
    :try_start_46
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->invalidKey()Ljava/security/InvalidKeyException;

    move-result-object v4

    throw v4
    :try_end_4b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_46 .. :try_end_4b} :catch_3a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_46 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_4b} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_46 .. :try_end_4b} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_46 .. :try_end_4b} :catch_6c

    .line 412
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedData":[B
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_4b
    move-exception v2

    .line 413
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_56
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_61
    move-exception v2

    .line 417
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6c
    move-exception v2

    .line 419
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 7
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_a

    .line 243
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cipher == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_a
    :try_start_a
    iget-object v3, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_f} :catch_24
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_f} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_f} :catch_3a

    move-result-object v0

    .line 248
    .local v0, "decryptedData":[B
    :try_start_10
    sget-object v3, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_24
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10 .. :try_end_15} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10 .. :try_end_15} :catch_3a

    .line 252
    :try_start_15
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v3

    .line 249
    :catch_1b
    move-exception v2

    .line 250
    .local v2, "e1":Ljava/io/IOException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Decrypted data does not represent valid PKCS#8 PrivateKeyInfo"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_24} :catch_24
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_15 .. :try_end_24} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_15 .. :try_end_24} :catch_3a

    .line 253
    .end local v0    # "decryptedData":[B
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_24
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2f
    move-exception v1

    .line 256
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3a
    move-exception v1

    .line 258
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
