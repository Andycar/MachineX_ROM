.class final Lorg/apache/harmony/security/x509/GeneralSubtrees$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "GeneralSubtrees.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralSubtrees;
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
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    .prologue
    .line 80
    new-instance v1, Lorg/apache/harmony/security/x509/GeneralSubtrees;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/GeneralSubtrees;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .line 85
    .local v0, "gss":Lorg/apache/harmony/security/x509/GeneralSubtrees;
    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->access$000(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    return-object v1

    :cond_f
    # getter for: Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->access$000(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;

    move-result-object v1

    goto :goto_e
.end method
