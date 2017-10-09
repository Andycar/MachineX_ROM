.class public final Lorg/apache/harmony/security/x509/BasicConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "BasicConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private ca:Z

.field private pathLenConstraint:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 45
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    .line 47
    const v1, 0x7fffffff

    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 54
    sget-object v1, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 55
    .local v0, "values":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    .line 56
    aget-object v1, v0, v3

    if-eqz v1, :cond_36

    .line 57
    new-instance v2, Ljava/math/BigInteger;

    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    .line 59
    :cond_36
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BasicConstraints [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  CA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pathLenConstraint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public getCa()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    return v0
.end method

.method public getEncoded()[B
    .registers 7

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    if-nez v0, :cond_22

    .line 74
    sget-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    .line 76
    :cond_22
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    return-object v0
.end method

.method public getPathLenConstraint()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    return v0
.end method
