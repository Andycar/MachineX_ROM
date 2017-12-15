.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private volatile mConnectionPool:Lcom/android/okhttp/ConnectionPool;

.field private volatile mHostResolver:Lcom/android/okhttp/HostResolver;

.field private mLock:Ljava/lang/Object;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 73
    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    .line 75
    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    if-eqz v0, :cond_37

    const-string v0, "http.maxConnections"

    const-string v1, "5"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1f
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    .line 77
    const-string v0, "http.keepAliveDuration"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    .line 294
    new-instance v0, Landroid/net/Network$2;

    invoke-direct {v0}, Landroid/net/Network$2;-><init>()V

    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 75
    :cond_37
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 65
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 66
    iput-object v0, p0, Landroid/net/Network;->mHostResolver:Lcom/android/okhttp/HostResolver;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 84
    iput p1, p0, Landroid/net/Network;->netId:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .registers 3
    .param p1, "that"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 65
    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 66
    iput-object v0, p0, Landroid/net/Network;->mHostResolver:Lcom/android/okhttp/HostResolver;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    .line 91
    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Landroid/net/Network;->netId:I

    .line 92
    return-void
.end method

.method private maybeInitHttpClient()V
    .registers 7

    .prologue
    .line 219
    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_3
    iget-object v0, p0, Landroid/net/Network;->mHostResolver:Lcom/android/okhttp/HostResolver;

    if-nez v0, :cond_e

    .line 221
    new-instance v0, Landroid/net/Network$1;

    invoke-direct {v0, p0}, Landroid/net/Network$1;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Landroid/net/Network;->mHostResolver:Lcom/android/okhttp/HostResolver;

    .line 228
    :cond_e
    iget-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v0, :cond_1d

    .line 229
    new-instance v0, Lcom/android/okhttp/ConnectionPool;

    sget v2, Landroid/net/Network;->httpMaxConnections:I

    sget-wide v4, Landroid/net/Network;->httpKeepAliveDurationMs:J

    invoke-direct {v0, v2, v4, v5}, Lcom/android/okhttp/ConnectionPool;-><init>(IJ)V

    iput-object v0, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 232
    :cond_1d
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public bindSocket(Ljava/net/Socket;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 273
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_e
    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    .line 278
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    move-result v0

    .line 279
    .local v0, "err":I
    if-eqz v0, :cond_41

    .line 281
    new-instance v1, Landroid/system/ErrnoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding socket to network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-int v3, v0

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1

    .line 284
    :cond_41
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 309
    instance-of v2, p1, Landroid/net/Network;

    if-nez v2, :cond_6

    .line 311
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 310
    check-cast v0, Landroid/net/Network;

    .line 311
    .local v0, "other":Landroid/net/Network;
    iget v2, p0, Landroid/net/Network;->netId:I

    iget v3, v0, Landroid/net/Network;->netId:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 4

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_15

    .line 194
    iget-object v1, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_7
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_14

    .line 196
    new-instance v0, Landroid/net/Network$NetworkBoundSocketFactory;

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-direct {v0, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    .line 198
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_18

    .line 200
    :cond_15
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    return-object v0

    .line 198
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-direct {p0}, Landroid/net/Network;->maybeInitHttpClient()V

    .line 246
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "protocol":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 252
    invoke-static {v3}, Lcom/android/okhttp/HttpHandler;->createHttpOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 260
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    :goto_14
    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Landroid/net/Network;->mHostResolver:Lcom/android/okhttp/HostResolver;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setHostResolver(Lcom/android/okhttp/HostResolver;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Landroid/net/Network;->mConnectionPool:Lcom/android/okhttp/ConnectionPool;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    return-object v2

    .line 253
    .end local v0    # "client":Lcom/android/okhttp/OkHttpClient;
    :cond_2d
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 254
    invoke-static {v3}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkHttpClient(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .restart local v0    # "client":Lcom/android/okhttp/OkHttpClient;
    goto :goto_14

    .line 258
    .end local v0    # "client":Lcom/android/okhttp/OkHttpClient;
    :cond_3a
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL or unrecognized protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 291
    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    return-void
.end method
