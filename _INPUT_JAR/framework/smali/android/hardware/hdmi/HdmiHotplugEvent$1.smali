.class final Landroid/hardware/hdmi/HdmiHotplugEvent$1;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiHotplugEvent;
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
        "Landroid/hardware/hdmi/HdmiHotplugEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_11

    .line 98
    .local v0, "connected":Z
    :goto_b
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v2, v1, v0}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    return-object v2

    .line 97
    .end local v0    # "connected":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 101
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiHotplugEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object v0

    return-object v0
.end method
