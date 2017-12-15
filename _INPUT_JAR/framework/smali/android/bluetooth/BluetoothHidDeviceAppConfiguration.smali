.class public final Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHash:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    .local v0, "rnd":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 33
    return-void
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "hash"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 41
    instance-of v1, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    if-eqz v1, :cond_10

    .line 44
    iget-wide v2, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    check-cast p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v4, p1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 46
    :cond_10
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->mHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    return-void
.end method
