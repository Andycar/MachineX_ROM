.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$NativeEventHandler;,
        Landroid/media/audiofx/Visualizer$OnServerDiedListener;,
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;,
        Landroid/media/audiofx/Visualizer$MeasurementPeakRms;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final MEASUREMENT_MODE_NONE:I = 0x0

.field public static final MEASUREMENT_MODE_PEAK_RMS:I = 0x1

.field private static final NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final SCALING_MODE_NORMALIZED:I = 0x0

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mId:I

.field private mJniData:J

.field private final mListenerLock:Ljava/lang/Object;

.field private mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

.field private mNativeVisualizer:J

.field private mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 162
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    .line 171
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    .line 175
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 179
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 183
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 204
    new-array v0, v4, [I

    .line 206
    .local v0, "id":[I
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 207
    const/4 v2, 0x0

    :try_start_22
    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 209
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, v0}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[I)I

    move-result v1

    .line 210
    .local v1, "result":I
    if-eqz v1, :cond_77

    const/4 v2, -0x2

    if-eq v1, v2, :cond_77

    .line 211
    const-string v2, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when initializing Visualizer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    packed-switch v1, :pswitch_data_8c

    .line 216
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot initialize Visualizer engine, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .end local v1    # "result":I
    :catchall_6c
    move-exception v2

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_22 .. :try_end_6e} :catchall_6c

    throw v2

    .line 214
    .restart local v1    # "result":I
    :pswitch_6f
    :try_start_6f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Effect library not loaded"

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_77
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/audiofx/Visualizer;->mId:I

    .line 221
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 222
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 226
    :goto_85
    monitor-exit v3

    .line 227
    return-void

    .line 224
    :cond_87
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_6c

    goto :goto_85

    .line 212
    nop

    :pswitch_data_8c
    .packed-switch -0x5
        :pswitch_6f
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Visualizer;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Visualizer;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Visualizer;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    return-object v0
.end method

.method public static native getCaptureSizeRange()[I
.end method

.method public static native getMaxCaptureRate()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getCaptureSize()I
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getFft([B)I
.end method

.method private final native native_getMeasurementMode()I
.end method

.method private final native native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
.end method

.method private final native native_getSamplingRate()I
.end method

.method private final native native_getScalingMode()I
.end method

.method private final native native_getWaveForm([B)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setCaptureSize(I)I
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setMeasurementMode(I)I
.end method

.method private final native native_setPeriodicCapture(IZZ)I
.end method

.method private final native native_setScalingMode(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;I[I)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 757
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Visualizer;

    .line 758
    .local v1, "visu":Landroid/media/audiofx/Visualizer;
    if-nez v1, :cond_b

    .line 767
    :cond_a
    :goto_a
    return-void

    .line 762
    :cond_b
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-eqz v2, :cond_a

    .line 763
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 764
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    .line 243
    return-void
.end method

.method public getCaptureSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_25

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 329
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I

    move-result v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    return v0
.end method

.method public getEnabled()Z
    .registers 5

    .prologue
    .line 276
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_25

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 280
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    return v0
.end method

.method public getFft([B)I
    .registers 6
    .param p1, "fft"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFft() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 490
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I

    move-result v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    return v0
.end method

.method public getMeasurementMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_25

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 402
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getMeasurementMode()I

    move-result v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    return v0
.end method

.method public getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    .registers 6
    .param p1, "measurement"    # Landroid/media/audiofx/Visualizer$MeasurementPeakRms;

    .prologue
    .line 521
    if-nez p1, :cond_b

    .line 522
    const-string v0, "Visualizer-JAVA"

    const-string v1, "Cannot store measurements in a null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v0, -0x4

    .line 530
    :goto_a
    return v0

    .line 525
    :cond_b
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_e
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeasurementPeakRms() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_2e

    throw v0

    .line 530
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I

    move-result v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2e

    goto :goto_a
.end method

.method public getSamplingRate()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_25

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamplingRate() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 416
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I

    move-result v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    return v0
.end method

.method public getScalingMode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_25

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0

    .line 365
    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getScalingMode()I

    move-result v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    return v0
.end method

.method public getWaveForm([B)I
    .registers 6
    .param p1, "waveform"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaveForm() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 437
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I

    move-result v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 234
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setCaptureSize(I)I
    .registers 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0

    .line 315
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I

    move-result v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    return v0
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .registers 9
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .param p2, "rate"    # I
    .param p3, "waveform"    # Z
    .param p4, "fft"    # Z

    .prologue
    .line 582
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 583
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 584
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    .line 585
    if-nez p1, :cond_a

    .line 587
    const/4 p3, 0x0

    .line 588
    const/4 p4, 0x0

    .line 590
    :cond_a
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    move-result v1

    .line 591
    .local v1, "status":I
    if-nez v1, :cond_23

    .line 592
    if-eqz p1, :cond_23

    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-nez v2, :cond_23

    .line 594
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_27

    .line 595
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 604
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_23
    :goto_23
    return v1

    .line 584
    .end local v1    # "status":I
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 596
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v1    # "status":I
    :cond_27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 597
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    goto :goto_23

    .line 599
    :cond_35
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 600
    const/4 v1, -0x3

    goto :goto_23
.end method

.method public setEnabled(Z)I
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 254
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 255
    :try_start_5
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v4, :cond_28

    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled() called in wrong state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :catchall_25
    move-exception v1

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1

    .line 258
    :cond_28
    const/4 v0, 0x0

    .line 259
    .local v0, "status":I
    if-eqz p1, :cond_2f

    :try_start_2b
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-eq v4, v2, :cond_35

    :cond_2f
    if-nez p1, :cond_3f

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-ne v4, v1, :cond_3f

    .line 261
    :cond_35
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    move-result v0

    .line 262
    if-nez v0, :cond_3f

    .line 263
    if-eqz p1, :cond_41

    :goto_3d
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 266
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_25

    return v0

    :cond_41
    move v1, v2

    .line 263
    goto :goto_3d
.end method

.method public setMeasurementMode(I)I
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_26

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 384
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setMeasurementMode(I)I

    move-result v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    return v0
.end method

.method public setScalingMode(I)I
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_3
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_26

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 348
    :cond_26
    :try_start_26
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setScalingMode(I)I

    move-result v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    return v0
.end method

.method public setServerDiedListener(Landroid/media/audiofx/Visualizer$OnServerDiedListener;)I
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .prologue
    .line 638
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 640
    monitor-exit v1

    .line 641
    const/4 v0, 0x0

    return v0

    .line 640
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
