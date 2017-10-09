.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static defaultSocketFactory:Ljavax/net/SocketFactory;

.field private static lastCacheVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 104
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/SocketFactory;
    .registers 9

    .prologue
    .line 45
    const-class v7, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    move-result v3

    .line 46
    .local v3, "newCacheVersion":I
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v6, :cond_13

    sget v6, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    if-ne v6, v3, :cond_13

    .line 47
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_a6

    .line 97
    :goto_11
    monitor-exit v7

    return-object v6

    .line 49
    :cond_13
    :try_start_13
    sput v3, Ljavax/net/ssl/SSLSocketFactory;->lastCacheVersion:I

    .line 51
    const-string v6, "ssl.SocketFactory.provider"

    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "newName":Ljava/lang/String;
    if-eqz v4, :cond_a9

    .line 57
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v6, :cond_37

    .line 58
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 59
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    goto :goto_11

    .line 61
    :cond_34
    const/4 v6, 0x0

    sput-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 65
    :cond_37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 66
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_45

    .line 67
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_a6

    move-result-object v0

    .line 70
    :cond_45
    const/4 v6, 0x1

    :try_start_46
    invoke-static {v4, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 71
    .local v5, "sfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/net/SocketFactory;

    sput-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_72
    .catchall {:try_start_46 .. :try_end_52} :catchall_a6

    .line 80
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "sfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_52
    :try_start_52
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_a6

    if-nez v6, :cond_62

    .line 83
    :try_start_56
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_59
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_59} :catch_ad
    .catchall {:try_start_56 .. :try_end_59} :catchall_a6

    move-result-object v1

    .line 87
    .local v1, "context":Ljavax/net/ssl/SSLContext;
    :goto_5a
    if-eqz v1, :cond_62

    .line 88
    :try_start_5c
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    sput-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 92
    .end local v1    # "context":Ljavax/net/ssl/SSLContext;
    :cond_62
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-nez v6, :cond_6f

    .line 94
    new-instance v6, Ljavax/net/ssl/DefaultSSLSocketFactory;

    const-string v8, "No SSLSocketFactory installed"

    invoke-direct {v6, v8}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 97
    :cond_6f
    sget-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    goto :goto_11

    .line 72
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_72
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " with ClassLoader "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->logW(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_5c .. :try_end_a5} :catchall_a6

    goto :goto_52

    .line 45
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "newName":Ljava/lang/String;
    :catchall_a6
    move-exception v6

    monitor-exit v7

    throw v6

    .line 77
    .restart local v4    # "newName":Ljava/lang/String;
    :cond_a9
    const/4 v6, 0x0

    :try_start_aa
    sput-object v6, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_a6

    goto :goto_52

    .line 84
    :catch_ad
    move-exception v2

    .line 85
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .restart local v1    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_5a
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
