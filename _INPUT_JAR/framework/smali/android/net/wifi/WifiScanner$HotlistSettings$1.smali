.class final Landroid/net/wifi/WifiScanner$HotlistSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$HotlistSettings;
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
        "Landroid/net/wifi/WifiScanner$HotlistSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$HotlistSettings;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 506
    new-instance v3, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 507
    .local v3, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .local v2, "n":I
    new-array v4, v2, [Landroid/net/wifi/WifiScanner$BssidInfo;

    iput-object v4, v3, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v2, :cond_3a

    .line 511
    new-instance v1, Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    .line 512
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    .line 516
    iget-object v4, v3, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aput-object v1, v4, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 518
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_3a
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$HotlistSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$HotlistSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$HotlistSettings;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 522
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$HotlistSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$HotlistSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$HotlistSettings;

    move-result-object v0

    return-object v0
.end method
