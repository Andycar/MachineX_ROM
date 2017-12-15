.class public final Landroid/hardware/hdmi/HdmiHotplugEvent;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiHotplugEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConnected:Z

.field private final mPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiHotplugEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "port"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    .line 43
    iput-boolean p2, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiHotplugEvent;->mConnected:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    return-void

    .line 83
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method
