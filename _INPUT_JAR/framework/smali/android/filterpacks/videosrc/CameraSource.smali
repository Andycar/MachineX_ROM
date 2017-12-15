.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "CameraSource.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraSource"

.field private static final mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mSourceCoords:[F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraTransform:[F

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMappedCoords:[F

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    return-void

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 105
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 51
    const/16 v0, 0x140

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 55
    const/16 v0, 0xf0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 59
    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    .line 339
    new-instance v0, Landroid/filterpacks/videosrc/CameraSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 106
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 107
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 109
    const-string v0, "CameraSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/filterpacks/videosrc/CameraSource;)Z
    .registers 2
    .param p0, "x0"    # Landroid/filterpacks/videosrc/CameraSource;

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/filterpacks/videosrc/CameraSource;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 120
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 123
    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .registers 15
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 317
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 318
    .local v3, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 319
    .local v0, "closestRange":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 320
    .local v2, "range":[I
    aget v4, v2, v7

    mul-int/lit16 v5, p1, 0x3e8

    if-ge v4, v5, :cond_15

    aget v4, v2, v8

    mul-int/lit16 v5, p1, 0x3e8

    if-le v4, v5, :cond_15

    aget v4, v2, v7

    aget v5, v0, v7

    if-le v4, v5, :cond_15

    aget v4, v2, v8

    aget v5, v0, v8

    if-ge v4, v5, :cond_15

    .line 326
    move-object v0, v2

    goto :goto_15

    .line 329
    .end local v2    # "range":[I
    :cond_3b
    iget-boolean v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v4, :cond_79

    const-string v4, "CameraSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Closest frame rate range: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    int-to-double v6, v6

    div-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    int-to-double v6, v6

    div-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_79
    return-object v0
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .registers 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v11, 0x0

    .line 277
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 278
    .local v4, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 279
    .local v2, "closestWidth":I
    const/4 v0, -0x1

    .line 280
    .local v0, "closestHeight":I
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    .line 281
    .local v7, "smallestWidth":I
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v6, v8, Landroid/hardware/Camera$Size;->height:I

    .line 282
    .local v6, "smallestHeight":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 287
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, p1, :cond_3b

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-gt v8, p2, :cond_3b

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v2, :cond_3b

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v0, :cond_3b

    .line 291
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .line 292
    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    .line 294
    :cond_3b
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v7, :cond_1b

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v6, :cond_1b

    .line 296
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 297
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1b

    .line 300
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_48
    const/4 v8, -0x1

    if-ne v2, v8, :cond_4d

    .line 302
    move v2, v7

    .line 303
    move v0, v6

    .line 306
    :cond_4d
    iget-boolean v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v8, :cond_8d

    .line 307
    const-string v8, "CameraSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested resolution: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "). Closest match: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8d
    const/4 v8, 0x2

    new-array v1, v8, [I

    aput v2, v1, v11

    const/4 v8, 0x1

    aput v0, v1, v8

    .line 313
    .local v1, "closestSize":[I
    return-object v1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "CameraSource"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_c
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 216
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 217
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 218
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 219
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 230
    const-string v1, "framerate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 231
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 232
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 233
    .local v0, "closestRange":[I
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 235
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 237
    .end local v0    # "closestRange":[I
    :cond_25
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 7

    .prologue
    .line 240
    monitor-enter p0

    const/4 v0, 0x0

    .line 241
    .local v0, "closeCamera":Z
    :try_start_2
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_25

    .line 242
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_13

    .line 243
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 244
    const/4 v0, 0x1

    .line 246
    :cond_13
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 248
    if-eqz v0, :cond_25

    .line 249
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 250
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 254
    :cond_25
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4, v5}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v2

    .line 255
    .local v2, "closestSize":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 256
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 257
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 259
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 261
    .local v1, "closestRange":[I
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 264
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_59

    monitor-exit p0

    return-object v3

    .line 240
    .end local v1    # "closestRange":[I
    .end local v2    # "closestSize":[I
    :catchall_59
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 134
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v1, :cond_b

    const-string v1, "CameraSource"

    const-string v2, "Opening"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_b
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 139
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 140
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    .line 146
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v3, 0x68

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 149
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 151
    :try_start_3f
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_56

    .line 158
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 161
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 162
    return-void

    .line 152
    :catch_56
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind camera surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraSource"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_b
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 130
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 17
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 166
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "CameraSource"

    const-string v1, "Processing new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_b
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    if-eqz v0, :cond_41

    .line 169
    const/4 v11, 0x0

    .line 170
    .local v11, "waitCount":I
    :cond_10
    :goto_10
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    if-nez v0, :cond_33

    .line 171
    const/16 v0, 0xa

    if-ne v11, v0, :cond_20

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timeout waiting for new frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_20
    const-wide/16 v0, 0x64

    :try_start_22
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_10

    .line 176
    :catch_26
    move-exception v9

    .line 177
    .local v9, "e":Ljava/lang/InterruptedException;
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_10

    const-string v0, "CameraSource"

    const-string v1, "Interrupted while waiting for new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 180
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 181
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_41

    const-string v0, "CameraSource"

    const-string v1, "Got new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v11    # "waitCount":I
    :cond_41
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 186
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_66

    const-string v0, "CameraSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using frame extractor in thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_66
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 188
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    const/4 v3, 0x0

    sget-object v4, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 191
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    iget-object v7, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v8, 0xc

    aget v7, v7, v8

    iget-object v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v14, 0xd

    aget v8, v8, v14

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 197
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 199
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v12

    .line 200
    .local v12, "timestamp":J
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_ea

    const-string v0, "CameraSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v12

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_ea
    invoke-virtual {v10, v12, v13}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 203
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0, v10}, Landroid/filterpacks/videosrc/CameraSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 206
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 208
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_101

    const-string v0, "CameraSource"

    const-string v1, "Done processing new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_101
    return-void
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 270
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 271
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 272
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 274
    :cond_17
    monitor-exit p0

    return-void

    .line 269
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 115
    const-string/jumbo v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 117
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 223
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 226
    :cond_9
    return-void
.end method
