.class Lcom/samsung/media/fmradio/FMEventListener$1;
.super Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method public earPhoneDisconnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method public onAFReceived(J)V
    .registers 8
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public onAFStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method

.method public onChannelFound(J)V
    .registers 8
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method

.method public onOff(I)V
    .registers 6
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method public onOn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public onPIECCReceived(II)V
    .registers 9
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public onRDSDisabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    return-void
.end method

.method public onRDSEnabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public onRTPlusReceived(IIIIII)V
    .registers 13
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public onScanFinished([J)V
    .registers 5
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public onScanStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public onScanStopped([J)V
    .registers 5
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return-void
.end method

.method public onTune(J)V
    .registers 8
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public recFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    return-void
.end method

.method public volumeLock()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method
