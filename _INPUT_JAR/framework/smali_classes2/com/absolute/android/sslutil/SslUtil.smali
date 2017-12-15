.class public Lcom/absolute/android/sslutil/SslUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1, p2}, Lcom/absolute/android/logutil/LogUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    :try_start_6
    sget-object v0, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_29

    .line 40
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 44
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 45
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_29

    aget-object v0, v2, v1

    .line 46
    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_2a

    .line 47
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    sput-object v0, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2e

    .line 56
    :cond_29
    :goto_29
    return-void

    .line 45
    :cond_2a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 52
    :catch_2e
    move-exception v0

    .line 53
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception setting up defaultSSLKeyStore or defaultTrustManager : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    goto :goto_29
.end method

.method static synthetic a()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method


# virtual methods
.method public trustOurHost(Ljava/lang/String;Z)V
    .registers 10

    .prologue
    const/4 v6, 0x6

    .line 70
    :try_start_1
    new-instance v0, Lcom/absolute/android/sslutil/a;

    invoke-direct {v0, p0, p1}, Lcom/absolute/android/sslutil/a;-><init>(Lcom/absolute/android/sslutil/SslUtil;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 81
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 82
    if-eqz p2, :cond_2e

    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/absolute/android/sslutil/c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/absolute/android/sslutil/c;-><init>(Lcom/absolute/android/sslutil/SslUtil;B)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 96
    :goto_2d
    return-void

    .line 86
    :cond_2e
    sget-object v1, Lcom/absolute/android/sslutil/SslUtil;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_6c

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/absolute/android/sslutil/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/absolute/android/sslutil/b;-><init>(Lcom/absolute/android/sslutil/SslUtil;B)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 88
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_4f

    goto :goto_2d

    .line 93
    :catch_4f
    move-exception v0

    .line 94
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trustOurHost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    goto :goto_2d

    .line 90
    :cond_6c
    :try_start_6c
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "TrustOurHost: defaultTrustManager null. Cant perform custom cert checking."

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_76} :catch_4f

    goto :goto_2d
.end method
