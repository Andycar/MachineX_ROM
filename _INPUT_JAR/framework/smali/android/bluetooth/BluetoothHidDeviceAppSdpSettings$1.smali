.class final Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
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
        "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    move-result-object v0

    return-object v0
.end method
