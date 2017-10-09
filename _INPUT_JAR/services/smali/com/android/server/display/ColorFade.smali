.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSaturationLoc:I

.field private mScaleLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x8

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 100
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 101
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 109
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 110
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 128
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 129
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 130
    return-void
.end method

.method private attachEglContext()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 647
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_6

    .line 654
    :goto_5
    return v0

    .line 650
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 651
    const-string v1, "eglMakeCurrent"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto :goto_5

    .line 654
    :cond_1a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 488
    :goto_8
    return v0

    .line 454
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-nez v1, :cond_23

    .line 455
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 456
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_a5

    move-result v1

    if-eqz v1, :cond_20

    .line 486
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto :goto_8

    .line 459
    :cond_20
    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 462
    :cond_23
    new-instance v8, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {v8, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 463
    .local v8, "st":Landroid/graphics/SurfaceTexture;
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_a5

    .line 465
    .local v7, "s":Landroid/view/Surface;
    const/4 v0, 0x0

    :try_start_33
    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_a0

    .line 468
    :try_start_3a
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 471
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 472
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v8, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 477
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 478
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 479
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 480
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 484
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v2, v0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_9a
    .catchall {:try_start_3a .. :try_end_9a} :catchall_a5

    .line 486
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    move v0, v9

    .line 488
    goto/16 :goto_8

    .line 468
    :catchall_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a5

    .line 486
    .end local v7    # "s":Landroid/view/Surface;
    .end local v8    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_a5
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .prologue
    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_2c

    .line 682
    if-eqz p1, :cond_2a

    .line 683
    const-string v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    :cond_2a
    const/4 v1, 0x1

    goto :goto_1

    .line 687
    :cond_2c
    return v1
.end method

.method private createEglContext()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_2c

    .line 501
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 502
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_18

    .line 503
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 547
    :goto_17
    return v2

    .line 507
    :cond_18
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 508
    .local v9, "version":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v9, v2, v9, v10}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 510
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .line 515
    .end local v9    # "version":[I
    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_50

    .line 516
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_72

    .line 525
    .local v1, "eglConfigAttribList":[I
    new-array v6, v10, [I

    .line 526
    .local v6, "numEglConfigs":[I
    new-array v3, v10, [Landroid/opengl/EGLConfig;

    .line 527
    .local v3, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 529
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .line 532
    :cond_4c
    aget-object v0, v3, v2

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 535
    .end local v1    # "eglConfigAttribList":[I
    .end local v3    # "eglConfigs":[Landroid/opengl/EGLConfig;
    .end local v6    # "numEglConfigs":[I
    :cond_50
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    .line 536
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_8c

    .line 540
    .local v8, "eglContextAttribList":[I
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 542
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_70

    .line 543
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto :goto_17

    .end local v8    # "eglContextAttribList":[I
    :cond_70
    move v2, v10

    .line 547
    goto :goto_17

    .line 516
    :array_72
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    .line 536
    :array_8c
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 589
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    .line 590
    new-array v0, v2, [I

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 594
    .local v0, "eglSurfaceAttribList":[I
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v4, v5, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 596
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v3, :cond_22

    .line 597
    const-string v2, "eglCreateWindowSurface"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 601
    .end local v0    # "eglSurfaceAttribList":[I
    :goto_21
    return v1

    :cond_22
    move v1, v2

    goto :goto_21
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"    # I

    .prologue
    .line 665
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 666
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 667
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 9

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_b

    .line 552
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 555
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 557
    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_6f

    if-nez v0, :cond_2a

    .line 560
    :try_start_12
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 561
    const v6, 0x20004

    .line 565
    .local v6, "flags":I
    :goto_1a
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "ColorFade"

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_2a} :catch_62
    .catchall {:try_start_12 .. :try_end_2a} :catchall_6f

    .line 574
    .end local v6    # "flags":I
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 575
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 576
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 577
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 579
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 581
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction()V
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_6f

    .line 583
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 585
    const/4 v0, 0x1

    :goto_5e
    return v0

    .line 563
    :cond_5f
    const/16 v6, 0x404

    .restart local v6    # "flags":I
    goto :goto_1a

    .line 568
    .end local v6    # "flags":I
    :catch_62
    move-exception v7

    .line 569
    .local v7, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_63
    const-string v0, "ColorFade"

    const-string v1, "Unable to create surface."

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6f

    .line 570
    const/4 v0, 0x0

    .line 583
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_5e

    .end local v7    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :catchall_6f
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private destroyEglSurface()V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_16

    .line 606
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 607
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 609
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 611
    :cond_16
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .prologue
    .line 300
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 301
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 262
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 263
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_12

    .line 493
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 494
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 495
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 497
    :cond_12
    return-void
.end method

.method private destroySurface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    .line 615
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 616
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 617
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 619
    :try_start_f
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 620
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    .line 622
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 624
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 628
    :cond_24
    return-void

    .line 622
    :catchall_25
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private detachEglContext()V
    .registers 5

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_f

    .line 659
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 662
    :cond_f
    return-void
.end method

.method private drawFaded(FFFF)V
    .registers 13
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F
    .param p3, "saturation"    # F
    .param p4, "scale"    # F

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 400
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 403
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 404
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v6, v3, v4, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 405
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 406
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 407
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 408
    iget v0, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 411
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 412
    const v0, 0x8d65

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 415
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 416
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 417
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 419
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 420
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 421
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 423
    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 426
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 427
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 428
    return-void
.end method

.method private initGLBuffers()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x8892

    const/4 v4, 0x0

    const v3, 0x8d65

    .line 267
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    invoke-static {v0, v6, v6, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 270
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v4

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 271
    const/16 v0, 0x2800

    const/16 v1, 0x2600

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 273
    const/16 v0, 0x2801

    const/16 v1, 0x2600

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 275
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 277
    const/16 v0, 0x2803

    const v1, 0x812f

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 279
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 282
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 285
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v4

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 286
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 290
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v7

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 291
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 294
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 296
    return v7
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 225
    const v3, 0x1100004

    const v4, 0x8b31

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 227
    .local v1, "vshader":I
    const v3, 0x1100003

    const v4, 0x8b30

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 229
    .local v0, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 230
    if-eqz v1, :cond_1c

    if-nez v0, :cond_1d

    .line 257
    :cond_1c
    :goto_1c
    return v2

    .line 232
    :cond_1d
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 234
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 235
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 236
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 237
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 239
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 241
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 242
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 244
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 245
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 247
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 248
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v4, "gamma"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 249
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "saturation"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    .line 250
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "scale"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    .line 251
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 253
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 254
    iget v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 255
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_1c
.end method

.method private loadShader(Landroid/content/Context;II)I
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 208
    .local v1, "shader":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 209
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 211
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 212
    .local v0, "compiled":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 213
    aget v3, v0, v4

    if-nez v3, :cond_5a

    .line 214
    const-string v3, "ColorFade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "ColorFade"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 218
    const/4 v1, 0x0

    .line 221
    :cond_5a
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v0, "ColorFade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    return-void
.end method

.method private ortho(FFFFFF)V
    .registers 12
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x0

    sub-float v2, p2, p1

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 432
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x1

    aput v4, v0, v1

    .line 433
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x2

    aput v4, v0, v1

    .line 434
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 435
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 436
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x5

    sub-float v2, p4, p3

    div-float v2, v3, v2

    aput v2, v0, v1

    .line 437
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 438
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 439
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0x8

    aput v4, v0, v1

    .line 440
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 441
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xa

    const/high16 v2, -0x40000000    # -2.0f

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 442
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 443
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xc

    add-float v2, p2, p1

    neg-float v2, v2

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 444
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xd

    add-float v2, p4, p3

    neg-float v2, v2

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 445
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xe

    add-float v2, p6, p5

    neg-float v2, v2

    sub-float v3, p6, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 446
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 447
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 195
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    .line 197
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ColorFade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 310
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 311
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 312
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 313
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 314
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 315
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 316
    return-void
.end method

.method private showSurface(F)Z
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 631
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_27

    .line 632
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 634
    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 635
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 636
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_28

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 640
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 641
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 643
    :cond_27
    return v2

    .line 638
    :catchall_28
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_1f

    .line 331
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 333
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 335
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_20

    .line 338
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 340
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 341
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 344
    :cond_1f
    return-void

    .line 338
    :catchall_20
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method public draw(F)Z
    .registers 13
    .param p1, "level"    # F

    .prologue
    .line 358
    iget-boolean v7, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-nez v7, :cond_6

    .line 359
    const/4 v7, 0x0

    .line 391
    :goto_5
    return v7

    .line 362
    :cond_6
    iget v7, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 363
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    invoke-direct {p0, v7}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v7

    goto :goto_5

    .line 366
    :cond_13
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 367
    const/4 v7, 0x0

    goto :goto_5

    .line 371
    :cond_1b
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :try_start_20
    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 372
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 375
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, p1

    .line 376
    .local v2, "one_minus_level":F
    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v7, v2

    invoke-static {v7}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 377
    .local v0, "cos":F
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_89

    const/high16 v6, -0x40800000    # -1.0f

    .line 378
    .local v6, "sign":F
    :goto_3b
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v3, v7, v8

    .line 379
    .local v3, "opacity":F
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p1, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v4

    .line 380
    .local v4, "saturation":F
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    const v8, 0x3f666666    # 0.9f

    add-float v5, v7, v8

    .line 381
    .local v5, "scale":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v8}, Landroid/util/FloatMath;->pow(FF)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const v8, 0x3dcccccd    # 0.1f

    add-float v1, v7, v8

    .line 382
    .local v1, "gamma":F
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v1

    invoke-direct {p0, v3, v7, v4, v5}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    .line 383
    const-string v7, "drawFrame"

    invoke-static {v7}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_80
    .catchall {:try_start_20 .. :try_end_80} :catchall_9e

    move-result v7

    if-eqz v7, :cond_8c

    .line 384
    const/4 v7, 0x0

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto/16 :goto_5

    .line 377
    .end local v1    # "gamma":F
    .end local v3    # "opacity":F
    .end local v4    # "saturation":F
    .end local v5    # "scale":F
    .end local v6    # "sign":F
    :cond_89
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 387
    .restart local v1    # "gamma":F
    .restart local v3    # "opacity":F
    .restart local v4    # "saturation":F
    .restart local v5    # "scale":F
    .restart local v6    # "sign":F
    :cond_8c
    :try_start_8c
    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v8, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v7, v8}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_9e

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 391
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0, v7}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v7

    goto/16 :goto_5

    .line 389
    .end local v0    # "cos":F
    .end local v1    # "gamma":F
    .end local v2    # "one_minus_level":F
    .end local v3    # "opacity":F
    .end local v4    # "saturation":F
    .end local v5    # "scale":F
    .end local v6    # "sign":F
    :catchall_9e
    move-exception v7

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v7
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 691
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 692
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 148
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 149
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v4, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 150
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 151
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v4

    if-nez v4, :cond_38

    .line 156
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 189
    :cond_37
    :goto_37
    return v2

    .line 161
    :cond_38
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 165
    :try_start_3e
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v4

    if-eqz v4, :cond_53

    const-string/jumbo v4, "prepare"

    invoke-static {v4}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 166
    :cond_53
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_59
    .catchall {:try_start_3e .. :try_end_59} :catchall_70

    .line 171
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto :goto_37

    :cond_5d
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 175
    iput-boolean v3, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 184
    if-ne p2, v3, :cond_75

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_65
    const/4 v2, 0x3

    if-ge v1, v2, :cond_75

    .line 186
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 171
    .end local v1    # "i":I
    :catchall_70
    move-exception v2

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v2

    :cond_75
    move v2, v3

    .line 189
    goto :goto_37
.end method
