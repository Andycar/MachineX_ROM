.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_5

    .line 50
    const/4 v2, 0x1

    .line 59
    :cond_4
    :goto_4
    return v2

    .line 52
    :cond_5
    instance-of v3, p1, Ljava/security/cert/X509CRLEntry;

    if-eqz v3, :cond_4

    move-object v1, p1

    .line 55
    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 57
    .local v1, "obj":Ljava/security/cert/X509CRLEntry;
    :try_start_c
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_17
    .catch Ljava/security/cert/CRLException; {:try_start_c .. :try_end_17} :catch_19

    move-result v2

    goto :goto_4

    .line 58
    :catch_19
    move-exception v0

    .line 59
    .local v0, "e":Ljava/security/cert/CRLException;
    goto :goto_4
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getRevocationDate()Ljava/util/Date;
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 136
    const-string v4, "2.5.29.21"

    invoke-virtual {p0, v4}, Ljava/security/cert/X509CRLEntry;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 137
    .local v3, "reasonBytes":[B
    if-nez v3, :cond_b

    move-object v4, v5

    .line 145
    :goto_a
    return-object v4

    .line 142
    :cond_b
    :try_start_b
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 143
    .local v2, "rawBytes":[B
    new-instance v4, Lorg/apache/harmony/security/x509/ReasonCode;

    invoke-direct {v4, v2}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/ReasonCode;->getReason()Ljava/security/cert/CRLReason;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_23

    move-result-object v4

    goto :goto_a

    .line 144
    .end local v2    # "rawBytes":[B
    :catch_23
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 145
    goto :goto_a
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract hasExtensions()Z
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "res":I
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    .line 72
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_12

    .line 73
    aget-byte v3, v0, v1
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_11

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    .end local v0    # "array":[B
    .end local v1    # "i":I
    :catch_11
    move-exception v3

    .line 77
    :cond_12
    return v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
