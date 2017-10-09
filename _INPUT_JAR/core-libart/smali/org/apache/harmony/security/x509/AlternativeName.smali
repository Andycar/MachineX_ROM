.class public final Lorg/apache/harmony/security/x509/AlternativeName;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "AlternativeName.java"


# static fields
.field public static final ISSUER:Z = false

.field public static final SUBJECT:Z = true


# instance fields
.field private alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

.field private which:Z


# direct methods
.method public constructor <init>(Z[B)V
    .registers 4
    .param p1, "which"    # Z
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 48
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    .line 49
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 50
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    if-eqz v0, :cond_35

    const-string v0, "Subject"

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Alternative Names [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    return-void

    .line 63
    :cond_35
    const-string v0, "Issuer"

    goto :goto_a
.end method

.method public getEncoded()[B
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    if-nez v0, :cond_e

    .line 57
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    .line 59
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    return-object v0
.end method
