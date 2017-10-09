.class public final Lorg/apache/harmony/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final policyIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 85
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyInformation$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyInformation$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "policyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/PolicyInformation;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 79
    const-string v0, "Policy Identifier ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    if-nez v0, :cond_c

    .line 73
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    .line 75
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    return-object v0
.end method

.method public getPolicyIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method
