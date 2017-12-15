.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private mAudioBufferSize:I

.field private final mAudioFormat:I

.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mSampleRateInHz:I

.field private mSessionId:I

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .registers 8
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 82
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 83
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 84
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 86
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 87
    iput-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 88
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 89
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 92
    iput-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 93
    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .registers 16
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    const-wide/16 v4, 0x9c4

    .line 275
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v10, v2, v3

    .line 277
    .local v10, "lengthInFrames":I
    const/4 v11, -0x1

    .line 278
    .local v11, "previousPosition":I
    const/4 v8, 0x0

    .line 279
    .local v8, "currentPosition":I
    const-wide/16 v6, 0x0

    .line 282
    .local v6, "blockedTimeMs":J
    :goto_c
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v8

    if-ge v8, v10, :cond_3b

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    iget-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v2, :cond_3b

    .line 284
    sub-int v2, v10, v8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v0, v2

    .line 286
    .local v0, "estimatedTimeMs":J
    const-wide/16 v2, 0x14

    invoke-static/range {v0 .. v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v12

    .line 291
    .local v12, "sleepTimeMs":J
    if-ne v8, v11, :cond_3c

    .line 294
    add-long/2addr v6, v12

    .line 296
    cmp-long v2, v6, v4

    if-lez v2, :cond_3e

    .line 297
    const-string v2, "TTS.BlockingAudioTrack"

    const-string v3, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0    # "estimatedTimeMs":J
    .end local v12    # "sleepTimeMs":J
    :cond_3b
    :goto_3b
    return-void

    .line 302
    .restart local v0    # "estimatedTimeMs":J
    .restart local v12    # "sleepTimeMs":J
    :cond_3c
    const-wide/16 v6, 0x0

    .line 304
    :cond_3e
    move v11, v8

    .line 312
    :try_start_3f
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_c

    .line 313
    :catch_43
    move-exception v9

    .line 314
    .local v9, "ie":Ljava/lang/InterruptedException;
    goto :goto_3b
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 239
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_5

    .line 259
    :goto_4
    return-void

    .line 243
    :cond_5
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_d

    .line 255
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_4

    .line 257
    :cond_d
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    goto :goto_4
.end method

.method private blockUntilEstimatedCompletion()V
    .registers 6

    .prologue
    .line 262
    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v2, v3, v4

    .line 263
    .local v2, "lengthInFrames":I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    .line 268
    .local v0, "estimatedTimeMs":J
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 272
    :goto_f
    return-void

    .line 269
    :catch_10
    move-exception v3

    goto :goto_f
.end method

.method private static final clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 341
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1    # "min":F
    :goto_4
    return p1

    .restart local p1    # "min":F
    :cond_5
    cmpg-float v0, p0, p2

    if-gez v0, :cond_b

    move p1, p0

    goto :goto_4

    :cond_b
    move p1, p2

    goto :goto_4
.end method

.method private static final clip(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 337
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .end local p2    # "min":J
    :goto_4
    return-wide p2

    .restart local p2    # "min":J
    :cond_5
    cmp-long v0, p0, p4

    if-gez v0, :cond_b

    move-wide p2, p0

    goto :goto_4

    :cond_b
    move-wide p2, p4

    goto :goto_4
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 212
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v1}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v6

    .line 214
    .local v6, "channelConfig":I
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v1, v6, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 216
    .local v7, "minBufferSizeInBytes":I
    const/16 v1, 0x2000

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 218
    .local v3, "bufferSizeInBytes":I
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 222
    .local v2, "audioFormat":Landroid/media/AudioFormat;
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 226
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v4, :cond_4d

    .line 227
    const-string v1, "TTS.BlockingAudioTrack"

    const-string v4, "Unable to create audio track."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 229
    const/4 v0, 0x0

    .line 235
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :goto_4c
    return-object v0

    .line 232
    .restart local v0    # "audioTrack":Landroid/media/AudioTrack;
    :cond_4d
    iput v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 234
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v0, v1, v4}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    goto :goto_4c
.end method

.method static getChannelConfig(I)I
    .registers 2
    .param p0, "channelCount"    # I

    .prologue
    .line 176
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 177
    const/4 v0, 0x4

    .line 182
    :goto_4
    return v0

    .line 178
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 179
    const/16 v0, 0xc

    goto :goto_4

    .line 182
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .registers 10
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 320
    invoke-static {p1, v6, v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v1

    .line 321
    .local v1, "vol":F
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {p2, v4, v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v0

    .line 323
    .local v0, "panning":F
    move v2, v1

    .line 324
    .local v2, "volLeft":F
    move v3, v1

    .line 325
    .local v3, "volRight":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_24

    .line 326
    sub-float v4, v5, v0

    mul-float/2addr v2, v4

    .line 331
    :cond_16
    :goto_16
    invoke-virtual {p0, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v4

    if-eqz v4, :cond_23

    .line 332
    const-string v4, "TTS.BlockingAudioTrack"

    const-string v5, "Failed to set volume"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_23
    return-void

    .line 327
    :cond_24
    cmpg-float v4, v0, v6

    if-gez v4, :cond_16

    .line 328
    add-float v4, v5, v0

    mul-float/2addr v3, v4

    goto :goto_16
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .registers 6
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "bytes"    # [B

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 195
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 198
    :cond_a
    const/4 v0, 0x0

    .line 199
    .local v0, "count":I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_15

    .line 202
    array-length v2, p1

    invoke-virtual {p0, p1, v0, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 203
    .local v1, "written":I
    if-gtz v1, :cond_16

    .line 208
    .end local v1    # "written":I
    :cond_15
    return v0

    .line 206
    .restart local v1    # "written":I
    :cond_16
    add-int/2addr v0, v1

    .line 207
    goto :goto_b
.end method


# virtual methods
.method getAudioLengthMs(I)J
    .registers 7
    .param p1, "numBytes"    # I

    .prologue
    .line 186
    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v2, p1, v3

    .line 187
    .local v2, "unconsumedFrames":I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    .line 189
    .local v0, "estimatedTimeMs":J
    return-wide v0
.end method

.method public init()Z
    .registers 4

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 97
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_7
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 99
    monitor-exit v2

    .line 101
    if-nez v0, :cond_11

    .line 102
    const/4 v1, 0x0

    .line 104
    :goto_d
    return v1

    .line 99
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 104
    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 113
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public waitAndRelease()V
    .registers 4

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_4
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 136
    monitor-exit v2

    .line 137
    if-nez v0, :cond_d

    .line 172
    :goto_9
    return-void

    .line 136
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1

    .line 148
    :cond_d
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v1, v2, :cond_1d

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_1d

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 155
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 159
    :cond_1d
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_26

    .line 161
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 168
    :cond_26
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    const/4 v1, 0x0

    :try_start_2a
    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 170
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 171
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    goto :goto_9

    .line 170
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public write([B)I
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "track":Landroid/media/AudioTrack;
    iget-object v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_4
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 121
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_f

    .line 123
    if-eqz v1, :cond_d

    iget-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v2, :cond_12

    .line 124
    :cond_d
    const/4 v0, -0x1

    .line 129
    :goto_e
    return v0

    .line 121
    :catchall_f
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v2

    .line 126
    :cond_12
    invoke-static {v1, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result v0

    .line 128
    .local v0, "bytesWritten":I
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    goto :goto_e
.end method
