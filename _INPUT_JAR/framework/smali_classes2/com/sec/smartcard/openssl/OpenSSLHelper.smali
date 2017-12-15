.class public Lcom/sec/smartcard/openssl/OpenSSLHelper;
.super Ljava/lang/Object;
.source "OpenSSLHelper.java"


# static fields
.field private static final FUNCTION_LIST_NAME:Ljava/lang/String; = "TZ_CCM_C_GetFunctionList"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "libtlc_tz_ccm.so"

.field static final TAG:Ljava/lang/String; = "OpenSSLHelper"


# instance fields
.field private pkey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string/jumbo v0, "secopenssl_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public native deregisterEngineKeychain()I
.end method

.method public deregister_engine()Z
    .registers 4

    .prologue
    .line 91
    const-string v1, "OpenSSLHelper"

    const-string v2, "deregister_engine function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->deregisterEngineKeychain()I

    move-result v0

    .line 94
    .local v0, "ret":I
    if-nez v0, :cond_1b

    .line 95
    const-string v1, "OpenSSLHelper"

    const-string v2, "DeRegister engine success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x1

    .line 99
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v2, "OpenSSLHelper"

    const-string v3, "getPrivateKey function"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    if-nez v2, :cond_18

    .line 105
    const-string/jumbo v2, "secpkcs11"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 107
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :try_start_12
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;
    :try_end_18
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_18} :catch_1b

    .line 113
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-object v2

    .line 108
    .restart local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :catch_1b
    move-exception v0

    .line 109
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "OpenSSLHelper"

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected getSlotID(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "OpenSSLHelper"

    const-string v2, "getSlotID function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 61
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_16

    .line 62
    invoke-virtual {v0, p1}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v2

    .line 65
    :goto_15
    return-wide v2

    :cond_16
    const-wide/16 v2, -0x1

    goto :goto_15
.end method

.method public registerEngine(Ljava/lang/String;)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string v4, "OpenSSLHelper"

    const-string/jumbo v5, "registerEngine function"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getSlotID(Ljava/lang/String;)J

    move-result-wide v2

    .line 73
    .local v2, "slotid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-lez v4, :cond_2d

    .line 74
    const-string v4, "OpenSSLHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerEngine - getSlotID returned invalid slotid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2c
    :goto_2c
    return v1

    .line 79
    :cond_2d
    new-instance v4, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v4}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    const-string v5, "libtlc_tz_ccm.so"

    const-string v6, "TZ_CCM_C_GetFunctionList"

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    .line 82
    .local v0, "ret":I
    if-nez v0, :cond_2c

    .line 83
    const-string v1, "OpenSSLHelper"

    const-string v4, "Register engine success"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x1

    goto :goto_2c
.end method

.method public native registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I
.end method
