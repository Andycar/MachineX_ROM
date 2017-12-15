.class public interface abstract Landroid/bluetooth/IBluetoothRadioMgrCallback;
.super Ljava/lang/Object;
.source "IBluetoothRadioMgrCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAirplaneModeChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBTRadioStateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGattServiceStateChange(ZLandroid/bluetooth/IBluetoothGatt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUserSwitched()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
