.class public Ljavax/crypto/NullCipher;
.super Ljavax/crypto/Cipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    invoke-direct {v0}, Lorg/apache/harmony/crypto/internal/NullCipherSpi;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_b
    check-cast v0, Ljava/security/Key;

    const/4 v1, 0x0

    check-cast v1, Ljava/security/SecureRandom;

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/NullCipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_13} :catch_14

    .line 46
    :goto_13
    return-void

    .line 44
    :catch_14
    move-exception v0

    goto :goto_13
.end method
