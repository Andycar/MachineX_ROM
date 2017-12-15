.class public Landroid/hardware/display/ExtendedDisplayListener;
.super Ljava/lang/Object;
.source "ExtendedDisplayListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedDisplayListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 36
    const-string v0, "ExtendedDisplayListener"

    const-string/jumbo v1, "onBridgeStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onConnectionStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 19
    const-string v0, "ExtendedDisplayListener"

    const-string/jumbo v1, "onConnectionStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public onQoSLevelChanged(I)V
    .registers 4
    .param p1, "level"    # I

    .prologue
    .line 27
    const-string v0, "ExtendedDisplayListener"

    const-string/jumbo v1, "onQoSLevelChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
