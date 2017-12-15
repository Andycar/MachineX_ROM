.class final Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;
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
        "Landroid/net/wifi/p2p/WifiP2pGroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 236
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>()V

    .line 238
    .local v1, "grpList":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 240
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 242
    :cond_19
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 246
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v0

    return-object v0
.end method
