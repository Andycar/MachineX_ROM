.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
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
    .line 205
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_11c

    .line 295
    :goto_8
    return-void

    .line 210
    :pswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 211
    .local v7, "freq":Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_8

    .line 215
    .end local v7    # "freq":Ljava/lang/Long;
    :pswitch_17
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_8

    .line 219
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    move-object v8, v0

    check-cast v8, [J

    .line 220
    .local v8, "freqArry":[J
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_8

    .line 224
    .end local v8    # "freqArry":[J
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [J

    move-object v8, v0

    check-cast v8, [J

    .line 225
    .restart local v8    # "freqArry":[J
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v8}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_8

    .line 229
    .end local v8    # "freqArry":[J
    :pswitch_37
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_8

    .line 233
    :pswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 234
    .local v11, "reasonCode":I
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v11}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_8

    .line 238
    .end local v11    # "reasonCode":I
    :pswitch_4b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 239
    .restart local v7    # "freq":Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_8

    .line 243
    .end local v7    # "freq":Ljava/lang/Long;
    :pswitch_59
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_8

    .line 247
    :pswitch_5f
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_8

    .line 252
    :pswitch_65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 253
    .local v9, "obArry":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v0, v9, v6

    check-cast v0, Ljava/lang/String;

    aget-object v1, v9, v13

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 259
    .end local v9    # "obArry":[Ljava/lang/Object;
    :pswitch_82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, [Ljava/lang/Object;

    .line 260
    .local v12, "rtpArry":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    aget-object v1, v12, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v12, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v12, v13

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v12, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v12, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v12, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/media/fmradio/FMEventListener;->onRTPlusReceived(IIIIII)V

    goto/16 :goto_8

    .line 265
    .end local v12    # "rtpArry":[Ljava/lang/Object;
    :pswitch_c3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, [Ljava/lang/Object;

    .line 266
    .local v10, "pieccArry":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    aget-object v0, v10, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v10, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/media/fmradio/FMEventListener;->onPIECCReceived(II)V

    goto/16 :goto_8

    .line 270
    .end local v10    # "pieccArry":[Ljava/lang/Object;
    :pswitch_e1
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_8

    .line 274
    :pswitch_e8
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_8

    .line 278
    :pswitch_ef
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_8

    .line 282
    :pswitch_f6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 283
    .restart local v7    # "freq":Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 284
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_8

    .line 288
    .end local v7    # "freq":Ljava/lang/Long;
    :pswitch_10e
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->volumeLock()V

    goto/16 :goto_8

    .line 292
    :pswitch_115
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMEventListener;->recFinish()V

    goto/16 :goto_8

    .line 207
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_17
        :pswitch_2a
        :pswitch_1d
        :pswitch_37
        :pswitch_3d
        :pswitch_4b
        :pswitch_59
        :pswitch_5f
        :pswitch_65
        :pswitch_e1
        :pswitch_e8
        :pswitch_ef
        :pswitch_f6
        :pswitch_10e
        :pswitch_82
        :pswitch_115
        :pswitch_c3
    .end packed-switch
.end method
