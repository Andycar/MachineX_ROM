.class public final Ljava/security/KeyStore$SecretKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecretKeyEntry"
.end annotation


# instance fields
.field private final secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .registers 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    if-nez p1, :cond_d

    .line 1313
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "secretKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_d
    iput-object p1, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    .line 1316
    return-void
.end method


# virtual methods
.method public getSecretKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 1324
    iget-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecretKeyEntry: algorithm - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/KeyStore$SecretKeyEntry;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
