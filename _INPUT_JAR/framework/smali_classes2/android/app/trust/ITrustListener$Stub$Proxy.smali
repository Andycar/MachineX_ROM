.class Landroid/app/trust/ITrustListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITrustListener.java"

# interfaces
.implements Landroid/app/trust/ITrustListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "android.app.trust.ITrustListener"

    return-object v0
.end method

.method public onTrustChanged(ZIZ)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "initiatedByUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_6
    const-string v3, "android.app.trust.ITrustListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_25

    move v3, v1

    :goto_e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    if-eqz p3, :cond_27

    :goto_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_29

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    return-void

    :cond_25
    move v3, v2

    .line 95
    goto :goto_e

    :cond_27
    move v1, v2

    .line 97
    goto :goto_16

    .line 101
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onTrustManagedChanged(ZI)V
    .registers 8
    .param p1, "managed"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "android.app.trust.ITrustListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_1e

    :goto_c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v1, p0, Landroid/app/trust/ITrustListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    return-void

    .line 109
    :cond_1e
    const/4 v1, 0x0

    goto :goto_c

    .line 114
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
