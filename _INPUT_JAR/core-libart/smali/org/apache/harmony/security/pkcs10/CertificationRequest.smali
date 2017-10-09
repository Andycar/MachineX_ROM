.class public final Lorg/apache/harmony/security/pkcs10/CertificationRequest;
.super Ljava/lang/Object;
.source "CertificationRequest.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

.field private signature:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 89
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .registers 5
    .param p1, "info"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signature"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    .line 58
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 59
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    .line 60
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .registers 5
    .param p1, "info"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "signature"    # [B
    .param p4, "encoding"    # [B

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 65
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/pkcs10/CertificationRequest$1;)V
    .registers 6
    .param p1, "x0"    # Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .param p2, "x1"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/pkcs10/CertificationRequest;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/pkcs10/CertificationRequest;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)[B
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/pkcs10/CertificationRequest;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    if-nez v0, :cond_c

    .line 84
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    .line 86
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    return-object v0
.end method

.method public getInfo()Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method public getSignature()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 74
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    return-object v0
.end method
