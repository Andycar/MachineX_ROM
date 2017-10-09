.class public final Lorg/apache/harmony/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private generalSubtrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;

    sget-object v1, Lorg/apache/harmony/security/x509/GeneralSubtree;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/GeneralSubtrees$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "generalSubtrees":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/GeneralSubtree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/GeneralSubtrees;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/GeneralSubtrees;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    if-nez v0, :cond_c

    .line 70
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    .line 72
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->encoding:[B

    return-object v0
.end method

.method public getSubtrees()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/x509/GeneralSubtrees;->generalSubtrees:Ljava/util/List;

    return-object v0
.end method
