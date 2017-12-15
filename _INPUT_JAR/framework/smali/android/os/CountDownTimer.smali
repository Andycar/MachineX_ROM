.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 114
    new-instance v0, Landroid/os/CountDownTimer$1;

    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 71
    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    .line 72
    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/os/CountDownTimer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/os/CountDownTimer;)J
    .registers 3
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/os/CountDownTimer;)J
    .registers 3
    .param p0, "x0"    # Landroid/os/CountDownTimer;

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 80
    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Landroid/os/CountDownTimer;
    .registers 7

    .prologue
    .line 87
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 88
    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_12

    .line 89
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_29

    move-object v0, p0

    .line 94
    .end local p0    # "this":Landroid/os/CountDownTimer;
    .local v0, "this":Landroid/os/CountDownTimer;
    :goto_10
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0    # "this":Landroid/os/CountDownTimer;
    .restart local p0    # "this":Landroid/os/CountDownTimer;
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    .line 93
    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_29

    move-object v0, p0

    .line 94
    .end local p0    # "this":Landroid/os/CountDownTimer;
    .restart local v0    # "this":Landroid/os/CountDownTimer;
    goto :goto_10

    .line 87
    .end local v0    # "this":Landroid/os/CountDownTimer;
    .restart local p0    # "this":Landroid/os/CountDownTimer;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method
