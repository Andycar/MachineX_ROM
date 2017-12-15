.class public interface abstract Lcom/samsung/android/service/gesture/IGestureCallback;
.super Ljava/lang/Object;
.source "IGestureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/gesture/IGestureCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract gestureCallback(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
