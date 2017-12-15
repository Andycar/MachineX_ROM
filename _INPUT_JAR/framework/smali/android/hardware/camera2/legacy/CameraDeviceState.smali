.class public Landroid/hardware/camera2/legacy/CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final NO_CAPTURE_ERROR:I = -0x1

.field private static final STATE_CAPTURING:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x2

.field private static final STATE_ERROR:I = 0x0

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_UNCONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraDeviceState"

.field private static final sStateNames:[Ljava/lang/String;


# instance fields
.field private mCurrentError:I

.field private mCurrentHandler:Landroid/os/Handler;

.field private mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mCurrentState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 44
    const-string v0, "HAL1ShimLogging"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->DEBUG:Z

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UNCONFIGURED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONFIGURING"

    aput-object v2, v0, v1

    const-string v1, "IDLE"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "CAPTURING"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 58
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 60
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    .line 72
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/CameraDeviceState;)I
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 42
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method private doStateTransition(I)V
    .registers 5
    .param p1, "newState"    # I

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    .line 211
    return-void
.end method

.method private doStateTransition(IJI)V
    .registers 15
    .param p1, "newState"    # I
    .param p2, "timestamp"    # J
    .param p4, "error"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 214
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq p1, v1, :cond_2e

    .line 215
    const-string v0, "UNKNOWN"

    .line 216
    .local v0, "stateName":Ljava/lang/String;
    if-ltz p1, :cond_16

    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 217
    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 219
    :cond_16
    const-string v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Legacy camera service transitioning to state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "stateName":Ljava/lang/String;
    :cond_2e
    if-eqz p1, :cond_48

    if-eq p1, v4, :cond_48

    .line 224
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, p1, :cond_48

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_48

    .line 226
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$3;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_48
    packed-switch p1, :pswitch_data_152

    .line 317
    :pswitch_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition to unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :pswitch_64
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eqz v1, :cond_7a

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_7a

    .line 239
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$4;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$4;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_7a
    iput v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    .line 319
    :cond_7c
    :goto_7c
    return-void

    .line 249
    :pswitch_7d
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v6, :cond_a5

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v4, :cond_a5

    .line 250
    const-string v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call configure while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 252
    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_7c

    .line 255
    :cond_a5
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v7, :cond_bb

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_bb

    .line 257
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$5;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_bb
    iput v7, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto :goto_7c

    .line 267
    :pswitch_be
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v4, :cond_7c

    .line 271
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v7, :cond_ea

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v8, :cond_ea

    .line 272
    const-string v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call idle while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 274
    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_7c

    .line 278
    :cond_ea
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v4, :cond_100

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_100

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_100

    .line 280
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$6;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_100
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto/16 :goto_7c

    .line 290
    :pswitch_104
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v4, :cond_12d

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v8, :cond_12d

    .line 291
    const-string v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call capture while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 293
    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto/16 :goto_7c

    .line 297
    :cond_12d
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_142

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_142

    .line 298
    const/4 v1, -0x1

    if-eq p4, v1, :cond_146

    .line 299
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$7;

    invoke-direct {v2, p0, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState$7;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_142
    :goto_142
    iput v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto/16 :goto_7c

    .line 306
    :cond_146
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$8;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_142

    .line 235
    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_64
        :pswitch_4b
        :pswitch_7d
        :pswitch_be
        :pswitch_104
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    .line 206
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 207
    monitor-exit p0

    return-void

    .line 205
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z
    .registers 10
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p3, "captureError"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 170
    monitor-enter p0

    :try_start_4
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_32

    .line 171
    const-string v2, "CameraDeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot receive result while in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 173
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 174
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_57

    if-ne v2, v5, :cond_30

    .line 194
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v0

    :cond_30
    move v0, v1

    .line 174
    goto :goto_2e

    .line 177
    :cond_32
    :try_start_32
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v2, :cond_46

    .line 178
    if-eq p3, v5, :cond_4c

    .line 179
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$1;

    invoke-direct {v3, p0, p3, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$1;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILandroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_46
    :goto_46
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    if-eq v2, v5, :cond_2e

    move v0, v1

    goto :goto_2e

    .line 186
    :cond_4c
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$2;

    invoke-direct {v3, p0, p2, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$2;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_56
    .catchall {:try_start_32 .. :try_end_56} :catchall_57

    goto :goto_46

    .line 170
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    .registers 7
    .param p1, "request"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J
    .param p4, "captureError"    # I

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    .line 146
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    .line 147
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 145
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConfiguring()Z
    .registers 3

    .prologue
    .line 109
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 110
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 109
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setError(I)V
    .registers 3
    .param p1, "error"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdle()Z
    .registers 3

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    .line 125
    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 124
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
