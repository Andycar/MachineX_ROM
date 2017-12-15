.class public final Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppSdpSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final descriptors:[B

.field public final name:Ljava/lang/String;

.field public final provider:Ljava/lang/String;

.field public final subclass:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .param p4, "subclass"    # B
    .param p5, "descriptors"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    .line 39
    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    .line 40
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 45
    instance-of v2, p1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    if-eqz v2, :cond_27

    move-object v0, p1

    .line 46
    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 47
    .local v0, "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    if-ne v2, v3, :cond_27

    iget-byte v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    iget-byte v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    iget-object v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    if-ne v2, v3, :cond_27

    const/4 v1, 0x1

    .line 53
    .end local v0    # "sdp":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    :cond_27
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-byte v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 84
    return-void
.end method
