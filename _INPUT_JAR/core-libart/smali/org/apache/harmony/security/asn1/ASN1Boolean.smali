.class public final Lorg/apache/harmony/security/asn1/ASN1Boolean;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 48
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    return-object v0
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
    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    .line 65
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeBoolean()V

    .line 86
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_b

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lorg/apache/harmony/security/asn1/BerOutputStream;

    .prologue
    .line 89
    const/4 v0, 0x1

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 90
    return-void
.end method
