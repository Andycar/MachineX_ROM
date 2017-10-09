.class final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DevicePowerStatusAction.java"


# static fields
.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePowerStatusAction"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 54
    iput p2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 55
    iput-object p3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 56
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/DevicePowerStatusAction;
    .registers 5
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 44
    if-eqz p0, :cond_4

    if-nez p2, :cond_d

    .line 45
    :cond_4
    const-string v0, "DevicePowerStatusAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/android/server/hdmi/DevicePowerStatusAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/DevicePowerStatusAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_c
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 103
    :goto_5
    return-void

    .line 100
    :catch_6
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DevicePowerStatusAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 69
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 95
    :cond_4
    :goto_4
    return-void

    .line 90
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 92
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    goto :goto_4
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget v3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    if-eq v3, v2, :cond_7

    .line 82
    :cond_6
    :goto_6
    return v1

    .line 76
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v0, v3, v1

    .line 78
    .local v0, "status":I
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->invokeCallback(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->finish()V

    move v1, v2

    .line 80
    goto :goto_6
.end method

.method start()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->queryDevicePowerStatus()V

    .line 61
    iput v2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    .line 62
    iget v0, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DevicePowerStatusAction;->addTimer(II)V

    .line 63
    return v2
.end method
