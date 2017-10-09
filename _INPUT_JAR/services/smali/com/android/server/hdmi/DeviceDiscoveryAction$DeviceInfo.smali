.class final Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private final mLogicalAddress:I

.field private mPhysicalAddress:I

.field private mPortId:I

.field private mVendorId:I


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .param p1, "logicalAddress"    # I

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    .line 72
    iput v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    .line 73
    const v0, 0xffffff

    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    .line 78
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/hdmi/DeviceDiscoveryAction$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    return p1
.end method

.method private toHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 8

    .prologue
    .line 82
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    iget v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    iget v5, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    iget-object v6, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method
