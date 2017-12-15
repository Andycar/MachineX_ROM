.class Landroid/media/MediaCodec$EventHandler;
.super Landroid/os/Handler;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCodec:Landroid/media/MediaCodec;

.field final synthetic this$0:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V
    .registers 4
    .param p2, "codec"    # Landroid/media/MediaCodec;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 343
    iput-object p1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    .line 344
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 345
    iput-object p2, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    .line 346
    return-void
.end method

.method private handleCallback(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 369
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    if-nez v2, :cond_9

    .line 414
    :goto_8
    return-void

    .line 373
    :cond_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_80

    goto :goto_8

    .line 376
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 377
    .local v0, "index":I
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$100(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 378
    :try_start_18
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/media/MediaCodec;->access$200(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    # invokes: Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    invoke-static {v2, v4, v0}, Landroid/media/MediaCodec;->access$300(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V

    .line 379
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_30

    .line 380
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaCodec$Callback;->onInputBufferAvailable(Landroid/media/MediaCodec;I)V

    goto :goto_8

    .line 379
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2

    .line 386
    .end local v0    # "index":I
    :pswitch_33
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 387
    .restart local v0    # "index":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    .line 388
    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$100(Landroid/media/MediaCodec;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 389
    :try_start_40
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/media/MediaCodec;->access$400(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    # invokes: Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    invoke-static {v2, v4, v0, v1}, Landroid/media/MediaCodec;->access$500(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 390
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_58

    .line 391
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaCodec$Callback;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_8

    .line 390
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2

    .line 398
    .end local v0    # "index":I
    .end local v1    # "info":Landroid/media/MediaCodec$BufferInfo;
    :pswitch_5b
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaCodec$Callback;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    goto :goto_8

    .line 404
    :pswitch_6b
    iget-object v2, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    # getter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v2}, Landroid/media/MediaCodec;->access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec$EventHandler;->mCodec:Landroid/media/MediaCodec;

    new-instance v5, Landroid/media/MediaFormat;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v5, v2}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec$Callback;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_8

    .line 373
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_f
        :pswitch_33
        :pswitch_5b
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 366
    :goto_5
    return-void

    .line 353
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/MediaCodec$EventHandler;->handleCallback(Landroid/os/Message;)V

    goto :goto_5

    .line 358
    :pswitch_a
    iget-object v1, p0, Landroid/media/MediaCodec$EventHandler;->this$0:Landroid/media/MediaCodec;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec$Callback;

    # setter for: Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;
    invoke-static {v1, v0}, Landroid/media/MediaCodec;->access$002(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;

    goto :goto_5

    .line 350
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
