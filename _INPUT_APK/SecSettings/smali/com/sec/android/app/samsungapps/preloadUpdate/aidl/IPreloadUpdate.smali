.class public interface abstract Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate;
.super Ljava/lang/Object;
.source "IPreloadUpdate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdate$Stub;
    }
.end annotation


# virtual methods
.method public abstract update(Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
