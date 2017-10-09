.class public abstract Ljava/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/Certificate$CertificateRep;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31c20b3b0df7f5e5L


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 77
    if-ne p0, p1, :cond_4

    .line 78
    const/4 v1, 0x1

    .line 89
    .end local p1    # "other":Ljava/lang/Object;
    :goto_3
    return v1

    .line 80
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_1e

    .line 83
    :try_start_8
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_15
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_3

    .line 85
    :catch_17
    move-exception v0

    .line 86
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 103
    .local v1, "encoded":[B
    const/4 v2, 0x0

    .line 104
    .local v2, "hash":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_17

    .line 105
    aget-byte v4, v1, v3
    :try_end_b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_b} :catch_10

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 108
    .end local v1    # "encoded":[B
    .end local v2    # "hash":I
    .end local v3    # "i":I
    :catch_10
    move-exception v0

    .line 109
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 107
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    .restart local v2    # "hash":I
    .restart local v3    # "i":I
    :cond_17
    return v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    new-instance v1, Ljava/security/cert/Certificate$CertificateRep;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/Certificate$CertificateRep;-><init>(Ljava/lang/String;[B)V
    :try_end_d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 198
    :catch_e
    move-exception v0

    .line 199
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create serialization object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
