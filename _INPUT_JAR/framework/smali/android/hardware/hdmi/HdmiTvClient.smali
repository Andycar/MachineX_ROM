.class public final Landroid/hardware/hdmi/HdmiTvClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiTvClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;,
        Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;,
        Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiTvClient"

.field public static final VENDOR_DATA_SIZE:I = 0x10


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2
    .param p1, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 45
    return-void
.end method

.method private checkTimerRecordingSourceType(I)V
    .registers 5
    .param p1, "sourceType"    # I

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_1e

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :pswitch_1c
    return-void

    .line 305
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method static create(Landroid/hardware/hdmi/IHdmiControlService;)Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2
    .param p0, "service"    # Landroid/hardware/hdmi/IHdmiControlService;

    .prologue
    .line 50
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method private static getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 2
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .prologue
    .line 89
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$1;-><init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 2
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    .prologue
    .line 144
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$2;-><init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V

    return-object v0
.end method

.method private getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .registers 3
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    .prologue
    .line 359
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiTvClient$4;-><init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .registers 2
    .param p0, "callback"    # Landroid/hardware/hdmi/HdmiRecordListener;

    .prologue
    .line 197
    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$3;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$3;-><init>(Landroid/hardware/hdmi/HdmiRecordListener;)V

    return-object v0
.end method


# virtual methods
.method public clearTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 8
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .prologue
    .line 320
    if-nez p3, :cond_b

    .line 321
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "source must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_b
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 326
    :try_start_e
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 327
    .local v0, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 328
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->clearTimerRecording(II[B)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 332
    .end local v0    # "data":[B
    :goto_1d
    return-void

    .line 329
    :catch_1e
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiTvClient"

    const-string v3, "failed to start record: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6
    .param p1, "logicalAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .prologue
    .line 78
    if-nez p2, :cond_a

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 86
    :goto_13
    return-void

    .line 83
    :catch_14
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public getDeviceType()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public portSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;

    .prologue
    .line 105
    if-nez p2, :cond_a

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 113
    :goto_13
    return-void

    .line 110
    :catch_14
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select port: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public sendMhlVendorCommand(III[B)V
    .registers 9
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    const/16 v2, 0x10

    .line 377
    if-eqz p4, :cond_7

    array-length v1, p4

    if-eq v1, v2, :cond_f

    .line 378
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid vendor command data."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_f
    if-ltz p2, :cond_13

    if-lt p2, v2, :cond_2c

    .line 381
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_2c
    if-ltz p3, :cond_32

    add-int v1, p2, p3

    if-le v1, v2, :cond_4b

    .line 384
    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->sendMhlVendorCommand(III[B)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    .line 392
    :goto_50
    return-void

    .line 389
    :catch_51
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method

.method public setHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;

    .prologue
    .line 347
    if-nez p1, :cond_a

    .line 348
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 355
    :goto_13
    return-void

    .line 352
    :catch_14
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set hdmi mhl vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;

    .prologue
    .line 133
    if-nez p1, :cond_a

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 141
    :goto_13
    return-void

    .line 138
    :catch_14
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "Failed to set InputChangeListener:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setRecordListener(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiRecordListener;

    .prologue
    .line 186
    if-nez p1, :cond_a

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/hdmi/IHdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 194
    :goto_13
    return-void

    .line 191
    :catch_14
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set record listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setSystemAudioMute(Z)V
    .registers 5
    .param p1, "mute"    # Z

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 178
    :goto_5
    return-void

    .line 175
    :catch_6
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set mute: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setSystemAudioVolume(III)V
    .registers 7
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxIndex"    # I

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioVolume(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 165
    :goto_5
    return-void

    .line 162
    :catch_6
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set volume: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public startOneTouchRecord(ILandroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 7
    .param p1, "recorderAddress"    # I
    .param p2, "source"    # Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .prologue
    .line 240
    if-nez p2, :cond_b

    .line 241
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "source must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_b
    const/4 v2, 0x1

    :try_start_c
    invoke-virtual {p2, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v2

    new-array v0, v2, [B

    .line 246
    .local v0, "data":[B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 247
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startOneTouchRecord(I[B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1d

    .line 251
    .end local v0    # "data":[B
    :goto_1c
    return-void

    .line 248
    :catch_1d
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiTvClient"

    const-string v3, "failed to start record: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public startTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 8
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "source"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;

    .prologue
    .line 289
    if-nez p3, :cond_b

    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "source must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_b
    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    .line 296
    :try_start_e
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v2

    new-array v0, v2, [B

    .line 297
    .local v0, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    .line 298
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v2, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startTimerRecording(II[B)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 302
    .end local v0    # "data":[B
    :goto_1d
    return-void

    .line 299
    :catch_1e
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HdmiTvClient"

    const-string v3, "failed to start record: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public stopOneTouchRecord(I)V
    .registers 5
    .param p1, "recorderAddress"    # I

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->stopOneTouchRecord(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 264
    :goto_5
    return-void

    .line 261
    :catch_6
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HdmiTvClient"

    const-string v2, "failed to stop record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
