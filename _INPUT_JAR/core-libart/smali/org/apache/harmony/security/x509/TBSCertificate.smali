.class public final Lorg/apache/harmony/security/x509/TBSCertificate;
.super Ljava/lang/Object;
.source "TBSCertificate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final issuerUniqueID:[Z

.field private final serialNumber:Ljava/math/BigInteger;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final subjectUniqueID:[Z

.field private final validity:Lorg/apache/harmony/security/x509/Validity;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate$1;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V
    .registers 11
    .param p1, "version"    # I
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "validity"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "issuerUniqueID"    # [Z
    .param p9, "subjectUniqueID"    # [Z
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    .line 95
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 96
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 97
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 98
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    .line 99
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    .line 100
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 101
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    .line 102
    iput-object p9, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    .line 103
    iput-object p10, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 104
    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V
    .registers 12
    .param p1, "version"    # I
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "validity"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "issuerUniqueID"    # [Z
    .param p9, "subjectUniqueID"    # [Z
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p11, "encoding"    # [B

    .prologue
    .line 112
    invoke-direct/range {p0 .. p10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    .line 114
    iput-object p11, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 115
    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V
    .registers 13
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/math/BigInteger;
    .param p3, "x2"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "x3"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "x4"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "x5"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "x6"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "x7"    # [Z
    .param p9, "x8"    # [Z
    .param p10, "x9"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p11, "x10"    # [B
    .param p12, "x11"    # Lorg/apache/harmony/security/x509/TBSCertificate$1;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p11}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/TBSCertificate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .registers 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x31

    const/16 v6, 0x30

    .line 198
    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const-string v4, "\n  Version: V"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v4, "\n  Subject: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v8, "RFC2253"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v4, "\n  Signature Algorithm: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    .line 203
    const-string v4, "\n  Key: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v4, "\n  Validity: [From: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v4, "\n               To: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const-string v4, "\n  Issuer: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v8, "RFC2253"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v4, "\n  Serial Number: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    if-eqz v4, :cond_a0

    .line 209
    const-string v4, "\n  Issuer Id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_91
    if-ge v2, v3, :cond_a0

    aget-boolean v1, v0, v2

    .line 211
    .local v1, "b":Z
    if-eqz v1, :cond_9e

    move v4, v5

    :goto_98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_9e
    move v4, v6

    .line 211
    goto :goto_98

    .line 214
    .end local v0    # "arr$":[Z
    .end local v1    # "b":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_a0
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    if-eqz v4, :cond_bc

    .line 215
    const-string v4, "\n  Subject Id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    .restart local v0    # "arr$":[Z
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_ad
    if-ge v2, v3, :cond_bc

    aget-boolean v1, v0, v2

    .line 217
    .restart local v1    # "b":Z
    if-eqz v1, :cond_ba

    move v4, v5

    :goto_b4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_ba
    move v4, v6

    .line 217
    goto :goto_b4

    .line 220
    .end local v0    # "arr$":[Z
    .end local v1    # "b":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_bc
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v4, :cond_d6

    .line 221
    const-string v4, "\n\n  Extensions: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, "[\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v5, "    "

    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    const-string v4, "  ]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_d6
    const-string v4, "\n]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    if-nez v0, :cond_c

    .line 192
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 194
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method

.method public getValidity()Lorg/apache/harmony/security/x509/Validity;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method
