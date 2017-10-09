.class public Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "TimerRecordingAction.java"


# static fields
.field private static final STATE_WAITING_FOR_TIMER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimerRecordingAction"

.field private static final TIMER_STATUS_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private final mRecordSource:[B

.field private final mRecorderAddress:I

.field private final mSourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V
    .registers 5
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "recorderAddress"    # I
    .param p3, "sourceType"    # I
    .param p4, "recordSource"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 50
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 51
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 52
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    .line 53
    return-void
.end method

.method private static bytesToInt([B)I
    .registers 7
    .param p0, "data"    # [B

    .prologue
    .line 151
    array-length v3, p0

    const/4 v4, 0x4

    if-le v3, v4, :cond_21

    .line 152
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_21
    const/4 v1, 0x0

    .line 155
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    array-length v3, p0

    if-ge v0, v3, :cond_33

    .line 156
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v2, v3, 0x8

    .line 157
    .local v2, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 159
    .end local v2    # "shift":I
    :cond_33
    return v1
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 9
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 132
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 133
    .local v1, "params":[B
    aget-byte v5, v1, v4

    and-int/lit16 v0, v5, 0xff

    .line 134
    .local v0, "messageType":I
    sparse-switch v0, :sswitch_data_40

    move v3, v4

    .line 146
    :goto_e
    return v3

    .line 142
    :sswitch_f
    aget-byte v4, v1, v3

    and-int/lit16 v2, v4, 0xff

    .line 143
    .local v2, "reason":I
    const-string v4, "TimerRecordingAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Feature Abort] for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    goto :goto_e

    .line 134
    :sswitch_data_40
    .sparse-switch
        0x34 -> :sswitch_f
        0x97 -> :sswitch_f
        0xa2 -> :sswitch_f
    .end sparse-switch
.end method

.method private handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v4, 0x1

    .line 117
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 119
    .local v0, "timerStatusData":[B
    array-length v1, v0

    if-eq v1, v4, :cond_c

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 120
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/hdmi/TimerRecordingAction;->bytesToInt([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(I)V

    .line 121
    const-string v1, "TimerRecordingAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received [Timer Status Data]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 128
    return v4

    .line 123
    :cond_37
    const-string v1, "TimerRecordingAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid [Timer Status Data]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private sendTimerMessage()V
    .registers 5

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    packed-switch v1, :pswitch_data_42

    .line 77
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    .line 95
    :goto_11
    return-void

    .line 65
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 82
    :goto_1e
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/TimerRecordingAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_11

    .line 69
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 71
    goto :goto_1e

    .line 73
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 75
    goto :goto_1e

    .line 63
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_12
        :pswitch_27
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    if-eq v0, p1, :cond_2f

    .line 165
    const-string v0, "TimerRecordingAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout in invalid state:[Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_2e
    return-void

    .line 169
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->finish()V

    goto :goto_2e
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x0

    .line 99
    iget v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 113
    :cond_6
    :goto_6
    return v0

    .line 103
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    if-ne v1, v2, :cond_6

    .line 107
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_22

    goto :goto_6

    .line 111
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_6

    .line 109
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/TimerRecordingAction;->handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_6

    .line 107
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_17
        0x35 -> :sswitch_1c
    .end sparse-switch
.end method

.method start()Z
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/hdmi/TimerRecordingAction;->sendTimerMessage()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
