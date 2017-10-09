.class public abstract Ljava/net/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "uConn"    # Ljava/net/URLConnection;
    .param p2, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "content":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_14

    .line 61
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 65
    .end local v0    # "content":Ljava/lang/Object;
    :goto_10
    return-object v0

    .line 60
    .restart local v0    # "content":Ljava/lang/Object;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method
