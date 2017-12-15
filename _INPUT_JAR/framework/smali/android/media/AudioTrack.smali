.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x8

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x17700

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 318
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 24
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mState:I

    .line 202
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 206
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 210
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 211
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 227
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 231
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mChannels:I

    .line 240
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 246
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 250
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 257
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 261
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 396
    if-nez p1, :cond_4d

    .line 397
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioAttributes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 399
    :cond_4d
    if-nez p2, :cond_57

    .line 400
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioFormat"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v16

    .local v16, "looper":Landroid/os/Looper;
    if-nez v16, :cond_61

    .line 406
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    .line 409
    :cond_61
    const/16 v17, 0x0

    .line 410
    .local v17, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_df

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v17

    .line 419
    :cond_6f
    :goto_6f
    const/16 v13, 0xc

    .line 420
    .local v13, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7d

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v13

    .line 424
    :cond_7d
    const/4 v14, 0x1

    .line 425
    .local v14, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8a

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v14

    .line 428
    :cond_8a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v13, v14, v2}, Landroid/media/AudioTrack;->audioParamCheck(IIII)V

    .line 429
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 433
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 434
    const-string v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 435
    .local v12, "b":Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 437
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 439
    if-gez p5, :cond_e9

    .line 440
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid audio session ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    .end local v12    # "b":Landroid/os/IBinder;
    .end local v13    # "channelMask":I
    .end local v14    # "encoding":I
    :cond_df
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v17

    .line 415
    if-gtz v17, :cond_6f

    .line 416
    const v17, 0xac44

    goto :goto_6f

    .line 443
    .restart local v12    # "b":Landroid/os/IBinder;
    .restart local v13    # "channelMask":I
    .restart local v14    # "encoding":I
    :cond_e9
    const/4 v3, 0x1

    new-array v11, v3, [I

    .line 444
    .local v11, "session":[I
    const/4 v3, 0x0

    aput p5, v11, v3

    .line 446
    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/AudioTrack;->mSampleRate:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/AudioTrack;->mChannels:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[I)I

    move-result v15

    .line 449
    .local v15, "initResult":I
    if-eqz v15, :cond_133

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when initializing AudioTrack."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 461
    :goto_132
    return-void

    .line 454
    :cond_133
    const/4 v3, 0x0

    aget v3, v11, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 456
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v3, :cond_146

    .line 457
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_132

    .line 459
    :cond_146
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_132
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I

    .prologue
    .line 593
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 594
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 599
    .local v0, "frameSizeInBytes":I
    :goto_12
    rem-int v1, p1, v0

    if-nez v1, :cond_19

    const/4 v1, 0x1

    if-ge p1, v1, :cond_23

    .line 600
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    .end local v0    # "frameSizeInBytes":I
    :cond_21
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_12

    .line 603
    :cond_23
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 604
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 605
    return-void
.end method

.method private audioParamCheck(IIII)V
    .registers 8
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 487
    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_a

    const v0, 0x17700

    if-le p1, v0, :cond_23

    .line 488
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_23
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 495
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 497
    sparse-switch p2, :sswitch_data_7a

    .line 510
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_56

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :sswitch_38
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 502
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 520
    :goto_3d
    if-ne p3, v1, :cond_40

    .line 521
    const/4 p3, 0x2

    .line 524
    :cond_40
    invoke-static {p3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported audio encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :sswitch_4e
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 507
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_3d

    .line 514
    :cond_56
    iput p2, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 515
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_3d

    .line 527
    :cond_5f
    iput p3, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 531
    if-eq p4, v1, :cond_65

    if-nez p4, :cond_6f

    :cond_65
    if-eq p4, v1, :cond_77

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_77

    .line 533
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_77
    iput p4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 536
    return-void

    .line 497
    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_38
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_38
        0xc -> :sswitch_4e
    .end sparse-switch
.end method

.method private static clampGainOrLevel(F)F
    .registers 2
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 944
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 947
    :cond_c
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_13

    .line 948
    const/4 p0, 0x0

    .line 952
    :cond_12
    :goto_12
    return p0

    .line 949
    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_12

    .line 950
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_12
.end method

.method public static getMaxVolume()F
    .registers 1

    .prologue
    .line 650
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 7
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v1, -0x2

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_56

    .line 823
    and-int/lit16 v2, p1, 0x1cfc

    if-eq v2, p1, :cond_1e

    .line 825
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 849
    :cond_e
    :goto_e
    return v1

    .line 816
    :sswitch_f
    const/4 v0, 0x1

    .line 832
    :goto_10
    invoke-static {p2}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 833
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 820
    :sswitch_1c
    const/4 v0, 0x2

    .line 821
    goto :goto_10

    .line 828
    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_10

    .line 838
    :cond_23
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_2c

    const v2, 0x17700

    if-le p0, v2, :cond_49

    .line 839
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 843
    :cond_49
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 844
    .local v1, "size":I
    if-gtz v1, :cond_e

    .line 845
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 846
    const/4 v1, -0x1

    goto :goto_e

    .line 813
    :sswitch_data_56
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_1c
        0x4 -> :sswitch_f
        0xc -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .registers 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2
    .param p0, "streamType"    # I

    .prologue
    .line 788
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .registers 9
    .param p0, "channelConfig"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 545
    and-int/lit16 v5, p0, 0x1cfc

    if-eq v5, p0, :cond_d

    .line 546
    const-string v5, "Channel configuration features unsupported channels"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 579
    :goto_c
    return v4

    .line 549
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 550
    .local v1, "channelCount":I
    if-le v1, v7, :cond_34

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel configuration contains too many channels "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 558
    :cond_34
    const/16 v2, 0xc

    .line 560
    .local v2, "frontPair":I
    and-int/lit8 v5, p0, 0xc

    const/16 v6, 0xc

    if-eq v5, v6, :cond_42

    .line 561
    const-string v5, "Front channels must be present in multichannel configurations"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 564
    :cond_42
    const/16 v0, 0xc0

    .line 566
    .local v0, "backPair":I
    and-int/lit16 v5, p0, 0xc0

    if-eqz v5, :cond_54

    .line 567
    and-int/lit16 v5, p0, 0xc0

    const/16 v6, 0xc0

    if-eq v5, v6, :cond_54

    .line 568
    const-string v5, "Rear channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 572
    :cond_54
    const/16 v3, 0x1800

    .line 574
    .local v3, "sidePair":I
    and-int/lit16 v5, p0, 0x1800

    if-eqz v5, :cond_66

    and-int/lit16 v5, p0, 0x1800

    const/16 v6, 0x1800

    if-eq v5, v6, :cond_66

    .line 576
    const-string v5, "Side channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_c

    .line 579
    :cond_66
    const/4 v4, 0x1

    goto :goto_c
.end method

.method private isRestricted()Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1154
    :try_start_1
    iget v4, p0, Landroid/media/AudioTrack;->mStreamType:I

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v2

    .line 1155
    .local v2, "usage":I
    iget-object v4, p0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_1b

    move-result v1

    .line 1157
    .local v1, "mode":I
    if-eqz v1, :cond_1a

    const/4 v3, 0x1

    .line 1159
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_1a
    :goto_1a
    return v3

    .line 1158
    :catch_1b
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1704
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1708
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 9
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1610
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 1611
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_b

    .line 1624
    :cond_a
    :goto_a
    return-void

    .line 1615
    :cond_b
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 1616
    .local v0, "delegate":Landroid/media/AudioTrack$NativeEventHandlerDelegate;
    if-eqz v0, :cond_a

    .line 1617
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1618
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 1619
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1620
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .registers 3
    .param p1, "effectId"    # I

    .prologue
    .line 1487
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 1488
    const/4 v0, -0x3

    .line 1490
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_5
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 625
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 626
    return-void
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 1216
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1218
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1221
    :cond_8
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    .prologue
    .line 672
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 859
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .prologue
    .line 692
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getLatency()I
    .registers 2

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .prologue
    .line 749
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .registers 3

    .prologue
    .line 721
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_3
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 723
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    .prologue
    .line 769
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .registers 2

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .prologue
    .line 757
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 657
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 711
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 683
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 8
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 896
    if-nez p1, :cond_a

    .line 897
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 900
    :cond_a
    const/4 v4, 0x2

    new-array v0, v4, [J

    .line 901
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 902
    .local v1, "ret":I
    if-eqz v1, :cond_14

    .line 907
    :goto_13
    return v2

    .line 905
    :cond_14
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 906
    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    .line 907
    goto :goto_13
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1193
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 1194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1201
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1202
    monitor-exit v1

    .line 1203
    return-void

    .line 1202
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1140
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_e
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1146
    :cond_18
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_1b
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1148
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1149
    monitor-exit v1

    .line 1150
    return-void

    .line 1149
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 615
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_a

    .line 619
    :goto_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 621
    return-void

    .line 616
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public reloadStaticData()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1459
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_b

    .line 1460
    :cond_9
    const/4 v0, -0x3

    .line 1462
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_a
.end method

.method public setAuxEffectSendLevel(F)I
    .registers 5
    .param p1, "level"    # F

    .prologue
    const/4 v1, 0x0

    .line 1512
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1520
    :cond_7
    :goto_7
    return v1

    .line 1515
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_e

    .line 1516
    const/4 v1, -0x3

    goto :goto_7

    .line 1518
    :cond_e
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 1519
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 1520
    .local v0, "err":I
    if-eqz v0, :cond_7

    const/4 v1, -0x1

    goto :goto_7
.end method

.method public setLoopPoints(III)I
    .registers 6
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 1103
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1105
    :cond_10
    const/4 v0, -0x3

    .line 1113
    :goto_11
    return v0

    .line 1107
    :cond_12
    if-nez p3, :cond_19

    .line 1113
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_11

    .line 1109
    :cond_19
    if-ltz p1, :cond_25

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_25

    if-ge p1, p2, :cond_25

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_14

    .line 1111
    :cond_25
    const/4 v0, -0x2

    goto :goto_11
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1042
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 1043
    const/4 v0, -0x3

    .line 1045
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_5
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 4
    .param p1, "positionInFrames"    # I

    .prologue
    const/4 v1, 0x1

    .line 1073
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1075
    :cond_10
    const/4 v0, -0x3

    .line 1080
    :goto_11
    return v0

    .line 1077
    :cond_12
    if-ltz p1, :cond_18

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1a

    .line 1078
    :cond_18
    const/4 v0, -0x2

    goto :goto_11

    .line 1080
    :cond_1a
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_11
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 923
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 935
    if-eqz p1, :cond_a

    .line 936
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 940
    :goto_9
    return-void

    .line 938
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    goto :goto_9
.end method

.method public setPlaybackRate(I)I
    .registers 4
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 1022
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1023
    const/4 v0, -0x3

    .line 1028
    :goto_6
    return v0

    .line 1025
    :cond_7
    if-gtz p1, :cond_b

    .line 1026
    const/4 v0, -0x2

    goto :goto_6

    .line 1028
    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_6
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1055
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    .line 1056
    const/4 v0, -0x3

    .line 1058
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_5
.end method

.method protected setState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1125
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1126
    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 5
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F

    .prologue
    const/4 v0, 0x0

    .line 972
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 984
    :goto_7
    return v0

    .line 975
    :cond_8
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_e

    .line 976
    const/4 v0, -0x3

    goto :goto_7

    .line 979
    :cond_e
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 980
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 982
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    goto :goto_7
.end method

.method public setVolume(F)I
    .registers 3
    .param p1, "gain"    # F

    .prologue
    .line 1003
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1173
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_e

    .line 1174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_e
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1179
    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1180
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1181
    monitor-exit v1

    .line 1182
    return-void

    .line 1181
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .registers 12
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 1410
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_10

    .line 1411
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v6, -0x3

    .line 1448
    :cond_f
    :goto_f
    return v6

    .line 1415
    :cond_10
    if-eqz p3, :cond_1c

    if-eq p3, v7, :cond_1c

    .line 1416
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1420
    :cond_1c
    if-eqz p1, :cond_26

    if-ltz p2, :cond_26

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p2, v0, :cond_45

    .line 1421
    :cond_26
    const-string v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1425
    :cond_45
    const/4 v6, 0x0

    .line 1426
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_55

    move v5, v7

    :cond_55
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    .line 1437
    :goto_5c
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_69

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    if-lez v6, :cond_69

    .line 1441
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 1444
    :cond_69
    if-lez v6, :cond_f

    .line 1445
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_f

    .line 1431
    :cond_74
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_86

    move v5, v7

    :cond_86
    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_5c
.end method

.method public write([BII)I
    .registers 11
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    const/4 v5, 0x1

    .line 1245
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 1246
    :cond_a
    const/4 v6, -0x3

    .line 1265
    :cond_b
    :goto_b
    return v6

    .line 1249
    :cond_c
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    add-int v0, p2, p3

    if-ltz v0, :cond_1b

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 1252
    :cond_1b
    const/4 v6, -0x2

    goto :goto_b

    .line 1255
    :cond_1d
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .line 1258
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_b

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    if-lez v6, :cond_b

    .line 1262
    iput v5, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_b
.end method

.method public write([FIII)I
    .registers 13
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v6, -0x3

    const/4 v7, 0x1

    .line 1349
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_f

    .line 1350
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_e
    :goto_e
    return v6

    .line 1354
    :cond_f
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    .line 1355
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1359
    :cond_1c
    if-eqz p4, :cond_29

    if-eq p4, v7, :cond_29

    .line 1360
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 1361
    goto :goto_e

    .line 1364
    :cond_29
    if-eqz p1, :cond_38

    if-ltz p2, :cond_38

    if-ltz p3, :cond_38

    add-int v1, p2, p3

    if-ltz v1, :cond_38

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_41

    .line 1367
    :cond_38
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 1368
    goto :goto_e

    .line 1371
    :cond_41
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_5c

    move v5, v7

    :goto_46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .line 1374
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    if-lez v6, :cond_e

    .line 1378
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_e

    .line 1371
    .end local v6    # "ret":I
    :cond_5c
    const/4 v5, 0x0

    goto :goto_46
.end method

.method public write([SII)I
    .registers 7
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1289
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 1290
    :cond_9
    const/4 v0, -0x3

    .line 1308
    :cond_a
    :goto_a
    return v0

    .line 1293
    :cond_b
    if-eqz p1, :cond_1a

    if-ltz p2, :cond_1a

    if-ltz p3, :cond_1a

    add-int v1, p2, p3

    if-ltz v1, :cond_1a

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1c

    .line 1296
    :cond_1a
    const/4 v0, -0x2

    goto :goto_a

    .line 1299
    :cond_1c
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    .line 1301
    .local v0, "ret":I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_a

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    if-lez v0, :cond_a

    .line 1305
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_a
.end method
