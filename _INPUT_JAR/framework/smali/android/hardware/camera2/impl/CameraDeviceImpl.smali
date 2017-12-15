.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    }
.end annotation


# static fields
.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private volatile mClosing:Z

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mFrameNumberRequestPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

.field private mRepeatingRequestId:I

.field private final mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/16 v8, 0x17

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 219
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    .line 63
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 64
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    .line 70
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Z

    .line 71
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 72
    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 75
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 78
    const/4 v3, -0x1

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    .line 81
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberRequestPairs:Ljava/util/List;

    .line 98
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    .line 101
    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    .line 106
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    .line 122
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    .line 137
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    .line 152
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    .line 167
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    .line 187
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    .line 202
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    .line 220
    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    if-eqz p3, :cond_7c

    if-nez p4, :cond_84

    .line 221
    :cond_7c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null argument given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_84
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 225
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    .line 226
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 228
    const/16 v0, 0x17

    .line 229
    .local v0, "MAX_TAG_LEN":I
    const-string v3, "CameraDevice-JV-%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_a4

    .line 231
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_a4
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    .line 236
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 238
    .local v1, "partialCount":Ljava/lang/Integer;
    if-nez v1, :cond_be

    .line 240
    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    .line 244
    :goto_bd
    return-void

    .line 242
    :cond_be
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_bd
.end method

.method static synthetic access$000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return v0
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static synthetic access$1600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return v0
.end method

.method static synthetic access$902(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return p1
.end method

.method private checkAndFireSequenceComplete()V
    .registers 15

    .prologue
    .line 1074
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v0

    .line 1075
    .local v0, "completedFrameNumber":J
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberRequestPairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1076
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1077
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 1078
    .local v2, "frameNumberRequestPair":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-gtz v8, :cond_c

    .line 1081
    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1083
    .local v6, "requestId":I
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1084
    :try_start_33
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v8, :cond_40

    .line 1085
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v10, "Camera closed while checking sequences"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    monitor-exit v9

    .line 1135
    .end local v2    # "frameNumberRequestPair":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6    # "requestId":I
    :cond_3f
    return-void

    .line 1089
    .restart local v2    # "frameNumberRequestPair":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v6    # "requestId":I
    :cond_40
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 1090
    .local v4, "index":I
    if-ltz v4, :cond_94

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object v3, v8

    .line 1092
    .local v3, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_51
    if-eqz v3, :cond_80

    .line 1093
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1094
    iget-boolean v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v8, :cond_80

    .line 1095
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "remove holder for requestId %d, because lastFrame %d is <= %d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_80
    monitor-exit v9
    :try_end_81
    .catchall {:try_start_33 .. :try_end_81} :catchall_96

    .line 1103
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1106
    if-eqz v3, :cond_c

    .line 1107
    new-instance v7, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    invoke-direct {v7, p0, v6, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILjava/util/AbstractMap$SimpleEntry;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    .line 1130
    .local v7, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c

    .line 1090
    .end local v3    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v7    # "resultDispatch":Ljava/lang/Runnable;
    :cond_94
    const/4 v3, 0x0

    goto :goto_51

    .line 1102
    .end local v4    # "index":I
    :catchall_96
    move-exception v8

    :try_start_97
    monitor-exit v9
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v8
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .registers 14
    .param p1, "requestId"    # I
    .param p2, "lastFrameNumber"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 531
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_72

    .line 533
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 534
    .local v0, "index":I
    if-ltz v0, :cond_5c

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object v6, v2

    .line 535
    .local v6, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_19
    if-eqz v6, :cond_3f

    .line 536
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 537
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_3f

    .line 538
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove holder for requestId %d, because lastFrame is %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3f
    if-eqz v6, :cond_5e

    .line 546
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v2, :cond_4c

    .line 547
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "immediately trigger onCaptureSequenceAborted because request did not reach HAL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_4c
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJLandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    .line 570
    .local v1, "resultDispatch":Ljava/lang/Runnable;
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    .end local v0    # "index":I
    .end local v1    # "resultDispatch":Ljava/lang/Runnable;
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :goto_5b
    return-void

    .line 534
    .restart local v0    # "index":I
    :cond_5c
    const/4 v6, 0x0

    goto :goto_19

    .line 572
    .restart local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_5e
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "did not register callback to request %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 577
    .end local v0    # "index":I
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :cond_72
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberRequestPairs:Ljava/util/List;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    goto :goto_5b
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1453
    if-nez p0, :cond_15

    .line 1454
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1455
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_10

    .line 1456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    :cond_10
    new-instance p0, Landroid/os/Handler;

    .end local p0    # "handler":Landroid/os/Handler;
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1461
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p0    # "handler":Landroid/os/Handler;
    :cond_15
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .registers 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .prologue
    .line 1470
    .local p1, "callback":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_6

    .line 1471
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    .line 1473
    .end local p0    # "handler":Landroid/os/Handler;
    :cond_6
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_d

    .line 1478
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "The camera device has encountered a serious error"

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1481
    :cond_d
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v0, :cond_19

    .line 1482
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_19
    return-void
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 2

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 1488
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Z

    return v0
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .registers 23
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    .line 594
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CaptureRequest;

    .line 595
    .local v10, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 596
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Each request must have at least one Surface target"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 600
    :cond_2a
    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    .line 601
    .local v12, "surface":Landroid/view/Surface;
    if-nez v12, :cond_32

    .line 602
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Null Surface targets are not allowed"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 607
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v12    # "surface":Landroid/view/Surface;
    :cond_48
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v14

    .line 608
    :try_start_4d
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 611
    if-eqz p4, :cond_55

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    .line 615
    :cond_55
    new-instance v7, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v7}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_d8

    .line 617
    .local v7, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v13, v0, v1, v7}, Landroid/hardware/camera2/ICameraDeviceUser;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v11

    .line 619
    .local v11, "requestId":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v13, :cond_8a

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "last frame number "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5a .. :try_end_8a} :catch_d2
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_8a} :catch_db
    .catchall {:try_start_5a .. :try_end_8a} :catchall_d8

    .line 629
    :cond_8a
    if-eqz p2, :cond_df

    .line 630
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    new-instance v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;Z)V

    invoke-virtual {v13, v11, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    :cond_a0
    :goto_a0
    invoke-virtual {v7}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v8

    .line 640
    .local v8, "lastFrameNumber":J
    if-eqz p4, :cond_106

    .line 641
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v15, -0x1

    if-eq v13, v15, :cond_b6

    .line 642
    move-object/from16 v0, p0

    iget v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 644
    :cond_b6
    move-object/from16 v0, p0

    iput v11, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 650
    :goto_ba
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v13, :cond_cb

    .line 651
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v13, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    :cond_cb
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    .line 655
    monitor-exit v14

    .end local v8    # "lastFrameNumber":J
    .end local v11    # "requestId":I
    :goto_d1
    return v11

    .line 622
    :catch_d2
    move-exception v4

    .line 623
    .local v4, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v4}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v13

    throw v13

    .line 656
    .end local v4    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v7    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catchall_d8
    move-exception v13

    monitor-exit v14
    :try_end_da
    .catchall {:try_start_8c .. :try_end_da} :catchall_d8

    throw v13

    .line 624
    .restart local v7    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catch_db
    move-exception v4

    .line 626
    .local v4, "e":Landroid/os/RemoteException;
    const/4 v11, -0x1

    :try_start_dd
    monitor-exit v14

    goto :goto_d1

    .line 633
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v11    # "requestId":I
    :cond_df
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v13, :cond_a0

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Listen for request "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 646
    .restart local v8    # "lastFrameNumber":J
    :cond_106
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberRequestPairs:Ljava/util/List;

    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catchall {:try_start_dd .. :try_end_11a} :catchall_d8

    goto :goto_ba
.end method

.method private waitUntilIdle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 708
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 710
    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    .line 711
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Active repeating request ongoing"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1

    .line 714
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->waitUntilIdle()I
    :try_end_1b
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_16 .. :try_end_1b} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_23
    .catchall {:try_start_16 .. :try_end_1b} :catchall_13

    .line 721
    :try_start_1b
    monitor-exit v2

    .line 722
    :goto_1c
    return-void

    .line 715
    :catch_1d
    move-exception v0

    .line 716
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v1

    throw v1

    .line 717
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_23
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_13

    goto :goto_1c
.end method


# virtual methods
.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .registers 7
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 498
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 499
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "calling capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 509
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 6

    .prologue
    .line 755
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_c

    .line 758
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceUser;->disconnect()V
    :try_end_c
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_c} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_33
    .catchall {:try_start_3 .. :try_end_c} :catchall_30

    .line 769
    :cond_c
    :goto_c
    :try_start_c
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    if-nez v1, :cond_14

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v1, :cond_1b

    .line 770
    :cond_14
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    :cond_1b
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 774
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 775
    monitor-exit v2

    .line 776
    return-void

    .line 760
    :catch_23
    move-exception v0

    .line 761
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Exception while closing: "

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 775
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v1

    .line 762
    :catch_33
    move-exception v1

    goto :goto_c
.end method

.method public configureOutputs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureOutputsChecked(Ljava/util/List;)Z

    .line 318
    return-void
.end method

.method public configureOutputsChecked(Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const/4 v8, 0x0

    .line 338
    if-nez p1, :cond_8

    .line 339
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .restart local p1    # "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :cond_8
    const/4 v7, 0x0

    .line 343
    .local v7, "success":Z
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 344
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 346
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v0, "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v1, "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v3, v10, :cond_47

    .line 351
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 352
    .local v6, "streamId":I
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 354
    .local v5, "s":Landroid/view/Surface;
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 357
    :cond_40
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 411
    .end local v0    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    .end local v1    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v5    # "s":Landroid/view/Surface;
    .end local v6    # "streamId":I
    :catchall_44
    move-exception v8

    monitor-exit v9
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_44

    throw v8

    .line 361
    .restart local v0    # "addSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/Surface;>;"
    .restart local v1    # "deleteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "i":I
    :cond_47
    :try_start_47
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    .line 365
    :try_start_51
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    .line 367
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v10}, Landroid/hardware/camera2/ICameraDeviceUser;->beginConfigure()I

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 370
    .local v6, "streamId":Ljava/lang/Integer;
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/hardware/camera2/ICameraDeviceUser;->deleteStream(I)I

    .line 371
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->delete(I)V
    :try_end_7b
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_51 .. :try_end_7b} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_7b} :catch_bc
    .catchall {:try_start_51 .. :try_end_7b} :catchall_8c

    goto :goto_5d

    .line 393
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "streamId":Ljava/lang/Integer;
    :catch_7c
    move-exception v2

    .line 394
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_7d
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_10f

    .line 395
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "The camera is currently busy. You must wait until the previous operation completes."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8c
    .catchall {:try_start_7d .. :try_end_8c} :catchall_8c

    .line 404
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_8c
    move-exception v8

    if-eqz v7, :cond_11c

    :try_start_8f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_11c

    .line 405
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :goto_9c
    throw v8
    :try_end_9d
    .catchall {:try_start_8f .. :try_end_9d} :catchall_44

    .line 375
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_9d
    :try_start_9d
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 378
    .restart local v5    # "s":Landroid/view/Surface;
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13, v5}, Landroid/hardware/camera2/ICameraDeviceUser;->createStream(IIILandroid/view/Surface;)I

    move-result v6

    .line 379
    .local v6, "streamId":I
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_bb
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_9d .. :try_end_bb} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_bb} :catch_bc
    .catchall {:try_start_9d .. :try_end_bb} :catchall_8c

    goto :goto_a1

    .line 400
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Landroid/view/Surface;
    .end local v6    # "streamId":I
    :catch_bc
    move-exception v2

    .line 404
    .local v2, "e":Landroid/os/RemoteException;
    if-eqz v7, :cond_114

    :try_start_bf
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_114

    .line 405
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :goto_cc
    monitor-exit v9
    :try_end_cd
    .catchall {:try_start_bf .. :try_end_cd} :catchall_44

    .line 413
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_cd
    return v8

    .line 383
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_ce
    :try_start_ce
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v10}, Landroid/hardware/camera2/ICameraDeviceUser;->endConfigure()I
    :try_end_d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ce .. :try_end_d3} :catch_e6
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_ce .. :try_end_d3} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d3} :catch_bc
    .catchall {:try_start_ce .. :try_end_d3} :catchall_8c

    .line 392
    const/4 v7, 0x1

    .line 404
    if-eqz v7, :cond_107

    :try_start_d6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_107

    .line 405
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :goto_e3
    monitor-exit v9
    :try_end_e4
    .catchall {:try_start_d6 .. :try_end_e4} :catchall_44

    move v8, v7

    .line 413
    goto :goto_cd

    .line 385
    :catch_e6
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e7
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v11, "Stream configuration failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_e7 .. :try_end_ee} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_ee} :catch_bc
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_8c

    .line 404
    if-eqz v7, :cond_ff

    :try_start_f0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_ff

    .line 405
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :goto_fd
    monitor-exit v9

    goto :goto_cd

    :cond_ff
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_fd

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_107
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10e
    .catchall {:try_start_f0 .. :try_end_10e} :catchall_44

    goto :goto_e3

    .line 399
    .end local v4    # "i$":Ljava/util/Iterator;
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_10f
    :try_start_10f
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v8

    throw v8
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_8c

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    :cond_114
    :try_start_114
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_cc

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_11c
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_44

    goto/16 :goto_9c
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 7
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 476
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 478
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    .line 481
    .local v2, "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_b
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v3, p1, v2}, Landroid/hardware/camera2/ICameraDeviceUser;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_10
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_b .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_20
    .catchall {:try_start_b .. :try_end_10} :catchall_1d

    .line 489
    :try_start_10
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 492
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    monitor-exit v4

    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_16
    return-object v0

    .line 482
    :catch_17
    move-exception v1

    .line 483
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v3

    throw v3

    .line 493
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v3

    .line 484
    .restart local v2    # "templatedRequest":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_20
    move-exception v1

    .line 486
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    :try_start_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1d

    goto :goto_16
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .registers 15
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v10

    .line 421
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 422
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "createCaptureSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_e
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 429
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    if-eqz v1, :cond_1a

    .line 430
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_36

    .line 434
    :cond_1a
    const/4 v7, 0x1

    .line 435
    .local v7, "configureSuccess":Z
    const/4 v9, 0x0

    .line 437
    .local v9, "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :try_start_1c
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureOutputsChecked(Ljava/util/List;)Z
    :try_end_1f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1c .. :try_end_1f} :catch_39
    .catchall {:try_start_1c .. :try_end_1f} :catchall_36

    move-result v7

    .line 447
    :cond_20
    :goto_20
    :try_start_20
    new-instance v0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    .line 453
    .local v0, "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 455
    if-eqz v9, :cond_48

    .line 456
    throw v9

    .line 460
    .end local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .end local v7    # "configureSuccess":Z
    .end local v9    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catchall_36
    move-exception v1

    monitor-exit v10
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw v1

    .line 438
    .restart local v7    # "configureSuccess":Z
    .restart local v9    # "pendingException":Landroid/hardware/camera2/CameraAccessException;
    :catch_39
    move-exception v8

    .line 439
    .local v8, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v7, 0x0

    .line 440
    move-object v9, v8

    .line 441
    :try_start_3c
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 442
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string v2, "createCaptureSession - failed with exception "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 459
    .end local v8    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "newSession":Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    :cond_48
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 460
    monitor-exit v10
    :try_end_51
    .catchall {:try_start_3c .. :try_end_51} :catchall_36

    .line 461
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 781
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 784
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 786
    return-void

    .line 784
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 725
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 726
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 728
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v4, :cond_1b

    .line 733
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_37

    .line 751
    :goto_1a
    return-void

    .line 737
    :cond_1b
    :try_start_1b
    new-instance v1, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 738
    .local v1, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v4, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    .line 739
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v4, v7, :cond_35

    .line 740
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v2

    .line 741
    .local v2, "lastFrameNumber":J
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-direct {p0, v4, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    .line 742
    const/4 v4, -0x1

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_35
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1b .. :try_end_35} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_35} :catch_40
    .catchall {:try_start_1b .. :try_end_35} :catchall_37

    .line 750
    .end local v2    # "lastFrameNumber":J
    :cond_35
    :try_start_35
    monitor-exit v5

    goto :goto_1a

    .end local v1    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    :catchall_37
    move-exception v4

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v4

    .line 744
    :catch_3a
    move-exception v0

    .line 745
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3b
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v4

    throw v4

    .line 746
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_40
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_37

    goto :goto_1a
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .registers 5
    .param p1, "remoteDevice"    # Landroid/hardware/camera2/ICameraDeviceUser;

    .prologue
    .line 251
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_3
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 261
    :goto_8
    return-void

    .line 256
    :cond_9
    invoke-static {p1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    .line 258
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    monitor-exit v1

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V
    .registers 9
    .param p1, "failure"    # Landroid/hardware/camera2/utils/CameraRuntimeException;

    .prologue
    .line 270
    const/4 v1, 0x4

    .line 271
    .local v1, "failureCode":I
    const/4 v2, 0x1

    .line 273
    .local v2, "failureIsError":Z
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v4

    packed-switch v4, :pswitch_data_46

    .line 290
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown failure in opening camera device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_25
    move v0, v1

    .line 294
    .local v0, "code":I
    move v3, v2

    .line 295
    .local v3, "isError":Z
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 296
    const/4 v4, 0x1

    :try_start_2b
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    .line 297
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    monitor-exit v5

    .line 308
    return-void

    .line 275
    .end local v0    # "code":I
    .end local v3    # "isError":Z
    :pswitch_39
    const/4 v1, 0x1

    .line 276
    goto :goto_25

    .line 278
    :pswitch_3b
    const/4 v1, 0x2

    .line 279
    goto :goto_25

    .line 281
    :pswitch_3d
    const/4 v1, 0x3

    .line 282
    goto :goto_25

    .line 284
    :pswitch_3f
    const/4 v2, 0x0

    .line 285
    goto :goto_25

    .line 287
    :pswitch_41
    const/4 v1, 0x4

    .line 288
    goto :goto_25

    .line 307
    .restart local v0    # "code":I
    .restart local v3    # "isError":Z
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw v4

    .line 273
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3f
        :pswitch_41
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 669
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .registers 4
    .param p1, "sessionCallback"    # Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .prologue
    .line 467
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_3
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    .line 469
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public stopRepeating()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 676
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 677
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    .line 678
    iget v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v5, v7, :cond_32

    .line 680
    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 681
    .local v4, "requestId":I
    const/4 v5, -0x1

    iput v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    .line 684
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 685
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_3a

    .line 689
    :cond_21
    :try_start_21
    new-instance v1, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 690
    .local v1, "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/ICameraDeviceUser;

    invoke-interface {v5, v4, v1}, Landroid/hardware/camera2/ICameraDeviceUser;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    .line 691
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/LongParcelable;->getNumber()J

    move-result-wide v2

    .line 693
    .local v2, "lastFrameNumber":J
    invoke-direct {p0, v4, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_32
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_21 .. :try_end_32} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_32} :catch_3d
    .catchall {:try_start_21 .. :try_end_32} :catchall_3a

    .line 702
    .end local v1    # "lastFrameNumberRef":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v2    # "lastFrameNumber":J
    .end local v4    # "requestId":I
    :cond_32
    :try_start_32
    monitor-exit v6

    .line 703
    :goto_33
    return-void

    .line 695
    .restart local v4    # "requestId":I
    :catch_34
    move-exception v0

    .line 696
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    throw v5

    .line 702
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v4    # "requestId":I
    :catchall_3a
    move-exception v5

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v5

    .line 697
    .restart local v4    # "requestId":I
    :catch_3d
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3a

    goto :goto_33
.end method
