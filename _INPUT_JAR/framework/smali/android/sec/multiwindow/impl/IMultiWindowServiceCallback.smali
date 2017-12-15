.class public interface abstract Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
.super Ljava/lang/Object;
.source "IMultiWindowServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onArrangeStateUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMinimizeUpdate(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
