.class final Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanResults;
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
        "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "n":I
    new-array v2, v1, [Landroid/net/wifi/ScanResult;

    .line 254
    .local v2, "results":[Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_16

    .line 255
    sget-object v3, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    aput-object v3, v2, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 257
    :cond_16
    new-instance v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v3, v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 261
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object v0

    return-object v0
.end method
