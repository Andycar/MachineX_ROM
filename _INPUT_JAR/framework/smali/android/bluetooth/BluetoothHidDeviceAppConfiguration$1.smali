.class final Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 60
    .local v0, "hash":J
    new-instance v2, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-direct {v2, v0, v1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;-><init>(J)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 65
    new-array v0, p1, [Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;->newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v0

    return-object v0
.end method
