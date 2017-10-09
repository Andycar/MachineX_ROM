.class final Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.super Ljava/lang/Object;
.source "AuthenticatedAttributes.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private final authenticatedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;

    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    return-void
.end method

.method private constructor <init>([BLjava/util/List;)V
    .registers 3
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "authenticatedAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    .line 41
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    .line 42
    return-void
.end method

.method synthetic constructor <init>([BLjava/util/List;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;)V
    .registers 4
    .param p1, "x0"    # [B
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;-><init>([BLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    if-nez v0, :cond_c

    .line 53
    sget-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    .line 55
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    return-object v0
.end method
