.class final Lorg/apache/harmony/security/x509/GeneralNames$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "GeneralNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .param p1, "x0"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 137
    new-instance v1, Lorg/apache/harmony/security/x509/GeneralNames;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames$1;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 142
    .local v0, "gns":Lorg/apache/harmony/security/x509/GeneralNames;
    # getter for: Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralNames;->access$100(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
