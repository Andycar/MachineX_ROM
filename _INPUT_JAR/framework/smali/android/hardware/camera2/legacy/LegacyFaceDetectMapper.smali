.class public Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private mFaceDetectEnabled:Z

.field private mFaceDetectReporting:Z

.field private mFaceDetectScenePriority:Z

.field private final mFaceDetectSupported:Z

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFacesPrev:[Landroid/hardware/Camera$Face;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    const-string v0, "LegacyFaceDetectMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 5
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    .line 56
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 58
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    .line 73
    const-string v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    .line 74
    const-string v0, "characteristics must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    .line 81
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v0, :cond_34

    .line 106
    :goto_33
    return-void

    .line 85
    :cond_34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_33
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    return v0
.end method

.method static synthetic access$202(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    .param p1, "x1"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z

    return v0
.end method


# virtual methods
.method public mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .registers 24
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 209
    const-string/jumbo v18, "result must not be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v18, "legacyRequest must not be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 216
    :try_start_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_88

    const/4 v9, 0x1

    .line 219
    .local v9, "fdMode":I
    :goto_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8a

    .line 220
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;

    .line 225
    .local v8, "faces":[Landroid/hardware/Camera$Face;
    :goto_2f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 227
    .local v10, "fdScenePriority":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    .line 228
    .local v15, "previousFaces":[Landroid/hardware/Camera$Face;
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFacesPrev:[Landroid/hardware/Camera$Face;

    .line 229
    monitor-exit v19
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_8c

    .line 231
    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 232
    .local v5, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v16, v0

    .line 233
    .local v16, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .line 234
    .local v14, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 236
    .local v13, "params":Landroid/hardware/Camera$Parameters;
    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 237
    .local v3, "activeArray":Landroid/graphics/Rect;
    sget-object v18, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    invoke-static {v3, v0, v14, v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v17

    .line 240
    .local v17, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v6, "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    if-eqz v8, :cond_98

    .line 242
    move-object v4, v8

    .local v4, "arr$":[Landroid/hardware/Camera$Face;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_74
    if-ge v11, v12, :cond_98

    aget-object v7, v4, v11

    .line 243
    .local v7, "face":Landroid/hardware/Camera$Face;
    if-eqz v7, :cond_8f

    .line 244
    move-object/from16 v0, v17

    invoke-static {v7, v3, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertFaceFromLegacy(Landroid/hardware/Camera$Face;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/params/Face;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_85
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    .line 216
    .end local v3    # "activeArray":Landroid/graphics/Rect;
    .end local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .end local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .end local v7    # "face":Landroid/hardware/Camera$Face;
    .end local v8    # "faces":[Landroid/hardware/Camera$Face;
    .end local v9    # "fdMode":I
    .end local v10    # "fdScenePriority":Z
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "params":Landroid/hardware/Camera$Parameters;
    .end local v14    # "previewSize":Landroid/util/Size;
    .end local v15    # "previousFaces":[Landroid/hardware/Camera$Face;
    .end local v16    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v17    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_88
    const/4 v9, 0x0

    goto :goto_23

    .line 222
    .restart local v9    # "fdMode":I
    :cond_8a
    const/4 v8, 0x0

    .restart local v8    # "faces":[Landroid/hardware/Camera$Face;
    goto :goto_2f

    .line 229
    .end local v8    # "faces":[Landroid/hardware/Camera$Face;
    .end local v9    # "fdMode":I
    :catchall_8c
    move-exception v18

    :try_start_8d
    monitor-exit v19
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v18

    .line 247
    .restart local v3    # "activeArray":Landroid/graphics/Rect;
    .restart local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .restart local v5    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v6    # "convertedFaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/Face;>;"
    .restart local v7    # "face":Landroid/hardware/Camera$Face;
    .restart local v8    # "faces":[Landroid/hardware/Camera$Face;
    .restart local v9    # "fdMode":I
    .restart local v10    # "fdScenePriority":Z
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v14    # "previewSize":Landroid/util/Size;
    .restart local v15    # "previousFaces":[Landroid/hardware/Camera$Face;
    .restart local v16    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v17    # "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    :cond_8f
    sget-object v18, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "mapResultFaces - read NULL face from camera1 device"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 252
    .end local v4    # "arr$":[Landroid/hardware/Camera$Face;
    .end local v7    # "face":Landroid/hardware/Camera$Face;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_98
    sget-boolean v18, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z

    if-eqz v18, :cond_bb

    if-eq v15, v8, :cond_bb

    .line 253
    sget-object v18, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mapResultFaces - changed to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v6}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_bb
    sget-object v18, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Landroid/hardware/camera2/params/Face;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 257
    sget-object v18, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 260
    if-eqz v10, :cond_f6

    .line 261
    sget-object v18, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 263
    :cond_f6
    return-void
.end method

.method public processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .registers 11
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 124
    const-string v3, "captureRequest must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    .local v1, "fdMode":I
    if-eqz v1, :cond_26

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v3, :cond_26

    .line 133
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_25
    return-void

    .line 142
    :cond_26
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v3, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 144
    .local v2, "sceneMode":I
    if-ne v2, v5, :cond_45

    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectSupported:Z

    if-nez v3, :cond_45

    .line 145
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 151
    :cond_45
    packed-switch v1, :pswitch_data_b4

    .line 161
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processFaceDetectMode - ignoring unknown statistics.faceDetectMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 156
    :pswitch_62
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :pswitch_6a
    if-nez v1, :cond_6e

    if-ne v2, v5, :cond_99

    :cond_6e
    move v0, v5

    .line 168
    .local v0, "enableFaceDetect":Z
    :goto_6f
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_72
    iget-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    if-eq v0, v3, :cond_94

    .line 171
    if-eqz v0, :cond_9b

    .line 172
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 174
    sget-boolean v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z

    if-eqz v3, :cond_89

    .line 175
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "processFaceDetectMode - start face detection"

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_89
    :goto_89
    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectEnabled:Z

    .line 188
    if-ne v2, v5, :cond_b0

    move v3, v5

    :goto_8e
    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectScenePriority:Z

    .line 189
    if-eqz v1, :cond_b2

    :goto_92
    iput-boolean v5, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaceDetectReporting:Z

    .line 191
    :cond_94
    monitor-exit v6

    goto :goto_25

    :catchall_96
    move-exception v3

    monitor-exit v6
    :try_end_98
    .catchall {:try_start_72 .. :try_end_98} :catchall_96

    throw v3

    .end local v0    # "enableFaceDetect":Z
    :cond_99
    move v0, v4

    .line 166
    goto :goto_6f

    .line 178
    .restart local v0    # "enableFaceDetect":Z
    :cond_9b
    :try_start_9b
    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 180
    sget-boolean v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->VERBOSE:Z

    if-eqz v3, :cond_ac

    .line 181
    sget-object v3, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "processFaceDetectMode - stop face detection"

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_ac
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mFaces:[Landroid/hardware/Camera$Face;
    :try_end_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_96

    goto :goto_89

    :cond_b0
    move v3, v4

    .line 188
    goto :goto_8e

    :cond_b2
    move v5, v4

    .line 189
    goto :goto_92

    .line 151
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6a
        :pswitch_62
    .end packed-switch
.end method
