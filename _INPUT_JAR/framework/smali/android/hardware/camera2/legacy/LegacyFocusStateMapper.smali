.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "LegacyFocusStateMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .registers 4
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    .line 51
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 53
    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 63
    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    .prologue
    .line 39
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    return p1
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "afState"    # I

    .prologue
    .line 302
    packed-switch p0, :pswitch_data_32

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 304
    :pswitch_1d
    const-string v0, "ACTIVE_SCAN"

    goto :goto_1c

    .line 306
    :pswitch_20
    const-string v0, "FOCUSED_LOCKED"

    goto :goto_1c

    .line 308
    :pswitch_23
    const-string v0, "INACTIVE"

    goto :goto_1c

    .line 310
    :pswitch_26
    const-string v0, "NOT_FOCUSED_LOCKED"

    goto :goto_1c

    .line 312
    :pswitch_29
    const-string v0, "PASSIVE_FOCUSED"

    goto :goto_1c

    .line 314
    :pswitch_2c
    const-string v0, "PASSIVE_SCAN"

    goto :goto_1c

    .line 316
    :pswitch_2f
    const-string v0, "PASSIVE_UNFOCUSED"

    goto :goto_1c

    .line 302
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2c
        :pswitch_29
        :pswitch_1d
        :pswitch_20
        :pswitch_26
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 8
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .prologue
    .line 284
    const-string/jumbo v1, "result must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_9
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 289
    .local v0, "newAfState":I
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3f

    .line 291
    sget-boolean v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v1, :cond_33

    iget v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    if-eq v0, v1, :cond_33

    .line 292
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mapResultTriggers - afState changed from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->afStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->afStateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_33
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 298
    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    .line 299
    return-void

    .line 289
    .end local v0    # "newAfState":I
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .registers 13
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 82
    const-string v6, "captureRequest must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 90
    .local v3, "afTrigger":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "afMode":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 93
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_4b

    .line 94
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - AF mode switched from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4b
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 101
    :try_start_4e
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 102
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 103
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_92

    .line 104
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 107
    :cond_5d
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    .line 113
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 114
    :try_start_62
    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 115
    .local v4, "currentAfRun":I
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_95

    .line 117
    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    invoke-direct {v1, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    .line 160
    .local v1, "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_174

    :cond_72
    :goto_72
    packed-switch v6, :pswitch_data_186

    .line 171
    :goto_75
    packed-switch v3, :pswitch_data_192

    .line 269
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - ignoring unknown control.afTrigger = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_91
    :goto_91
    :pswitch_91
    return-void

    .line 103
    .end local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .end local v4    # "currentAfRun":I
    :catchall_92
    move-exception v6

    :try_start_93
    monitor-exit v7
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v6

    .line 115
    :catchall_95
    move-exception v6

    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v6

    .line 160
    .restart local v1    # "afMoveCallback":Landroid/hardware/Camera$AutoFocusMoveCallback;
    .restart local v4    # "currentAfRun":I
    :sswitch_98
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v6, 0x0

    goto :goto_72

    :sswitch_a2
    const-string/jumbo v7, "macro"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v6, 0x1

    goto :goto_72

    :sswitch_ad
    const-string v7, "continuous-picture"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v6, 0x2

    goto :goto_72

    :sswitch_b7
    const-string v7, "continuous-video"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/4 v6, 0x3

    goto :goto_72

    .line 165
    :pswitch_c1
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_75

    .line 175
    :pswitch_c7
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_19c

    :cond_cf
    :goto_cf
    packed-switch v6, :pswitch_data_1ae

    .line 186
    const/4 v2, 0x0

    .line 190
    .local v2, "afStateAfterStart":I
    :goto_d3
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 191
    :try_start_d6
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 192
    iput v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 193
    monitor-exit v7
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_136

    .line 195
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_fc

    .line 196
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - got AF_TRIGGER_START, new AF run is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_fc
    if-eqz v2, :cond_91

    .line 205
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    invoke-direct {v7, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_91

    .line 175
    .end local v2    # "afStateAfterStart":I
    :sswitch_109
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v6, 0x0

    goto :goto_cf

    :sswitch_113
    const-string/jumbo v7, "macro"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v6, 0x1

    goto :goto_cf

    :sswitch_11e
    const-string v7, "continuous-picture"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v6, 0x2

    goto :goto_cf

    :sswitch_128
    const-string v7, "continuous-video"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    const/4 v6, 0x3

    goto :goto_cf

    .line 178
    :pswitch_132
    const/4 v2, 0x3

    .line 179
    .restart local v2    # "afStateAfterStart":I
    goto :goto_d3

    .line 182
    .end local v2    # "afStateAfterStart":I
    :pswitch_134
    const/4 v2, 0x1

    .line 183
    .restart local v2    # "afStateAfterStart":I
    goto :goto_d3

    .line 193
    .end local v4    # "currentAfRun":I
    :catchall_136
    move-exception v6

    :try_start_137
    monitor-exit v7
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v6

    .line 248
    .end local v2    # "afStateAfterStart":I
    .restart local v4    # "currentAfRun":I
    :pswitch_139
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 251
    :try_start_13c
    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_16e

    .line 252
    :try_start_13f
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    .line 253
    .local v5, "updatedAfRun":I
    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    .line 254
    monitor-exit v8
    :try_end_149
    .catchall {:try_start_13f .. :try_end_149} :catchall_171

    .line 256
    :try_start_149
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 258
    sget-boolean v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->VERBOSE:Z

    if-eqz v6, :cond_16b

    .line 259
    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processRequestTriggers - got AF_TRIGGER_CANCEL, new AF run is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_16b
    monitor-exit v7

    goto/16 :goto_91

    .end local v5    # "updatedAfRun":I
    :catchall_16e
    move-exception v6

    monitor-exit v7
    :try_end_170
    .catchall {:try_start_149 .. :try_end_170} :catchall_16e

    throw v6

    .line 254
    :catchall_171
    move-exception v6

    :try_start_172
    monitor-exit v8
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    :try_start_173
    throw v6
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_16e

    .line 160
    :sswitch_data_174
    .sparse-switch
        -0xb99cbc3 -> :sswitch_b7
        0x2dddaf -> :sswitch_98
        0x62d9bcc -> :sswitch_a2
        0x363d9440 -> :sswitch_ad
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
    .end packed-switch

    .line 171
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_91
        :pswitch_c7
        :pswitch_139
    .end packed-switch

    .line 175
    :sswitch_data_19c
    .sparse-switch
        -0xb99cbc3 -> :sswitch_128
        0x2dddaf -> :sswitch_109
        0x62d9bcc -> :sswitch_113
        0x363d9440 -> :sswitch_11e
    .end sparse-switch

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_132
        :pswitch_132
        :pswitch_134
        :pswitch_134
    .end packed-switch
.end method
