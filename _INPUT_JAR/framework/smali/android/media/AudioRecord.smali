.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 9
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .registers 17
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 705
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 272
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 274
    if-nez p1, :cond_3d

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3d
    if-nez p2, :cond_47

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_55

    .line 283
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 286
    :cond_55
    iput-object p1, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 289
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_89

    .line 290
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 291
    .local v11, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 292
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fixedVolume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 294
    const-string v0, "android.media.AudioRecord"

    const-string v1, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v11    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_89
    const/4 v10, 0x0

    .line 301
    .local v10, "rate":I
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_fb

    .line 304
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v10

    .line 312
    :cond_96
    :goto_96
    const/4 v8, 0x1

    .line 313
    .local v8, "encoding":I
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a3

    .line 315
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    .line 318
    :cond_a3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-direct {p0, v0, v10, v8}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 320
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 321
    invoke-virtual {p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 323
    invoke-direct {p0, p3}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 325
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 326
    .local v7, "session":[I
    const/4 v0, 0x0

    aput p4, v7, v0

    .line 329
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v3, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioRecord;->mChannelMask:I

    iget v5, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v6, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIII[I)I

    move-result v9

    .line 332
    .local v9, "initResult":I
    if-eqz v9, :cond_105

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing native AudioRecord object."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 340
    :goto_fa
    return-void

    .line 306
    .end local v7    # "session":[I
    .end local v8    # "encoding":I
    .end local v9    # "initResult":I
    :cond_fb
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v10

    .line 307
    if-gtz v10, :cond_96

    .line 308
    const v10, 0xac44

    goto :goto_96

    .line 337
    .restart local v7    # "session":[I
    .restart local v8    # "encoding":I
    .restart local v9    # "initResult":I
    :cond_105
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_fa
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .registers 5
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 429
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 432
    .local v0, "frameSizeInBytes":I
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_18

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    .line 434
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int/lit8 v0, v1, 0x1

    .line 436
    :cond_18
    rem-int v1, p1, v0

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    if-ge p1, v1, :cond_27

    .line 437
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_27
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 441
    return-void
.end method

.method private audioParamCheck(III)V
    .registers 7
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 382
    if-ltz p1, :cond_c

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_14

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_14

    .line 385
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_14
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 391
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_1f

    const v0, 0xbb80

    if-le p2, v0, :cond_38

    .line 392
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_38
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 399
    sparse-switch p3, :sswitch_data_4c

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :sswitch_45
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 417
    :goto_48
    return-void

    .line 411
    :sswitch_49
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_48

    .line 399
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_45
        0x2 -> :sswitch_49
        0x3 -> :sswitch_49
        0x64 -> :sswitch_49
        0x65 -> :sswitch_49
        0x66 -> :sswitch_49
        0x67 -> :sswitch_49
        0x68 -> :sswitch_49
        0x69 -> :sswitch_49
    .end sparse-switch
.end method

.method private static checkAudioRecordEnabled()Z
    .registers 5

    .prologue
    .line 947
    const/4 v1, 0x1

    .line 949
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 952
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_34

    move-result v1

    .line 957
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_e
    if-nez v1, :cond_33

    .line 958
    const-string v3, "android.media.AudioRecord"

    const-string v4, "AUDIO RECORD IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_27

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_33

    .line 961
    :cond_27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 962
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 965
    :cond_33
    return v1

    .line 953
    :catch_34
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private static checkMicrophoneEnabled()Z
    .registers 5

    .prologue
    .line 916
    const/4 v1, 0x1

    .line 918
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 920
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_34

    move-result v1

    .line 926
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_e
    if-nez v1, :cond_33

    .line 928
    const-string v3, "android.media.AudioRecord"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_33

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_33

    .line 932
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 933
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 937
    :cond_33
    return v1

    .line 922
    :catch_34
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .registers 5
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 348
    sparse-switch p0, :sswitch_data_24

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :sswitch_b
    const/16 v0, 0x10

    .line 365
    .local v0, "mask":I
    :goto_d
    if-nez p1, :cond_22

    const/4 v1, 0x2

    if-eq p0, v1, :cond_15

    const/4 v1, 0x3

    if-ne p0, v1, :cond_22

    .line 368
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    .end local v0    # "mask":I
    :sswitch_1d
    const/16 v0, 0xc

    .line 357
    .restart local v0    # "mask":I
    goto :goto_d

    .line 359
    .end local v0    # "mask":I
    :sswitch_20
    move v0, p0

    .line 360
    .restart local v0    # "mask":I
    goto :goto_d

    .line 371
    :cond_22
    return v0

    .line 348
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x3 -> :sswitch_1d
        0xc -> :sswitch_1d
        0x10 -> :sswitch_b
        0x30 -> :sswitch_20
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .registers 8
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_40

    .line 586
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 610
    :cond_c
    :goto_c
    return v1

    .line 574
    :sswitch_d
    const/4 v0, 0x1

    .line 591
    :goto_e
    const/4 v4, 0x2

    if-eq p2, v4, :cond_34

    const/16 v4, 0x64

    if-eq p2, v4, :cond_34

    const/16 v4, 0x65

    if-eq p2, v4, :cond_34

    const/16 v4, 0x66

    if-eq p2, v4, :cond_34

    const/16 v4, 0x67

    if-eq p2, v4, :cond_34

    const/16 v4, 0x68

    if-eq p2, v4, :cond_34

    const/16 v4, 0x69

    if-eq p2, v4, :cond_34

    .line 598
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 599
    goto :goto_c

    .line 579
    :sswitch_30
    const/4 v0, 0x2

    .line 580
    goto :goto_e

    .line 582
    :sswitch_32
    const/4 v0, 0x6

    .line 583
    goto :goto_e

    .line 602
    :cond_34
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 603
    .local v1, "size":I
    if-nez v1, :cond_3c

    move v1, v2

    .line 604
    goto :goto_c

    .line 606
    :cond_3c
    if-ne v1, v3, :cond_c

    move v1, v3

    .line 607
    goto :goto_c

    .line 570
    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_d
        0x3 -> :sswitch_30
        0xc -> :sswitch_30
        0x10 -> :sswitch_d
        0x30 -> :sswitch_30
        0xfc -> :sswitch_32
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .registers 7
    .param p1, "starting"    # Z

    .prologue
    .line 707
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_5

    .line 717
    :goto_4
    return-void

    .line 710
    :cond_5
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 711
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 713
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_f
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_4

    .line 714
    :catch_15
    move-exception v1

    .line 715
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private isAudioRecordAllowed()Z
    .registers 3

    .prologue
    .line 624
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_check_permission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1109
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1113
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void
.end method

.method private final native native_check_permission(Ljava/lang/String;)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1048
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1049
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_b

    .line 1063
    :cond_a
    :goto_a
    return-void

    .line 1054
    :cond_b
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 1057
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_a

    .line 1058
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1060
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 465
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    .prologue
    .line 491
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 620
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .registers 2

    .prologue
    .line 483
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .prologue
    .line 507
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    .prologue
    .line 537
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    .prologue
    .line 544
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .registers 3

    .prologue
    .line 528
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_3
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v1

    return v0

    .line 530
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 519
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x3

    .line 811
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    if-eq v1, v3, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    :cond_17
    invoke-static {}, Landroid/media/AudioRecord;->checkAudioRecordEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 829
    :cond_1d
    :goto_1d
    return v0

    .line 821
    :cond_1e
    iget v1, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v1, v3, :cond_1d

    .line 825
    if-eqz p1, :cond_26

    if-gez p2, :cond_28

    .line 826
    :cond_26
    const/4 v0, -0x2

    goto :goto_1d

    .line 829
    :cond_28
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_1d
.end method

.method public read([BII)I
    .registers 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x3

    .line 735
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    if-eq v1, v3, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    :cond_17
    invoke-static {}, Landroid/media/AudioRecord;->checkAudioRecordEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 755
    :cond_1d
    :goto_1d
    return v0

    .line 745
    :cond_1e
    iget v1, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v1, v3, :cond_1d

    .line 749
    if-eqz p1, :cond_31

    if-ltz p2, :cond_31

    if-ltz p3, :cond_31

    add-int v0, p2, p3

    if-ltz v0, :cond_31

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_33

    .line 752
    :cond_31
    const/4 v0, -0x2

    goto :goto_1d

    .line 755
    :cond_33
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_1d
.end method

.method public read([SII)I
    .registers 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x3

    .line 772
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    if-eq v1, v3, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_17

    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    :cond_17
    invoke-static {}, Landroid/media/AudioRecord;->checkAudioRecordEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 792
    :cond_1d
    :goto_1d
    return v0

    .line 782
    :cond_1e
    iget v1, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v1, v3, :cond_1d

    .line 786
    if-eqz p1, :cond_31

    if-ltz p2, :cond_31

    if-ltz p3, :cond_31

    add-int v0, p2, p3

    if-ltz v0, :cond_31

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_33

    .line 789
    :cond_31
    const/4 v0, -0x2

    goto :goto_1d

    .line 792
    :cond_33
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_1d
.end method

.method public release()V
    .registers 2

    .prologue
    .line 452
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_a

    .line 456
    :goto_3
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 458
    return-void

    .line 453
    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 3
    .param p1, "markerInFrames"    # I

    .prologue
    .line 883
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_6

    .line 884
    const/4 v0, -0x3

    .line 891
    :goto_5
    return v0

    .line 887
    :cond_6
    if-gez p1, :cond_a

    .line 888
    const/4 v0, -0x2

    goto :goto_5

    .line 891
    :cond_a
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_5
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 3
    .param p1, "periodInFrames"    # I

    .prologue
    .line 905
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eqz v0, :cond_6

    if-gez p1, :cond_8

    .line 907
    :cond_6
    const/4 v0, -0x3

    .line 909
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_7
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 843
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 855
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 857
    :try_start_3
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 859
    if-eqz p1, :cond_23

    .line 860
    if-eqz p2, :cond_16

    .line 861
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 869
    :goto_14
    monitor-exit v1

    .line 871
    return-void

    .line 864
    :cond_16
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_14

    .line 869
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0

    .line 867
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_20

    goto :goto_14
.end method

.method public startRecording()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 636
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 637
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_e
    return-void

    .line 641
    :cond_f
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 643
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1f

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1f
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_24
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_31

    .line 651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 652
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 654
    :cond_31
    monitor-exit v1

    goto :goto_e

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .registers 5
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 666
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 667
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_e
    return-void

    .line 671
    :cond_f
    invoke-static {}, Landroid/media/AudioRecord;->checkMicrophoneEnabled()Z

    .line 673
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1f

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1f
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_22
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_37

    .line 681
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 682
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 684
    :cond_37
    monitor-exit v1

    goto :goto_e

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_39

    throw v0
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

    .line 693
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_e

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_e
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 700
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 701
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 702
    monitor-exit v1

    .line 703
    return-void

    .line 702
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method
