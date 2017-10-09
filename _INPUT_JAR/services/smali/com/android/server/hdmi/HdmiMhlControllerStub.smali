.class final Lcom/android/server/hdmi/HdmiMhlControllerStub;
.super Ljava/lang/Object;
.source "HdmiMhlControllerStub.java"


# static fields
.field private static final EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

.field private static final INVALID_DEVICE_ROLES:I

.field private static final INVALID_MHL_VERSION:I

.field private static final NO_SUPPORTED_FEATURES:I

.field private static final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/hdmi/HdmiPortInfo;

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .registers 2
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method


# virtual methods
.method addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 3
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method clearAllLocalDevices()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method getAllLocalDevices()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    return-object v0
.end method

.method getEcbusDeviceRoles(I)I
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method getMhlVersion(I)I
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method getPeerMhlVersion(I)I
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getSupportedFeatures(I)I
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method isReady()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .registers 3
    .param p1, "portId"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method sendVendorCommand(III[B)V
    .registers 5
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    .line 99
    return-void
.end method

.method setOption(II)V
    .registers 3
    .param p1, "flag"    # I
    .param p2, "value"    # I

    .prologue
    .line 102
    return-void
.end method
