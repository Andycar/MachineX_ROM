.class final Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "InfoAccessSyntax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/InfoAccessSyntax;
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
    .line 101
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax$1;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    .end local p1    # "object":Ljava/lang/Object;
    # getter for: Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;
    invoke-static {p1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->access$100(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
