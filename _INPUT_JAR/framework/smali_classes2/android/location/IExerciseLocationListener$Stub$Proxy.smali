.class Landroid/location/IExerciseLocationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IExerciseLocationListener.java"

# interfaces
.implements Landroid/location/IExerciseLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IExerciseLocationListener$Stub;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "android.location.IExerciseLocationListener"

    return-object v0
.end method

.method public onLocationChanged([J[D[D[F[F[F[D[D[JI)V
    .registers 16
    .param p1, "timestamp"    # [J
    .param p2, "latitude"    # [D
    .param p3, "longtitude"    # [D
    .param p4, "altitude"    # [F
    .param p5, "pressure"    # [F
    .param p6, "speed"    # [F
    .param p7, "pedoDistance"    # [D
    .param p8, "pedoSpeed"    # [D
    .param p9, "pedoStepCount"    # [J
    .param p10, "numOfBatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.location.IExerciseLocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 100
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 101
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 102
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 103
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 104
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 105
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 106
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 107
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 108
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v1, p0, Landroid/location/IExerciseLocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_33

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 112
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
