.class public final Landroid/net/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/AndroidHttpClient$CurlLogger;,
        Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

.field private static textContentTypes:[Ljava/lang/String;


# instance fields
.field private volatile curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 86
    const-wide/16 v0, 0x100

    sput-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "text/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/json"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/net/http/AndroidHttpClient$1;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClient$1;-><init>()V

    sput-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 167
    new-instance v0, Landroid/net/http/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/http/AndroidHttpClient$2;-><init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    .line 195
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Landroid/net/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    .registers 2
    .param p0, "x0"    # Landroid/net/http/AndroidHttpClient;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0, p1}, Landroid/net/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkMmsOps()Z
    .registers 6

    .prologue
    .line 265
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 266
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 267
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "callingPackage":Ljava/lang/String;
    const-string v3, "com.android.mms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 269
    const/16 v3, 0x32

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_26

    .line 270
    const/4 v3, 0x0

    .line 272
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x1

    goto :goto_25
.end method

.method private checkMmsSendPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 292
    :cond_27
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 293
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClient;->checkMmsOps()Z

    move-result v1

    .line 296
    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x1

    goto :goto_33
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v3, p0

    int-to-long v4, v3

    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_10

    .line 369
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 378
    .local v1, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_f
    return-object v1

    .line 371
    .end local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 373
    .local v2, "zipper":Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 374
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 375
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 376
    .restart local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v3, "gzip"

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 283
    if-eqz p1, :cond_11

    .line 284
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 285
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 3
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 276
    if-eqz p1, :cond_7

    .line 277
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 386
    sget-wide v0, Landroid/net/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 6
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 227
    .local v2, "responseStream":Ljava/io/InputStream;
    if-nez v2, :cond_8

    move-object v3, v2

    .line 234
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .local v3, "responseStream":Ljava/io/InputStream;
    :goto_7
    return-object v3

    .line 228
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_8
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 229
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_10

    move-object v3, v2

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_7

    .line 230
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_10
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "contentEncoding":Ljava/lang/String;
    if-nez v0, :cond_18

    move-object v3, v2

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_7

    .line 232
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_18
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_26
    move-object v3, v2

    .line 234
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_7
.end method

.method private static isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .registers 13
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    const/4 v9, 0x1

    .line 534
    const-string v10, "content-encoding"

    invoke-interface {p0, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 535
    .local v4, "headers":[Lorg/apache/http/Header;
    if-eqz v4, :cond_20

    .line 536
    move-object v0, v4

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_c
    if-ge v5, v7, :cond_20

    aget-object v3, v0, v5

    .line 537
    .local v3, "header":Lorg/apache/http/Header;
    const-string v10, "gzip"

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 553
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_1c
    :goto_1c
    return v9

    .line 536
    .restart local v0    # "arr$":[Lorg/apache/http/Header;
    .restart local v3    # "header":Lorg/apache/http/Header;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 543
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_20
    const-string v10, "content-type"

    invoke-interface {p0, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 544
    if-eqz v4, :cond_1c

    .line 545
    move-object v0, v4

    .restart local v0    # "arr$":[Lorg/apache/http/Header;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    move v6, v5

    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_2c
    if-ge v6, v7, :cond_1c

    aget-object v3, v0, v6

    .line 546
    .restart local v3    # "header":Lorg/apache/http/Header;
    sget-object v1, Landroid/net/http/AndroidHttpClient;->textContentTypes:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_34
    if-ge v5, v8, :cond_47

    aget-object v2, v1, v5

    .line 547
    .local v2, "contentType":Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 548
    const/4 v9, 0x0

    goto :goto_1c

    .line 546
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 545
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_47
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_2c
.end method

.method private isMmsRequest()Z
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.useragent"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 258
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.useragent"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android-Mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 213
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    .registers 2
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .registers 11
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const v8, 0xea60

    .line 118
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 122
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 124
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 125
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 133
    if-nez p1, :cond_50

    const/4 v3, 0x0

    .line 136
    .local v3, "sessionCache":Landroid/net/SSLSessionCache;
    :goto_1d
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 137
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 138
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 140
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {v8, v3}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 144
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 149
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v4, Landroid/net/http/AndroidHttpClient;

    invoke-direct {v4, v0, v1}, Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v4

    .line 133
    .end local v0    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "sessionCache":Landroid/net/SSLSessionCache;
    :cond_50
    new-instance v3, Landroid/net/SSLSessionCache;

    invoke-direct {v3, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    goto :goto_1d
.end method

.method public static parseDate(Ljava/lang/String;)J
    .registers 3
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-static {p0}, Lcom/android/internal/http/HttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 20
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v4, "builder":Ljava/lang/StringBuilder;
    const-string v14, "curl "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v14, "-X "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v14, " "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_21
    if-ge v9, v10, :cond_58

    aget-object v8, v2, v9

    .line 478
    .local v8, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_42

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Authorization"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3f

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cookie"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 477
    :cond_3f
    :goto_3f
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 483
    :cond_42
    const-string v14, "--header \""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v14, "\" "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 488
    .end local v8    # "header":Lorg/apache/http/Header;
    :cond_58
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v13

    .line 493
    .local v13, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    instance-of v14, v0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v14, :cond_74

    move-object/from16 v14, p0

    .line 494
    check-cast v14, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v14}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v11

    .line 495
    .local v11, "original":Lorg/apache/http/HttpRequest;
    instance-of v14, v11, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v14, :cond_74

    .line 496
    check-cast v11, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v11    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v11}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v13

    .line 500
    :cond_74
    const-string v14, "\""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    const-string v14, "\""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v0, p0

    instance-of v14, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v14, :cond_da

    move-object/from16 v6, p0

    .line 505
    check-cast v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 507
    .local v6, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 508
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_da

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v14

    if-eqz v14, :cond_da

    .line 509
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    cmp-long v14, v14, v16

    if-gez v14, :cond_f3

    .line 510
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 511
    .local v12, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5, v12}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 513
    invoke-static/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->isBinaryContent(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v14

    if-eqz v14, :cond_df

    .line 514
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "base64":Ljava/lang/String;
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "echo \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v14, " --data-binary @/tmp/$$.bin"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .end local v3    # "base64":Ljava/lang/String;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_da
    :goto_da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 518
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_df
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "entityString":Ljava/lang/String;
    const-string v14, " --data-ascii \""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 524
    .end local v7    # "entityString":Ljava/lang/String;
    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_f3
    const-string v14, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    .line 243
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 246
    :cond_e
    return-void
.end method

.method public disableCurlLogging()V
    .registers 2

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 445
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 429
    if-nez p1, :cond_b

    .line 430
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_b
    const/4 v0, 0x2

    if-lt p2, v0, :cond_11

    const/4 v0, 0x7

    if-le p2, v0, :cond_19

    .line 433
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_19
    new-instance v0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$1;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->curlConfiguration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    .line 438
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 345
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 346
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 353
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 354
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 330
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 338
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 315
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0, p2}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 322
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 301
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient;->getMethod(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/AndroidHttpClient;->checkMmsSendPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_12
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_13

    .line 201
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 204
    :cond_13
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
