.class Ljava/net/URLConnection$DefaultContentHandler;
.super Ljava/net/ContentHandler;
.source "URLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultContentHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .param p1, "u"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
