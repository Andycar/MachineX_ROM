.class public interface abstract Landroid/media/RemoteDisplayCallback$RemoteDisplayListener;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteDisplayListener"
.end annotation


# virtual methods
.method public abstract onDisplayConnected(Landroid/view/Surface;IIII)V
.end method

.method public abstract onDisplayDisconnected()V
.end method

.method public abstract onDisplayError(I)V
.end method
