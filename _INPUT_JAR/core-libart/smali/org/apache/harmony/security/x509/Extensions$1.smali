.class final Lorg/apache/harmony/security/x509/Extensions$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extensions;
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
    .line 390
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 392
    new-instance v1, Lorg/apache/harmony/security/x509/Extensions;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/Extensions;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 396
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    .line 397
    .local v0, "extensions":Lorg/apache/harmony/security/x509/Extensions;
    # getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    return-object v1

    :cond_f
    # getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->access$000(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    goto :goto_e
.end method
