.class final Ljava/net/ProxySelectorImpl;
.super Ljava/net/ProxySelector;
.source "ProxySelectorImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 108
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result p2

    .line 112
    .end local p2    # "defaultValue":I
    :cond_a
    :goto_a
    return p2

    .line 109
    .restart local p2    # "defaultValue":I
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "nonProxyHosts"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 121
    :cond_4
    const/4 v4, 0x0

    .line 141
    :goto_5
    return v4

    .line 125
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v3, "patternBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 127
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_34

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 130
    :sswitch_1f
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 133
    :sswitch_25
    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 140
    .end local v0    # "c":C
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    goto :goto_5

    .line 128
    :sswitch_data_34
    .sparse-switch
        0x2a -> :sswitch_25
        0x2e -> :sswitch_1f
    .end sparse-switch
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .registers 9
    .param p1, "hostKey"    # Ljava/lang/String;
    .param p2, "portKey"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/net/Proxy$Type;
    .param p4, "defaultPort"    # I

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 97
    :cond_c
    const/4 v2, 0x0

    .line 101
    :goto_d
    return-object v2

    .line 100
    :cond_e
    invoke-direct {p0, p2, p4}, Ljava/net/ProxySelectorImpl;->getSystemPropertyInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "port":I
    new-instance v2, Ljava/net/Proxy;

    invoke-static {v0, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_d
.end method

.method private selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;
    .registers 11
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 36
    if-nez p1, :cond_a

    .line 37
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_a
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "scheme":Ljava/lang/String;
    if-nez v4, :cond_18

    .line 41
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "scheme == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_18
    const/4 v2, -0x1

    .line 45
    .local v2, "port":I
    const/4 v3, 0x0

    .line 46
    .local v3, "proxy":Ljava/net/Proxy;
    const/4 v1, 0x0

    .line 47
    .local v1, "nonProxyHostsKey":Ljava/lang/String;
    const/4 v0, 0x1

    .line 48
    .local v0, "httpProxyOkay":Z
    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 49
    const/16 v2, 0x50

    .line 50
    const-string v1, "http.nonProxyHosts"

    .line 51
    const-string v5, "http.proxyHost"

    const-string v6, "http.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    .line 66
    :goto_32
    if-eqz v1, :cond_80

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/net/ProxySelectorImpl;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 68
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 87
    :goto_44
    return-object v5

    .line 52
    :cond_45
    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 53
    const/16 v2, 0x1bb

    .line 54
    const-string v1, "https.nonProxyHosts"

    .line 55
    const-string v5, "https.proxyHost"

    const-string v6, "https.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_32

    .line 56
    :cond_5c
    const-string v5, "ftp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 57
    const/16 v2, 0x50

    .line 58
    const-string v1, "ftp.nonProxyHosts"

    .line 59
    const-string v5, "ftp.proxyHost"

    const-string v6, "ftp.proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    goto :goto_32

    .line 60
    :cond_73
    const-string v5, "socket"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 61
    const/4 v0, 0x0

    goto :goto_32

    .line 63
    :cond_7d
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_44

    .line 71
    :cond_80
    if-eqz v3, :cond_84

    move-object v5, v3

    .line 72
    goto :goto_44

    .line 75
    :cond_84
    if-eqz v0, :cond_94

    .line 76
    const-string v5, "proxyHost"

    const-string v6, "proxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, v5, v6, v7, v2}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_94

    move-object v5, v3

    .line 78
    goto :goto_44

    .line 82
    :cond_94
    const-string v5, "socksProxyHost"

    const-string v6, "socksProxyPort"

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/16 v8, 0x438

    invoke-direct {p0, v5, v6, v7, v8}, Ljava/net/ProxySelectorImpl;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_a4

    move-object v5, v3

    .line 84
    goto :goto_44

    .line 87
    :cond_a4
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_44
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 26
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_c

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 29
    :cond_c
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/net/ProxySelectorImpl;->selectOneProxy(Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
