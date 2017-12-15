.class Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrivateModeClient.java"

# interfaces
.implements Lcom/samsung/android/privatemode/IPrivateModeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "com.samsung.android.privatemode.IPrivateModeClient"

    return-object v0
.end method

.method public onStateChange(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "extInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.privatemode.IPrivateModeClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v1, p0, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 91
    return-void

    .line 89
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
