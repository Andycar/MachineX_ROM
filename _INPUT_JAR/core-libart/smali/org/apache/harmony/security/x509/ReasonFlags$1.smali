.class final Lorg/apache/harmony/security/x509/ReasonFlags$1;
.super Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.source "ReasonFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ReasonFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/ReasonFlags;-><init>([Z)V

    return-object v1
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 101
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    # getter for: Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/ReasonFlags;->access$000(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 102
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 103
    return-void
.end method
