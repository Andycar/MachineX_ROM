.class public Lcom/samsung/wfd/WfdStatus;
.super Ljava/lang/Object;
.source "WfdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public sessionId:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/samsung/wfd/WfdStatus$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdStatus$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdEnums$SessionState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/wfd/WfdStatus;->state:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WfdStatus;->sessionId:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wfd/WfdStatus;->connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/wfd/WfdStatus;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/samsung/wfd/WfdStatus;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/samsung/wfd/WfdStatus;->connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
