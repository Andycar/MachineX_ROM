.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .param p2, "target"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 77
    iput-object p3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 78
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/hdmi/DeviceSelectAction;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .registers 6
    .param p1, "powerStatus"    # I

    .prologue
    const/16 v3, 0x1388

    const/4 v0, 0x1

    .line 130
    packed-switch p1, :pswitch_data_3e

    .line 158
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 132
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_7

    .line 135
    :pswitch_c
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 136
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 137
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_7

    .line 139
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_7

    .line 143
    :pswitch_1e
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    if-nez v1, :cond_26

    .line 144
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->turnOnDevice()V

    goto :goto_7

    .line 146
    :cond_26
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_7

    .line 150
    :pswitch_2a
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_39

    .line 151
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 152
    iget v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    goto :goto_7

    .line 154
    :cond_39
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_7

    .line 130
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1e
        :pswitch_2a
        :pswitch_c
    .end packed-switch
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v1, :cond_5

    .line 209
    :goto_4
    return-void

    .line 205
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 206
    :catch_b
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceSelect"

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

    goto :goto_4
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 106
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 107
    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    .line 175
    return-void
.end method

.method private turnOnDevice()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 164
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    .line 166
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    .line 167
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    .line 168
    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4
    .param p1, "timeoutState"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    if-eq v0, p1, :cond_c

    .line 180
    const-string v0, "DeviceSelect"

    const-string v1, "Timer in a wrong state. Ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_b
    return-void

    .line 183
    :cond_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    packed-switch v0, :pswitch_data_32

    goto :goto_b

    .line 185
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 186
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    goto :goto_b

    .line 190
    :cond_24
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_b

    .line 194
    :pswitch_28
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    .line 195
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    goto :goto_b

    .line 183
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_12
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 126
    :cond_b
    :goto_b
    return v2

    .line 114
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 115
    .local v0, "opcode":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 117
    .local v1, "params":[B
    iget v3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    packed-switch v3, :pswitch_data_26

    goto :goto_b

    .line 119
    :pswitch_1a
    const/16 v3, 0x90

    if-ne v0, v3, :cond_b

    .line 120
    aget-byte v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceSelectAction;->handleReportPowerStatus(I)Z

    move-result v2

    goto :goto_b

    .line 117
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public start()Z
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
