.class final Ljava/net/URLEncoder$1;
.super Llibcore/net/UriCodec;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    .line 39
    const-string v0, " .-*_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
