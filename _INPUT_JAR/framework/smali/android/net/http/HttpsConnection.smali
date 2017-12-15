.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 127
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 133
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 144
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 145
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 115
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 8
    .param p0, "sessionDir"    # Ljava/io/File;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    if-eqz p0, :cond_25

    .line 77
    :try_start_3
    const-string v4, "HttpsConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching SSL sessions in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v0

    .line 82
    :cond_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;

    invoke-direct {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>()V

    .line 85
    .local v2, "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v5}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v5, v3, v4

    .line 101
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 102
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 104
    const-class v5, Landroid/net/http/HttpsConnection;

    monitor-enter v5
    :try_end_44
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_44} :catch_4f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_44} :catch_56

    .line 105
    :try_start_44
    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 106
    monitor-exit v5

    .line 112
    return-void

    .line 106
    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v4
    :try_end_4f
    .catch Ljava/security/KeyManagementException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4f} :catch_56

    .line 107
    .end local v2    # "sslContext":Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .end local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_4f
    move-exception v1

    .line 108
    .local v1, "e":Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 109
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_56
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method closeConnection()V
    .registers 3

    .prologue
    .line 382
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_8

    .line 384
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 388
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 389
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 397
    :cond_19
    :goto_19
    return-void

    .line 391
    :catch_1a
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 34
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/16 v23, 0x0

    .line 166
    .local v23, "sslSock":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f4

    .line 174
    const/16 v18, 0x0

    .line 175
    .local v18, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    const/16 v21, 0x0

    .line 177
    .local v21, "proxySock":Ljava/net/Socket;
    :try_start_e
    new-instance v22, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_b8

    .line 180
    .end local v21    # "proxySock":Ljava/net/Socket;
    .local v22, "proxySock":Ljava/net/Socket;
    const v27, 0xea60

    :try_start_30
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 182
    new-instance v19, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_2af

    .line 183
    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .local v19, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    :try_start_3c
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 184
    .local v17, "params":Lorg/apache/http/params/HttpParams;
    const/16 v27, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 186
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_53} :catch_2b4

    .line 201
    const/16 v25, 0x0

    .line 202
    .local v25, "statusLine":Lorg/apache/http/StatusLine;
    const/16 v24, 0x0

    .line 203
    .local v24, "statusCode":I
    new-instance v14, Landroid/net/http/Headers;

    invoke-direct {v14}, Landroid/net/http/Headers;-><init>()V

    .line 205
    .local v14, "headers":Landroid/net/http/Headers;
    :try_start_5c
    new-instance v20, Lorg/apache/http/message/BasicHttpRequest;

    const-string v27, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v20, "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .local v6, "arr$":[Lorg/apache/http/Header;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_81
    move/from16 v0, v16

    if-ge v15, v0, :cond_ce

    aget-object v12, v6, v15

    .line 212
    .local v12, "h":Lorg/apache/http/Header;
    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "headerName":Ljava/lang/String;
    const-string/jumbo v27, "proxy"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_b0

    const-string v27, "keep-alive"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b0

    const-string v27, "host"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b5

    .line 215
    :cond_b0
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_b5
    .catch Lorg/apache/http/ParseException; {:try_start_5c .. :try_end_b5} :catch_16f
    .catch Lorg/apache/http/HttpException; {:try_start_5c .. :try_end_b5} :catch_180
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_b5} :catch_191

    .line 211
    :cond_b5
    add-int/lit8 v15, v15, 0x1

    goto :goto_81

    .line 187
    .end local v6    # "arr$":[Lorg/apache/http/Header;
    .end local v12    # "h":Lorg/apache/http/Header;
    .end local v13    # "headerName":Ljava/lang/String;
    .end local v14    # "headers":Landroid/net/http/Headers;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "params":Lorg/apache/http/params/HttpParams;
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v20    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v22    # "proxySock":Ljava/net/Socket;
    .end local v24    # "statusCode":I
    .end local v25    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    :catch_b8
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    :goto_b9
    if-eqz v18, :cond_be

    .line 189
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 192
    :cond_be
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_c6

    .line 194
    const-string v11, "failed to establish a connection to the proxy"

    .line 198
    :cond_c6
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 219
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v21    # "proxySock":Ljava/net/Socket;
    .restart local v6    # "arr$":[Lorg/apache/http/Header;
    .restart local v14    # "headers":Landroid/net/http/Headers;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    .restart local v24    # "statusCode":I
    .restart local v25    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_ce
    :try_start_ce
    invoke-virtual/range {v19 .. v20}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 220
    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 227
    :cond_d4
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v25

    .line 228
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_dd
    .catch Lorg/apache/http/ParseException; {:try_start_ce .. :try_end_dd} :catch_16f
    .catch Lorg/apache/http/HttpException; {:try_start_ce .. :try_end_dd} :catch_180
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_dd} :catch_191

    move-result v24

    .line 229
    const/16 v27, 0xc8

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_d4

    .line 256
    const/16 v27, 0xc8

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b8

    .line 258
    :try_start_ee
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v23, v0
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_11c} :catch_1a2

    .line 310
    .end local v6    # "arr$":[Lorg/apache/http/Header;
    .end local v14    # "headers":Landroid/net/http/Headers;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "params":Lorg/apache/http/params/HttpParams;
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v20    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v22    # "proxySock":Ljava/net/Socket;
    .end local v24    # "statusCode":I
    .end local v25    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_11c
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v10

    .line 314
    .local v10, "error":Landroid/net/http/SslError;
    if-eqz v10, :cond_28d

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 321
    const/16 v27, 0x1

    :try_start_141
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 322
    monitor-exit v28
    :try_end_148
    .catchall {:try_start_141 .. :try_end_148} :catchall_238

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v7

    .line 325
    .local v7, "canHandle":Z
    if-nez v7, :cond_23b

    .line 326
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "failed to handle "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 230
    .end local v7    # "canHandle":Z
    .end local v10    # "error":Landroid/net/http/SslError;
    .restart local v14    # "headers":Landroid/net/http/Headers;
    .restart local v17    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    .restart local v24    # "statusCode":I
    .restart local v25    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_16f
    move-exception v9

    .line 231
    .local v9, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v9}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 232
    .restart local v11    # "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_178

    .line 233
    const-string v11, "failed to send a CONNECT request"

    .line 237
    :cond_178
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 238
    .end local v9    # "e":Lorg/apache/http/ParseException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    :catch_180
    move-exception v9

    .line 239
    .local v9, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v9}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 240
    .restart local v11    # "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_189

    .line 241
    const-string v11, "failed to send a CONNECT request"

    .line 245
    :cond_189
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 246
    .end local v9    # "e":Lorg/apache/http/HttpException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    :catch_191
    move-exception v9

    .line 247
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 248
    .restart local v11    # "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_19a

    .line 249
    const-string v11, "failed to send a CONNECT request"

    .line 253
    :cond_19a
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 260
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "arr$":[Lorg/apache/http/Header;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v20    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    :catch_1a2
    move-exception v9

    .line 261
    .restart local v9    # "e":Ljava/io/IOException;
    if-eqz v23, :cond_1a8

    .line 262
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 265
    :cond_1a8
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 266
    .restart local v11    # "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_1b0

    .line 267
    const-string v11, "failed to create an SSL socket"

    .line 270
    :cond_1b0
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 274
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    :cond_1b8
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v26

    .line 276
    .local v26, "version":Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v28

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v29

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v24

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 280
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/net/http/EventHandler;->endData()V

    .line 283
    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 287
    const/4 v8, 0x0

    .line 368
    .end local v6    # "arr$":[Lorg/apache/http/Header;
    .end local v14    # "headers":Landroid/net/http/Headers;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "params":Lorg/apache/http/params/HttpParams;
    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v20    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    .end local v22    # "proxySock":Ljava/net/Socket;
    .end local v24    # "statusCode":I
    .end local v25    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v26    # "version":Lorg/apache/http/ProtocolVersion;
    :goto_1f3
    return-object v8

    .line 292
    :cond_1f4
    :try_start_1f4
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v29

    invoke-virtual/range {v27 .. v29}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v23, v0

    .line 294
    const v27, 0xea60

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_220} :catch_222

    goto/16 :goto_11c

    .line 295
    :catch_222
    move-exception v9

    .line 296
    .restart local v9    # "e":Ljava/io/IOException;
    if-eqz v23, :cond_228

    .line 297
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 300
    :cond_228
    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 301
    .restart local v11    # "errorMessage":Ljava/lang/String;
    if-nez v11, :cond_230

    .line 302
    const-string v11, "failed to create an SSL socket"

    .line 305
    :cond_230
    new-instance v27, Ljava/io/IOException;

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 322
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "error":Landroid/net/http/SslError;
    :catchall_238
    move-exception v27

    :try_start_239
    monitor-exit v28
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    throw v27

    .line 328
    .restart local v7    # "canHandle":Z
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 329
    :try_start_242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0
    :try_end_248
    .catchall {:try_start_242 .. :try_end_248} :catchall_289

    if-eqz v27, :cond_272

    .line 337
    :try_start_24a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    const-wide/32 v30, 0x927c0

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0

    if-eqz v27, :cond_272

    .line 342
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 343
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_272
    .catch Ljava/lang/InterruptedException; {:try_start_24a .. :try_end_272} :catch_2ad
    .catchall {:try_start_24a .. :try_end_272} :catchall_289

    .line 353
    :cond_272
    :goto_272
    :try_start_272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28c

    .line 356
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 357
    new-instance v27, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v29, "connection closed by the user"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 359
    :catchall_289
    move-exception v27

    monitor-exit v28
    :try_end_28b
    .catchall {:try_start_272 .. :try_end_28b} :catchall_289

    throw v27

    :cond_28c
    :try_start_28c
    monitor-exit v28
    :try_end_28d
    .catchall {:try_start_28c .. :try_end_28d} :catchall_289

    .line 363
    .end local v7    # "canHandle":Z
    :cond_28d
    new-instance v8, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v8}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 364
    .local v8, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 365
    .local v17, "params":Lorg/apache/http/params/BasicHttpParams;
    const-string v27, "http.socket.buffer-size"

    const/16 v28, 0x2000

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 366
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    goto/16 :goto_1f3

    .line 349
    .end local v8    # "conn":Landroid/net/http/AndroidHttpClientConnection;
    .end local v17    # "params":Lorg/apache/http/params/BasicHttpParams;
    .restart local v7    # "canHandle":Z
    :catch_2ad
    move-exception v27

    goto :goto_272

    .line 187
    .end local v7    # "canHandle":Z
    .end local v10    # "error":Landroid/net/http/SslError;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    :catch_2af
    move-exception v9

    move-object/from16 v21, v22

    .end local v22    # "proxySock":Ljava/net/Socket;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    goto/16 :goto_b9

    .end local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v21    # "proxySock":Ljava/net/Socket;
    .restart local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22    # "proxySock":Ljava/net/Socket;
    :catch_2b4
    move-exception v9

    move-object/from16 v21, v22

    .end local v22    # "proxySock":Ljava/net/Socket;
    .restart local v21    # "proxySock":Ljava/net/Socket;
    move-object/from16 v18, v19

    .end local v19    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v18    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_b9
.end method

.method restartConnection(Z)V
    .registers 5
    .param p1, "proceed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_4
    iget-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v2, :cond_15

    .line 410
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 411
    if-nez p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 412
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 414
    :cond_15
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 153
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 154
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
