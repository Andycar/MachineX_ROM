.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor <init>(Landroid/media/AsyncPlayer;)V
    .registers 4

    .prologue
    .line 79
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 85
    :goto_1
    const/4 v2, 0x0

    .line 87
    .local v2, "cmd":Landroid/media/AsyncPlayer$Command;
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    .line 89
    :try_start_9
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/AsyncPlayer$Command;

    move-object v2, v0

    .line 90
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_3d

    .line 92
    iget v3, v2, Landroid/media/AsyncPlayer$Command;->code:I

    packed-switch v3, :pswitch_data_aa

    .line 113
    :goto_1d
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    .line 114
    :try_start_24
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_a4

    .line 119
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    const/4 v7, 0x0

    # setter for: Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;
    invoke-static {v3, v7}, Landroid/media/AsyncPlayer;->access$402(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;

    .line 120
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # invokes: Landroid/media/AsyncPlayer;->releaseWakeLock()V
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$500(Landroid/media/AsyncPlayer;)V

    .line 121
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_a7

    return-void

    .line 90
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3

    .line 95
    :pswitch_40
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # invokes: Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V
    invoke-static {v3, v2}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V

    goto :goto_1d

    .line 99
    :pswitch_46
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v2, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long v4, v6, v8

    .line 101
    .local v4, "delay":J
    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_7f

    .line 102
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notification stop delayed by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "msecs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_7f
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 105
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 106
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # setter for: Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v10}, Landroid/media/AsyncPlayer;->access$302(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_1d

    .line 108
    .end local v4    # "delay":J
    :cond_97
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    # getter for: Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "STOP command without a player"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 123
    :cond_a4
    :try_start_a4
    monitor-exit v6

    goto/16 :goto_1

    :catchall_a7
    move-exception v3

    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_a7

    throw v3

    .line 92
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_40
        :pswitch_46
    .end packed-switch
.end method
