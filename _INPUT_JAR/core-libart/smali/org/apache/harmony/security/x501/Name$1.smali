.class final Lorg/apache/harmony/security/x501/Name$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/Name;
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
    .line 238
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 5
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 241
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/util/List;Lorg/apache/harmony/security/x501/Name$1;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, Lorg/apache/harmony/security/x501/Name;

    .end local p1    # "object":Ljava/lang/Object;
    # getter for: Lorg/apache/harmony/security/x501/Name;->rdn:Ljava/util/List;
    invoke-static {p1}, Lorg/apache/harmony/security/x501/Name;->access$100(Lorg/apache/harmony/security/x501/Name;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
