.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 119
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v7

    .line 120
    :try_start_5
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    # getter for: Landroid/os/CountDownTimer;->mCancelled:Z
    invoke-static {v6}, Landroid/os/CountDownTimer;->access$000(Landroid/os/CountDownTimer;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 121
    monitor-exit v7

    .line 145
    :goto_e
    return-void

    .line 124
    :cond_f
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    # getter for: Landroid/os/CountDownTimer;->mStopTimeInFuture:J
    invoke-static {v6}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 126
    .local v4, "millisLeft":J
    cmp-long v6, v4, v12

    if-gtz v6, :cond_29

    .line 127
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->onFinish()V

    .line 144
    :goto_24
    monitor-exit v7

    goto :goto_e

    .end local v4    # "millisLeft":J
    :catchall_26
    move-exception v6

    monitor-exit v7
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v6

    .line 128
    .restart local v4    # "millisLeft":J
    :cond_29
    :try_start_29
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    # getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v6}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gez v6, :cond_3c

    .line 130
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_24

    .line 132
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 133
    .local v2, "lastTickStart":J
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v6, v4, v5}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 136
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    # getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v6}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 140
    .local v0, "delay":J
    :goto_52
    cmp-long v6, v0, v12

    if-gez v6, :cond_5e

    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    # getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v6}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_52

    .line 142
    :cond_5e
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_66
    .catchall {:try_start_29 .. :try_end_66} :catchall_26

    goto :goto_24
.end method
