.class final Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
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
    .line 75
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;->setOptional(I)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 82
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 83
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;Lorg/apache/harmony/security/pkcs7/ContentInfo;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;

    .line 91
    .local v0, "resp":Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->access$000(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    move-result-object v2

    aput-object v2, p2, v1

    .line 92
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-result-object v2

    aput-object v2, p2, v1

    .line 93
    return-void
.end method
