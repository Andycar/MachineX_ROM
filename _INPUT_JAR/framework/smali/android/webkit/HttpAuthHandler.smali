.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public suppressDialog()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
