.class final Lorg/apache/harmony/security/x509/Validity$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Validity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Validity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .param p1, "x0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 89
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 90
    .local v0, "values":[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/Validity;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Date;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/security/x509/Validity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 94
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Validity;

    .line 95
    .local v0, "validity":Lorg/apache/harmony/security/x509/Validity;
    const/4 v1, 0x0

    # getter for: Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->access$000(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 96
    const/4 v1, 0x1

    # getter for: Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->access$100(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 97
    return-void
.end method
