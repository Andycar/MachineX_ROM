.class abstract Landroid/speech/tts/AbstractEventLogger;
.super Ljava/lang/Object;
.source "AbstractEventLogger.java"


# instance fields
.field protected final mCallerPid:I

.field protected final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private mLogWritten:Z

.field protected mPlaybackStartTime:J

.field protected final mReceivedTime:J

.field private volatile mRequestProcessingStartTime:J

.field protected final mServiceApp:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 6
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "serviceApp"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 34
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 35
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 36
    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 41
    iput p1, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerUid:I

    .line 42
    iput p2, p0, Landroid/speech/tts/AbstractEventLogger;->mCallerPid:I

    .line 43
    iput-object p3, p0, Landroid/speech/tts/AbstractEventLogger;->mServiceApp:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract logFailure(I)V
.end method

.method protected abstract logSuccess(JJJ)V
.end method

.method public onAudioDataWritten()V
    .registers 5

    .prologue
    .line 83
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    .line 86
    :cond_e
    return-void
.end method

.method public onCompleted(I)V
    .registers 14
    .param p1, "statusCode"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 93
    iget-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    if-eqz v0, :cond_7

    .line 117
    :goto_6
    return-void

    .line 96
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/AbstractEventLogger;->mLogWritten:Z

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 107
    .local v8, "completionTime":J
    if-nez p1, :cond_1c

    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_20

    .line 109
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/speech/tts/AbstractEventLogger;->logFailure(I)V

    goto :goto_6

    .line 113
    :cond_20
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mPlaybackStartTime:J

    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mReceivedTime:J

    sub-long v2, v0, v10

    .line 114
    .local v2, "audioLatency":J
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v4, v0, v10

    .line 115
    .local v4, "engineLatency":J
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    iget-wide v10, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    sub-long v6, v0, v10

    .local v6, "engineTotal":J
    move-object v1, p0

    .line 116
    invoke-virtual/range {v1 .. v7}, Landroid/speech/tts/AbstractEventLogger;->logSuccess(JJJ)V

    goto :goto_6
.end method

.method public onEngineComplete()V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineCompleteTime:J

    .line 72
    return-void
.end method

.method public onEngineDataReceived()V
    .registers 5

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mEngineStartTime:J

    .line 64
    :cond_e
    return-void
.end method

.method public onRequestProcessingStart()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/AbstractEventLogger;->mRequestProcessingStartTime:J

    .line 54
    return-void
.end method
