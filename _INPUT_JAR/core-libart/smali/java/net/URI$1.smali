.class final Ljava/net/URI$1;
.super Llibcore/net/UriCodec;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 152
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
