.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient hash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .registers 5
    .param p1, "signerCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "timestamp"    # Ljava/security/Timestamp;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_d

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "signerCertPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    .line 53
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_5

    .line 81
    :cond_4
    :goto_4
    return v1

    .line 73
    :cond_5
    instance-of v3, p1, Ljava/security/CodeSigner;

    if-eqz v3, :cond_2b

    move-object v0, p1

    .line 74
    check-cast v0, Ljava/security/CodeSigner;

    .line 75
    .local v0, "that":Ljava/security/CodeSigner;
    iget-object v3, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    iget-object v4, v0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v3, v4}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    move v1, v2

    .line 76
    goto :goto_4

    .line 78
    :cond_18
    iget-object v3, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v3, :cond_22

    iget-object v3, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_22
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    iget-object v2, v0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .end local v0    # "that":Ljava/security/CodeSigner;
    :cond_2b
    move v1, v2

    .line 81
    goto :goto_4
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    if-nez v0, :cond_12

    .line 115
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v1

    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_f
    xor-int/2addr v0, v1

    iput v0, p0, Ljava/security/CodeSigner;->hash:I

    .line 118
    :cond_12
    iget v0, p0, Ljava/security/CodeSigner;->hash:I

    return v0

    .line 115
    :cond_15
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v0}, Ljava/security/Timestamp;->hashCode()I

    move-result v0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "CodeSigner ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v1, :cond_2a

    .line 136
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    :cond_2a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
