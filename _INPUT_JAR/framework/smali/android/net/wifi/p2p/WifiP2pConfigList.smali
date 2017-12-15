.class public Landroid/net/wifi/p2p/WifiP2pConfigList;
.super Ljava/lang/Object;
.source "WifiP2pConfigList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfigList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlllistCount:I

.field private mDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 157
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfigList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfigList;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_e

    .line 52
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 55
    :cond_e
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/p2p/WifiP2pConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 62
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 64
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_23
    return-void
.end method


# virtual methods
.method public clear()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 71
    :goto_9
    return v0

    .line 69
    :cond_a
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 70
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    .line 71
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCount()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    return v0
.end method

.method public getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 123
    const/4 v1, -0x1

    .line 124
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v0, v3

    .line 132
    :goto_9
    return-object v0

    .line 127
    :cond_a
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 128
    .local v0, "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_12

    goto :goto_9

    .end local v0    # "cc":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_23
    move-object v0, v3

    .line 132
    goto :goto_9
.end method

.method public getConfigList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public remove(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 94
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 95
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 116
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 118
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .registers 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 76
    if-nez p1, :cond_3

    .line 90
    :goto_2
    return-void

    .line 77
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 79
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 80
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 81
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 82
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 83
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    goto :goto_2

    .line 88
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_2c
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mAlllistCount:I

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfigList;->mDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 151
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_f

    .line 153
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1f
    return-void
.end method
