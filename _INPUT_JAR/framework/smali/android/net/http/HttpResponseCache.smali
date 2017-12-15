.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final delegate:Lcom/android/okhttp/HttpResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/HttpResponseCache;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/okhttp/HttpResponseCache;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 155
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    .line 156
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .registers 2

    .prologue
    .line 163
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 164
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Lcom/android/okhttp/HttpResponseCache;

    if-eqz v1, :cond_10

    .line 165
    new-instance v1, Landroid/net/http/HttpResponseCache;

    check-cast v0, Lcom/android/okhttp/HttpResponseCache;

    .end local v0    # "installed":Ljava/net/ResponseCache;
    invoke-direct {v1, v0}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    .line 169
    :goto_f
    return-object v1

    .restart local v0    # "installed":Ljava/net/ResponseCache;
    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .registers 10
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 185
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v3, v0, Lcom/android/okhttp/HttpResponseCache;

    if-eqz v3, :cond_2c

    move-object v1, v0

    .line 186
    check-cast v1, Lcom/android/okhttp/HttpResponseCache;

    .line 189
    .local v1, "installedCache":Lcom/android/okhttp/HttpResponseCache;
    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->getMaxSize()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_29

    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->isClosed()Z

    move-result v3

    if-nez v3, :cond_29

    .line 192
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v1}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    .line 202
    .end local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :goto_28
    return-object v3

    .line 195
    .restart local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :cond_29
    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->close()V

    .line 199
    .end local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :cond_2c
    new-instance v2, Lcom/android/okhttp/HttpResponseCache;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    .line 201
    .local v2, "responseCache":Lcom/android/okhttp/HttpResponseCache;
    invoke-static {v2}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 202
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v2}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    goto :goto_28
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    if-ne v0, v1, :cond_c

    .line 275
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 277
    :cond_c
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->close()V

    .line 278
    return-void
.end method

.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    if-ne v0, v1, :cond_c

    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 287
    :cond_c
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->delete()V

    .line 288
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 241
    :goto_5
    return-void

    .line 239
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
