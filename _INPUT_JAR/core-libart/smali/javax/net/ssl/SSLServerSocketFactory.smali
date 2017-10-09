.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

.field private static lastCacheVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 92
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .registers 8

    .prologue
    .line 46
    const-class v6, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v3

    .line 47
    .local v3, "newCacheVersion":I
    sget v5, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    if-eq v5, v3, :cond_13

    .line 48
    const/4 v5, 0x0

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 49
    const/4 v5, 0x0

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    .line 50
    sput v3, Ljavax/net/ssl/SSLServerSocketFactory;->lastCacheVersion:I

    .line 52
    :cond_13
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v5, :cond_1b

    .line 53
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6b

    .line 85
    :goto_19
    monitor-exit v6

    return-object v5

    .line 55
    :cond_1b
    :try_start_1b
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v5, :cond_48

    .line 56
    const-string v5, "ssl.ServerSocketFactory.provider"

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    .line 57
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-eqz v5, :cond_48

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 59
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_39

    .line 60
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_6b

    move-result-object v0

    .line 63
    :cond_39
    :try_start_39
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 64
    .local v4, "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/net/ServerSocketFactory;

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_6e
    .catchall {:try_start_39 .. :try_end_48} :catchall_6b

    .line 69
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "ssfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    :goto_48
    :try_start_48
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_6b

    if-nez v5, :cond_58

    .line 72
    :try_start_4c
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4c .. :try_end_4f} :catch_68
    .catchall {:try_start_4c .. :try_end_4f} :catchall_6b

    move-result-object v1

    .line 76
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    :goto_50
    if-eqz v1, :cond_58

    .line 77
    :try_start_52
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v5

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 80
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    :cond_58
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v5, :cond_65

    .line 82
    new-instance v5, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v7, "No ServerSocketFactory installed"

    invoke-direct {v5, v7}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 85
    :cond_65
    sget-object v5, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_6b

    goto :goto_19

    .line 73
    :catch_68
    move-exception v2

    .line 74
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .restart local v1    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_50

    .line 46
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_6b
    move-exception v5

    monitor-exit v6

    throw v5

    .line 65
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_6e
    move-exception v5

    goto :goto_48
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
