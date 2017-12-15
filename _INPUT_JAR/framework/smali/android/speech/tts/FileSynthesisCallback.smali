.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private final mCallerIdentity:Ljava/lang/Object;

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Z)V
    .registers 7
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p3, "callerIdentity"    # Ljava/lang/Object;
    .param p4, "clientIsUsingV2"    # Z

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p4}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 52
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 62
    iput-object p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    .line 63
    iput v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 64
    return-void
.end method

.method private cleanUp()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 89
    return-void
.end method

.method private closeFile()V
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 97
    return-void
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .registers 13
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I
    .param p4, "dataLength"    # I

    .prologue
    const/4 v7, 0x4

    .line 281
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v5

    .line 282
    .local v5, "sampleSizeInBytes":I
    mul-int v6, p1, v5

    mul-int v2, v6, p3

    .line 283
    .local v2, "byteRate":I
    mul-int v6, v5, p3

    int-to-short v1, v6

    .line 284
    .local v1, "blockAlign":S
    mul-int/lit8 v6, v5, 0x8

    int-to-short v0, v6

    .line 286
    .local v0, "bitsPerSample":S
    const/16 v6, 0x2c

    new-array v4, v6, [B

    .line 287
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 288
    .local v3, "header":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 290
    new-array v6, v7, [B

    fill-array-data v6, :array_64

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 291
    add-int/lit8 v6, p4, 0x2c

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 292
    new-array v6, v7, [B

    fill-array-data v6, :array_6a

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    new-array v6, v7, [B

    fill-array-data v6, :array_70

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 296
    int-to-short v6, p3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 299
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 301
    new-array v6, v7, [B

    fill-array-data v6, :array_76

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 305
    return-object v3

    .line 290
    nop

    :array_64
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 292
    :array_6a
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 293
    :array_70
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 301
    :array_76
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, -0x1

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_5
    iget v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_10

    .line 158
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v3

    .line 185
    :goto_f
    return v2

    .line 160
    :cond_10
    iget v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eqz v4, :cond_19

    .line 162
    monitor-exit v3

    goto :goto_f

    .line 174
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v2

    .line 164
    :cond_19
    :try_start_19
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v4, :cond_29

    .line 165
    const-string v4, "FileSynthesisRequest"

    const-string v5, "File not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v4, -0x5

    iput v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 167
    monitor-exit v3

    goto :goto_f

    .line 169
    :cond_29
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-nez v4, :cond_36

    .line 170
    const-string v4, "FileSynthesisRequest"

    const-string v5, "Start method was not called"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v3

    goto :goto_f

    .line 173
    :cond_36
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 174
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_16

    .line 177
    :try_start_39
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_42

    .line 178
    const/4 v2, 0x0

    goto :goto_f

    .line 179
    :catch_42
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    const-string v4, "Failed to write to output file descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_4d
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 183
    const/4 v4, -0x5

    iput v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 184
    monitor-exit v3

    goto :goto_f

    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v2
.end method

.method public done()I
    .registers 13

    .prologue
    const/4 v9, -0x2

    const/4 v6, -0x1

    .line 192
    const/4 v4, 0x0

    .line 194
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 195
    .local v5, "sampleRateInHz":I
    const/4 v0, 0x0

    .line 196
    .local v0, "audioFormat":I
    const/4 v1, 0x0

    .line 198
    .local v1, "channelCount":I
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 199
    :try_start_9
    iget-boolean v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v8, :cond_16

    .line 200
    const-string v8, "FileSynthesisRequest"

    const-string v9, "Duplicate call to done()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v7

    .line 244
    :goto_15
    return v6

    .line 205
    :cond_16
    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-ne v8, v9, :cond_23

    .line 207
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v6

    monitor-exit v7

    goto :goto_15

    .line 223
    :catchall_20
    move-exception v6

    monitor-exit v7
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v6

    .line 209
    :cond_23
    :try_start_23
    iget-object v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v8, :cond_38

    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eqz v8, :cond_38

    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eq v8, v9, :cond_38

    .line 211
    iget-object v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v9, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    invoke-interface {v8, v9}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 212
    monitor-exit v7

    goto :goto_15

    .line 214
    :cond_38
    iget-object v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v8, :cond_45

    .line 215
    const-string v8, "FileSynthesisRequest"

    const-string v9, "File not open"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v7

    goto :goto_15

    .line 218
    :cond_45
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 219
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 220
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 221
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 222
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 223
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_20

    .line 227
    const-wide/16 v8, 0x0

    :try_start_53
    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 228
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x2c

    sub-long/2addr v8, v10

    long-to-int v2, v8

    .line 229
    .local v2, "dataLength":I
    invoke-direct {p0, v5, v0, v1, v2}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 232
    iget-object v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_68} :catch_7b

    .line 233
    :try_start_68
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 234
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v7, :cond_74

    .line 235
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v7}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    .line 237
    :cond_74
    const/4 v7, 0x0

    monitor-exit v8

    move v6, v7

    goto :goto_15

    .line 238
    :catchall_78
    move-exception v7

    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v7
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7b} :catch_7b

    .line 239
    .end local v2    # "dataLength":I
    :catch_7b
    move-exception v3

    .line 240
    .local v3, "ex":Ljava/io/IOException;
    const-string v7, "FileSynthesisRequest"

    const-string v8, "Failed to write to output file descriptor"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 242
    :try_start_86
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 243
    monitor-exit v7

    goto :goto_15

    :catchall_8b
    move-exception v6

    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_8b

    throw v6
.end method

.method public error()V
    .registers 2

    .prologue
    .line 250
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    .line 251
    return-void
.end method

.method public error(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .prologue
    .line 256
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_3
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v0, :cond_9

    .line 258
    monitor-exit v1

    .line 263
    :goto_8
    return-void

    .line 260
    :cond_9
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 261
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 262
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getMaxBufferSize()I
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .registers 3

    .prologue
    .line 274
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_3
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    monitor-exit v1

    return v0

    .line 276
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public hasStarted()Z
    .registers 3

    .prologue
    .line 267
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    monitor-exit v1

    return v0

    .line 269
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public start(III)I
    .registers 10
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v2, -0x1

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 112
    :try_start_5
    iget v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_10

    .line 114
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v3

    .line 144
    :goto_f
    return v2

    .line 116
    :cond_10
    iget v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eqz v4, :cond_19

    .line 118
    monitor-exit v3

    goto :goto_f

    .line 133
    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v2

    .line 120
    :cond_19
    :try_start_19
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-eqz v4, :cond_26

    .line 121
    const-string v4, "FileSynthesisRequest"

    const-string v5, "Start called twice"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v3

    goto :goto_f

    .line 124
    :cond_26
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 125
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 126
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 127
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 129
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v4, :cond_38

    .line 130
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 132
    :cond_38
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 133
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_16

    .line 136
    const/16 v3, 0x2c

    :try_start_3d
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_46

    .line 137
    const/4 v2, 0x0

    goto :goto_f

    .line 138
    :catch_46
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    const-string v4, "Failed to write wav header to output file descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_51
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 142
    const/4 v4, -0x5

    iput v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 143
    monitor-exit v3

    goto :goto_f

    :catchall_59
    move-exception v2

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method stop()V
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 68
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_4
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v0, :cond_a

    .line 70
    monitor-exit v1

    .line 82
    :goto_9
    return-void

    .line 72
    :cond_a
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-ne v0, v2, :cond_13

    .line 73
    monitor-exit v1

    goto :goto_9

    .line 81
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 76
    :cond_13
    const/4 v0, -0x2

    :try_start_14
    iput v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 77
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 78
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v0, :cond_22

    .line 79
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 81
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_10

    goto :goto_9
.end method
