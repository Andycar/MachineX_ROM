.class public Llibcore/net/url/FtpHandler;
.super Ljava/net/URLStreamHandler;
.source "FtpHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 67
    const/16 v0, 0x15

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Llibcore/net/url/FtpURLConnection;

    invoke-direct {v0, p1}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null || proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_c
    new-instance v0, Llibcore/net/url/FtpURLConnection;

    invoke-direct {v0, p1, p2}, Llibcore/net/url/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v0
.end method
