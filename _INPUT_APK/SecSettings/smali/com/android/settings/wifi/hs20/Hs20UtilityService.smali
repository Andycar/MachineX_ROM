.class public Lcom/android/settings/wifi/hs20/Hs20UtilityService;
.super Landroid/app/Service;
.source "Hs20UtilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/hs20/Hs20UtilityService$MySSLSocketFactory;,
        Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mHs20ConnNotiId:I

.field private mHs20NotiBuilder:Landroid/app/Notification$Builder;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUtilityHandler:Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

.field private mUtilityHandlerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/hs20/Hs20UtilityService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private sslClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 10
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    const/4 v7, 0x0

    .line 246
    :try_start_0
    new-instance v5, Lcom/android/settings/wifi/hs20/Hs20UtilityService$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService$1;-><init>(Lcom/android/settings/wifi/hs20/Hs20UtilityService;)V

    .line 260
    .local v5, "tm":Ljavax/net/ssl/X509TrustManager;
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 261
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavax/net/ssl/TrustManager;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 262
    new-instance v4, Lcom/android/settings/wifi/hs20/Hs20UtilityService$MySSLSocketFactory;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wifi/hs20/Hs20UtilityService$MySSLSocketFactory;-><init>(Lcom/android/settings/wifi/hs20/Hs20UtilityService;Ljavax/net/ssl/SSLContext;)V

    .line 263
    .local v4, "ssf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 264
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 265
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 266
    .local v3, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v6, v8, v4, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 267
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v3    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "ssf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    return-object v6

    .line 268
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    move-object v6, v7

    .line 269
    goto :goto_0
.end method


# virtual methods
.method public downloadPage(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v11, "Hs20UtilService"

    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v5, ""

    .line 204
    .local v5, "html":Ljava/lang/String;
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->sslClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 206
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 209
    .local v9, "request":Lorg/apache/http/client/methods/HttpGet;
    const/4 v6, 0x0

    .line 210
    .local v6, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 212
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-interface {v2, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 213
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 214
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "wnm.html"

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 218
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 219
    const/16 v1, 0x400

    .line 220
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 221
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 222
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    .line 223
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-eqz v8, :cond_1

    .line 232
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 236
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 238
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 243
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_2
    :goto_2
    return-void

    .line 230
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferSize":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    if-eqz v8, :cond_4

    .line 232
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 236
    :cond_4
    :goto_3
    if-eqz v6, :cond_2

    .line 238
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 239
    :catch_1
    move-exception v11

    goto :goto_2

    .line 227
    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v3

    .line 228
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    if-eqz v8, :cond_5

    .line 232
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 236
    :cond_5
    :goto_4
    if-eqz v6, :cond_2

    .line 238
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 239
    :catch_3
    move-exception v11

    goto :goto_2

    .line 230
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v8, :cond_6

    .line 232
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 236
    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    .line 238
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 240
    :cond_7
    :goto_6
    throw v11

    .line 233
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferSize":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v11

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v11

    goto :goto_1

    .line 239
    :catch_6
    move-exception v11

    goto :goto_2

    .line 233
    .local v3, "e":Ljava/io/IOException;
    :catch_7
    move-exception v11

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    goto :goto_5

    .line 239
    :catch_9
    move-exception v12

    goto :goto_6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hs20UtilityHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandlerThread:Ljava/lang/Thread;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    new-instance v1, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;-><init>(Lcom/android/settings/wifi/hs20/Hs20UtilityService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandler:Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const-string v1, "hs20_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 98
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 102
    const-string v1, "Hs20UtilService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandler:Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandler:Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 107
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mUtilityHandler:Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/hs20/Hs20UtilityService$UtilityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const v13, 0x7f020192

    const v12, 0x7f020191

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 292
    const-string v0, "Hs20UtilService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHS20WifiNotification is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 295
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x4

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    .line 300
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v2, "wifiSettingsIntent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v10, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 309
    .end local v2    # "wifiSettingsIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 310
    .local v8, "r":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 311
    .local v9, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 313
    .local v6, "message":Ljava/lang/String;
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v0, v11, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 315
    iput v12, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    .line 321
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 322
    const v0, 0x7f0a03d3

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 329
    :goto_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 330
    const v0, 0x7f0a03d1

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v8, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 336
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 338
    const-string v0, "HS20_CONNECTED_NOTIFICATION"

    iget v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    iget-object v3, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 345
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/String;
    :goto_3
    return-void

    .line 317
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v8    # "r":Landroid/content/res/Resources;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 318
    iput v13, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    goto :goto_0

    .line 325
    :cond_2
    const v0, 0x7f0a03d4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v4, v3, v11

    invoke-virtual {v8, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 333
    :cond_3
    const v0, 0x7f0a03d2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 341
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    const-string v0, "HS20_CONNECTED_NOTIFICATION"

    iget v3, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 343
    iput v1, p0, Lcom/android/settings/wifi/hs20/Hs20UtilityService;->mHs20ConnNotiId:I

    goto :goto_3
.end method
