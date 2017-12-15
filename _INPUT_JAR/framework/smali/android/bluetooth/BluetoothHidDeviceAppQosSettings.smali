.class public final Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:I = -0x1

.field public static final SERVICE_BEST_EFFORT:I = 0x1

.field public static final SERVICE_GUARANTEED:I = 0x2

.field public static final SERVICE_NO_TRAFFIC:I


# instance fields
.field public final delayVariation:I

.field public final latency:I

.field public final peakBandwidth:I

.field public final serviceType:I

.field public final tokenBucketSize:I

.field public final tokenRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7
    .param p1, "serviceType"    # I
    .param p2, "tokenRate"    # I
    .param p3, "tokenBucketSize"    # I
    .param p4, "peakBandwidth"    # I
    .param p5, "latency"    # I
    .param p6, "delayVariation"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    .line 45
    iput p2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    .line 46
    iput p3, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    .line 47
    iput p4, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    .line 48
    iput p5, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    .line 49
    iput p6, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 54
    instance-of v2, p1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    if-eqz v2, :cond_2d

    move-object v0, p1

    .line 55
    check-cast v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 56
    .local v0, "qos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    if-ne v2, v3, :cond_2d

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    iget v3, v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    if-ne v2, v3, :cond_2d

    const/4 v1, 0x1

    .line 63
    .end local v0    # "qos":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_2d
    return v1
.end method

.method public toArray()[I
    .registers 4

    .prologue
    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    aput v2, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->serviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->tokenBucketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->peakBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->latency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->delayVariation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
