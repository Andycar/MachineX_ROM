.class final Landroid/net/wifi/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiActivityEnergyInfo;
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
        "Landroid/net/wifi/WifiActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "stackState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "txTime":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "rxTime":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, "idleTime":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    .local v5, "energyUsed":I
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(IIIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Landroid/net/wifi/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method
