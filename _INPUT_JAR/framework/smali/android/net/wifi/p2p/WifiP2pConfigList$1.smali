.class final Landroid/net/wifi/p2p/WifiP2pConfigList$1;
.super Ljava/lang/Object;
.source "WifiP2pConfigList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfigList;
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
        "Landroid/net/wifi/p2p/WifiP2pConfigList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 162
    .local v1, "deviceList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 164
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 166
    :cond_19
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigList;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 170
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    return-object v0
.end method
