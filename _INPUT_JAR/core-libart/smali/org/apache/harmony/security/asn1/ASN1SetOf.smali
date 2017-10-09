.class public Lorg/apache/harmony/security/asn1/ASN1SetOf;
.super Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
.source "ASN1SetOf.java"


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .param p1, "type"    # Lorg/apache/harmony/security/asn1/ASN1Type;

    .prologue
    .line 36
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 37
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    .line 42
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 49
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    .line 50
    return-void
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 53
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getSetOfLength(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    .line 54
    return-void
.end method
