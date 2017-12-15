.class public Lcom/samsung/wfd/WfdDevice;
.super Ljava/lang/Object;
.source "WfdDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WfdDevice"


# instance fields
.field public p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public wfdInfo:Lcom/samsung/wfd/WfdInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/wfd/WfdDevice$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 38
    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/samsung/wfd/WfdDevice;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 51
    iget-object v0, p1, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdInfo;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "winfo"    # Lcom/samsung/wfd/WfdInfo;
    .param p2, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0, p1}, Lcom/samsung/wfd/WfdInfo;-><init>(Lcom/samsung/wfd/WfdInfo;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 43
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 44
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1d

    .line 45
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    iget-object v1, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 47
    :cond_1d
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdInfo;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getP2PDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public setP2PDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 80
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 81
    return-void
.end method

.method public setWfdInfo(Lcom/samsung/wfd/WfdInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/samsung/wfd/WfdInfo;

    .prologue
    .line 88
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0, p1}, Lcom/samsung/wfd/WfdInfo;-><init>(Lcom/samsung/wfd/WfdInfo;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
