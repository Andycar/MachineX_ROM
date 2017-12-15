.class public Lcom/samsung/media/fmradio/FMEventListener;
.super Ljava/lang/Object;
.source "FMEventListener.java"


# static fields
.field private static final EVENT_AF_RECEIVED:I = 0xe

.field private static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field private static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_REC_FINISH:I = 0x11

.field private static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field private static final EVENT_VOLUME_LOCK:I = 0xf


# instance fields
.field callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$1;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .line 205
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$2;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public earPhoneDisconnected()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public onAFReceived(J)V
    .registers 3
    .param p1, "freq"    # J

    .prologue
    .line 92
    return-void
.end method

.method public onAFStarted()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onChannelFound(J)V
    .registers 3
    .param p1, "frequency"    # J

    .prologue
    .line 31
    return-void
.end method

.method public onOff(I)V
    .registers 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onOn()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public onPIECCReceived(II)V
    .registers 3
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onRDSDisabled()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public onRDSEnabled()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public onRTPlusReceived(IIIIII)V
    .registers 7
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onScanFinished([J)V
    .registers 2
    .param p1, "frequency"    # [J

    .prologue
    .line 43
    return-void
.end method

.method public onScanStarted()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public onScanStopped([J)V
    .registers 2
    .param p1, "frequency"    # [J

    .prologue
    .line 39
    return-void
.end method

.method public onTune(J)V
    .registers 3
    .param p1, "frequency"    # J

    .prologue
    .line 55
    return-void
.end method

.method public recFinish()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public volumeLock()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method
