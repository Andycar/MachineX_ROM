.class final Lorg/apache/harmony/security/x509/ORAddress$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ORAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ORAddress;
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
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 68
    return-void
.end method
