.class public final Lorg/apache/harmony/security/x509/CertificateIssuer;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificateIssuer.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private issuer:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 75
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer$1;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "encoding"    # [B

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 49
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Certificate Issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_13

    .line 62
    :try_start_d
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1f

    .line 69
    :cond_13
    :goto_13
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    return-void

    .line 63
    :catch_1f
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unparseable (incorrect!) extension value:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-super {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;)V

    goto :goto_13
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_12

    .line 53
    sget-object v0, Lorg/apache/harmony/security/x509/CertificateIssuer;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/CertificateIssuer;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 55
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateIssuer;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
