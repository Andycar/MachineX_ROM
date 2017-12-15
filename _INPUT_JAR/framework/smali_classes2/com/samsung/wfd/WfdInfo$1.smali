.class final Lcom/samsung/wfd/WfdInfo$1;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdInfo;
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
        "Lcom/samsung/wfd/WfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    .line 298
    .local v0, "wfdInfo":Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_a3

    move v1, v2

    :goto_50
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_a5

    move v1, v2

    :goto_59
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_a7

    move v1, v2

    :goto_62
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_a9

    move v1, v2

    :goto_6b
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_ab

    move v1, v2

    :goto_74
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_ad

    move v1, v2

    :goto_7d
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_af

    move v1, v2

    :goto_86
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_b1

    move v1, v2

    :goto_8f
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_b3

    move v1, v2

    :goto_98
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_b5

    :goto_a0
    iput-boolean v2, v0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 319
    return-object v0

    :cond_a3
    move v1, v3

    .line 309
    goto :goto_50

    :cond_a5
    move v1, v3

    .line 310
    goto :goto_59

    :cond_a7
    move v1, v3

    .line 311
    goto :goto_62

    :cond_a9
    move v1, v3

    .line 312
    goto :goto_6b

    :cond_ab
    move v1, v3

    .line 313
    goto :goto_74

    :cond_ad
    move v1, v3

    .line 314
    goto :goto_7d

    :cond_af
    move v1, v3

    .line 315
    goto :goto_86

    :cond_b1
    move v1, v3

    .line 316
    goto :goto_8f

    :cond_b3
    move v1, v3

    .line 317
    goto :goto_98

    :cond_b5
    move v2, v3

    .line 318
    goto :goto_a0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/wfd/WfdInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 323
    new-array v0, p1, [Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->newArray(I)[Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method
