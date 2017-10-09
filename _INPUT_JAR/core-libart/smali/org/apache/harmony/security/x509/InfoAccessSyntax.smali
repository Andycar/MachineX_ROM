.class public final Lorg/apache/harmony/security/x509/InfoAccessSyntax;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InfoAccessSyntax.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final accessDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    new-instance v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;

    sget-object v1, Lorg/apache/harmony/security/x509/AccessDescription;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .registers 5
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "accessDescriptions":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 51
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AccessDescriptions list is null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_13
    iput-object p1, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    .registers 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AccessDescriptions:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 88
    :cond_15
    const-string v2, "NULL\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1a
    return-void

    .line 90
    :cond_1b
    iget-object v2, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "accessDescription":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    if-nez v0, :cond_c

    .line 63
    sget-object v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    .line 65
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->encoding:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, "res":Ljava/lang/StringBuilder;
    const-string v3, "\n---- InfoAccessSyntax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 76
    iget-object v3, p0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "accessDescription":Ljava/lang/Object;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 81
    .end local v0    # "accessDescription":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_27
    const-string v3, "\n---- InfoAccessSyntax END\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
