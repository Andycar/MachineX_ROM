.class public Lorg/apache/harmony/security/PublicKeyImpl;
.super Ljava/lang/Object;
.source "PublicKeyImpl.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x63a102f1658f20fbL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/harmony/security/PublicKeyImpl;->algorithm:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/PublicKeyImpl;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v1, p0, Lorg/apache/harmony/security/PublicKeyImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 57
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/harmony/security/PublicKeyImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/PublicKeyImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 58
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "X.509"

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/harmony/security/PublicKeyImpl;->algorithm:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setEncoding([B)V
    .registers 5
    .param p1, "encoding"    # [B

    .prologue
    const/4 v2, 0x0

    .line 68
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/PublicKeyImpl;->encoding:[B

    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/PublicKeyImpl;->encoding:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 70
    return-void
.end method
