.class public Ljava/net/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCreated(Ljava/net/Socket;)V
    .registers 2
    .param p0, "s"    # Ljava/net/Socket;

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 31
    return-void
.end method
