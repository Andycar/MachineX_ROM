.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateChainValidator$1;,
        Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_FAIL_REVOKED:I = 0x2

.field private static final CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd

.field private static final CERTIFICATE_FAIL_UNTRUSTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>()V
    .registers 9

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    :try_start_3
    const-string v6, "X.509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 96
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v6, 0x0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 97
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_36

    aget-object v4, v0, v2

    .line 98
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v6, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_21

    .line 99
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    iput-object v4, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_21} :catch_24
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_21} :catch_2d

    .line 97
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 102
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_24
    move-exception v1

    .line 103
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory must be available"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 104
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2d
    move-exception v1

    .line 105
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory cannot be initialized"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 108
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_36
    iget-object v6, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v6, :cond_42

    .line 109
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "None of the X.509 TrustManagers are X509TrustManager"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 112
    :cond_42
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/CertificateChainValidator$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/http/CertificateChainValidator$1;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    if-eqz p1, :cond_e

    .line 334
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 335
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_b

    .line 336
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 339
    :cond_b
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 342
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_e
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    if-eqz p2, :cond_6

    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 325
    return-void

    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_6
    move-object p2, p3

    .line 323
    goto :goto_2
.end method

.method private static getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 304
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "Additional certificate path checker failed."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 307
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_1d
    return-object v0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .registers 1

    .prologue
    .line 86
    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sInstance:Landroid/net/http/CertificateChainValidator;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$100()Landroid/net/http/CertificateChainValidator;

    move-result-object v0

    return-object v0
.end method

.method private getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .registers 12

    .prologue
    .line 190
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 191
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v9, 0x0

    check-cast v9, Ljava/security/KeyStore;

    invoke-virtual {v6, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_c} :catch_33
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_c} :catch_3c

    .line 200
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    .line 201
    .local v7, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    .line 202
    .local v4, "sentUpdate":Z
    move-object v0, v7

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v3, :cond_45

    aget-object v5, v0, v2

    .line 204
    .local v5, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "handleTrustStorageUpdate"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 205
    .local v8, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 206
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_4f

    .line 207
    const/4 v4, 0x1

    .line 202
    .end local v8    # "updateMethod":Ljava/lang/reflect/Method;
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 192
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "sentUpdate":Z
    .end local v5    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v7    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_33
    move-exception v1

    .line 193
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t find default X.509 TrustManagerFactory"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3b
    :goto_3b
    return-void

    .line 195
    :catch_3c
    move-exception v1

    .line 196
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t initialize default X.509 TrustManagerFactory"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 211
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "sentUpdate":Z
    .restart local v7    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_45
    if-nez v4, :cond_3b

    .line 212
    const-string v9, "CertificateChainValidator"

    const-string v10, "Didn\'t find a TrustManager to handle CA list update"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 208
    .restart local v5    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_4f
    move-exception v9

    goto :goto_30
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 9
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p0, :cond_5

    array-length v4, p0

    if-nez v4, :cond_d

    .line 166
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_d
    array-length v4, p0

    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    .line 172
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_10
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 173
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v4, p0

    if-ge v2, v4, :cond_35

    .line 174
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v2
    :try_end_29
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_29} :catch_2c

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 177
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_2c
    move-exception v1

    .line 178
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t read certificate"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 181
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "i":I
    :cond_35
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 14
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v8, 0x0

    aget-object v2, p0, v8

    .line 229
    .local v2, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_d

    .line 230
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "certificate for this site is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 233
    :cond_d
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sVerifier:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$200()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v8

    new-instance v9, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    invoke-direct {v9, v2}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v8, p1, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v6, 0x1

    .line 237
    .local v6, "valid":Z
    :goto_25
    if-nez v6, :cond_30

    .line 241
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 298
    :goto_2d
    return-object v8

    .line 233
    .end local v6    # "valid":Z
    :cond_2e
    const/4 v6, 0x0

    goto :goto_25

    .line 245
    .restart local v6    # "valid":Z
    :cond_30
    :try_start_30
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    .line 246
    .local v7, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v8, v7, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v8, :cond_41

    .line 247
    move-object v0, v7

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v5, v0

    .line 248
    .local v5, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v5, p0, p2, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 252
    .end local v5    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_3f
    const/4 v8, 0x0

    goto :goto_2d

    .line 250
    :cond_41
    invoke-interface {v7, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/security/GeneralSecurityException; {:try_start_30 .. :try_end_44} :catch_45

    goto :goto_3f

    .line 253
    .end local v7    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_45
    move-exception v3

    .line 256
    .local v3, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 257
    .local v1, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-nez v1, :cond_57

    .line 258
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_2d

    .line 260
    :cond_57
    invoke-static {v3}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_6f

    .line 262
    const-string v8, "browser_module"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_2d

    .line 266
    :cond_6f
    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled()Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 267
    const-string v8, "is revoked"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_85

    const-string v8, "Certificate revocation after"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 270
    :cond_85
    const-string v8, "browser_module"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    const/16 v8, -0xce

    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto :goto_2d

    .line 275
    :cond_9d
    const-string v8, "OCSP check failed!"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "Certificate status could not be determined."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "CRL distribution point extension could not be read"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "Distribution points could not be read."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "No valid CRL found."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d5

    const-string v8, "Unable to get CRL for certificate"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 283
    :cond_d5
    const-string v8, "browser_module"

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    const/16 v8, -0xcd

    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto/16 :goto_2d

    .line 290
    :cond_ef
    const-string v8, "browser_module"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_2d
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 9
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 129
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_10

    .line 130
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 134
    :cond_10
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 137
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-nez v2, :cond_2d

    .line 138
    :cond_1d
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 150
    :cond_22
    :goto_22
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 142
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_2d
    if-eqz p1, :cond_22

    .line 143
    aget-object v2, v0, v4

    if-eqz v2, :cond_22

    .line 144
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_22
.end method
