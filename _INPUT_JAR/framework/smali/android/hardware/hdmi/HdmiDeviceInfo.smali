.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;
.source "HdmiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADDR_INTERNAL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final DEVICE_INACTIVE:I = -0x1

.field public static final DEVICE_PLAYBACK:I = 0x4

.field public static final DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final DEVICE_RECORDER:I = 0x1

.field public static final DEVICE_RESERVED:I = 0x2

.field public static final DEVICE_TUNER:I = 0x3

.field public static final DEVICE_TV:I = 0x0

.field public static final DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final HDMI_DEVICE_TYPE_MHL:I = 0x1

.field private static final ID_OFFSET_CEC:I = 0x0

.field private static final ID_OFFSET_HARDWARE:I = 0xc0

.field private static final ID_OFFSET_MHL:I = 0x80

.field public static final PATH_INTERNAL:I = 0x0

.field public static final PATH_INVALID:I = 0xffff

.field public static final PORT_INVALID:I = -0x1


# instance fields
.field private final mAdopterId:I

.field private final mDeviceId:I

.field private final mDevicePowerStatus:I

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private final mId:I

.field private final mLogicalAddress:I

.field private final mPhysicalAddress:I

.field private final mPortId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 199
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 200
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 202
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 203
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 204
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 206
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 209
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 210
    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 212
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .param p1, "physicalAddress"    # I
    .param p2, "portId"    # I
    .param p3, "adopterId"    # I
    .param p4, "deviceId"    # I

    .prologue
    const/4 v1, -0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 225
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 226
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 228
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 229
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 230
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 232
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 233
    const-string v0, "Mobile"

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 235
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 236
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 237
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .registers 15
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;I)V
    .registers 10
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "portId"    # I
    .param p4, "deviceType"    # I
    .param p5, "vendorId"    # I
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "powerStatus"    # I

    .prologue
    const/4 v1, -0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    .line 159
    iput p2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    .line 160
    iput p3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    .line 162
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    .line 163
    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    .line 164
    iput p4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    .line 165
    iput p5, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    .line 166
    iput p7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    .line 167
    iput-object p6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 169
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    .line 170
    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    .line 171
    return-void
.end method

.method public static idForCecDevice(I)I
    .registers 2
    .param p0, "address"    # I

    .prologue
    .line 254
    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static idForHardware(I)I
    .registers 2
    .param p0, "portId"    # I

    .prologue
    .line 275
    add-int/lit16 v0, p0, 0xc0

    return v0
.end method

.method public static idForMhlDevice(I)I
    .registers 2
    .param p0, "portId"    # I

    .prologue
    .line 265
    add-int/lit16 v0, p0, 0x80

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 446
    instance-of v2, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-nez v2, :cond_6

    .line 451
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 450
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 451
    .local v0, "other":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getAdopterId()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return v0
.end method

.method public getDeviceId()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public getDevicePowerStatus()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    return v0
.end method

.method public getLogicalAddress()I
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method public getPhysicalAddress()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method public getPortId()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    .prologue
    .line 372
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return v0
.end method

.method public isCecDevice()Z
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMhlDevice()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 357
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSourceType()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 339
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 415
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    .local v0, "s":Ljava/lang/StringBuffer;
    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v1, :pswitch_data_f4

    .line 436
    const-string v1, ""

    .line 441
    :goto_e
    return-object v1

    .line 418
    :pswitch_f
    const-string v1, "CEC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v1, "logical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%02X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v1, "device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string/jumbo v1, "vendor_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v1, "display_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string/jumbo v1, "power_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :goto_78
    const-string/jumbo v1, "physical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string/jumbo v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    .line 427
    :pswitch_a9
    const-string v1, "MHL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const-string v1, "device_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, "adopter_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%04X"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    .line 433
    :pswitch_ed
    const-string v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    .line 416
    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a9
        :pswitch_ed
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 393
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_3a

    .line 411
    :goto_14
    return-void

    .line 398
    :pswitch_15
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_14

    .line 405
    :pswitch_2f
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 396
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_2f
    .end packed-switch
.end method
