.class Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;
.super Ljava/lang/Object;
.source "SViewCoverCloseEffectGLSurface.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseEffectRenderer"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBottom:F

.field private mFadeEndPosition:F

.field private mFadePosition:F

.field private mFadeStartPosition:F

.field private mFadeWidth:F

.field private final mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

.field private mMVPMatrix:[F

.field private mProjectionMatrix:[F

.field private mTextureHandle:I

.field private mTextureVertices:Ljava/nio/FloatBuffer;

.field private mTop:F

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mViewMatrix:[F

.field final synthetic this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 84
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mViewMatrix:[F

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mProjectionMatrix:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mMVPMatrix:[F

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 85
    new-instance v0, Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    invoke-direct {v0}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    .line 86
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeStartPosition:F

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method


# virtual methods
.method public getFadePosition()F
    .locals 2

    .prologue
    .line 209
    const-string v0, "MIK"

    const-string v1, "getFadePosition!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v2, 0x1406

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iget-object v7, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 161
    .local v7, "local":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 162
    if-nez v7, :cond_0

    .line 206
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    invoke-static {v7}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iput-object v4, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    new-instance v1, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;-><init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_1
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mMVPMatrix:[F

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_Position"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_TexCoordinate"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_Position"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_TexCoordinate"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "u_Texture"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 197
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 198
    const/16 v0, 0xde1

    iget v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_AlphaPos"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    const-string v1, "a_AlphaWidth"

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeWidth:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 203
    const-string v0, "MIK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawing with mFadePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->stopAnimation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iput-object v4, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 171
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iput-object v4, v1, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 121
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 125
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v13, v2, v3

    .line 126
    .local v13, "ratio":F
    const/high16 v11, -0x40800000    # -1.0f

    .line 127
    .local v11, "left":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 128
    .local v14, "right":F
    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mBottom:F

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mBottom:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTop:F

    .line 130
    const/high16 v12, 0x3f800000    # 1.0f

    .line 131
    .local v12, "near":F
    const/high16 v10, 0x41f00000    # 30.0f

    .line 133
    .local v10, "far":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mProjectionMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mBottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTop:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v2}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$000(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)F

    move-result v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeWidth:F

    .line 136
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeStartPosition:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    .line 137
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeWidth:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeEndPosition:F

    .line 139
    const/16 v2, 0xc

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v16, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTop:F

    aput v3, v16, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v16, v2

    const/4 v2, 0x3

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v16, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mBottom:F

    aput v3, v16, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v16, v2

    const/4 v2, 0x6

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v16, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTop:F

    aput v3, v16, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput v3, v16, v2

    const/16 v2, 0x9

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v16, v2

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mBottom:F

    aput v3, v16, v2

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput v3, v16, v2

    .line 145
    .local v16, "vertices":[F
    invoke-static/range {v16 .. v16}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mVertices:Ljava/nio/FloatBuffer;

    .line 146
    const/16 v2, 0x8

    new-array v15, v2, [F

    fill-array-data v15, :array_0

    .line 152
    .local v15, "textureVertices":[F
    invoke-static {v15}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->loadToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mMVPMatrix:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mProjectionMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mViewMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 155
    const-string v2, "MIK"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 146
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 21
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 90
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 91
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 93
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mHelper:Lcom/sec/android/sviewcover/hideeffect/GLHelper;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/hideeffect/GLHelper;->init()V

    .line 98
    const/4 v12, 0x0

    .line 99
    .local v12, "eyeX":F
    const/4 v13, 0x0

    .line 100
    .local v13, "eyeY":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 103
    .local v14, "eyeZ":F
    const/4 v15, 0x0

    .line 104
    .local v15, "lookX":F
    const/16 v16, 0x0

    .line 105
    .local v16, "lookY":F
    const/high16 v17, -0x3f600000    # -5.0f

    .line 108
    .local v17, "lookZ":F
    const/16 v18, 0x0

    .line 109
    .local v18, "upX":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 110
    .local v19, "upY":F
    const/16 v20, 0x0

    .line 113
    .local v20, "upZ":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mViewMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3f600000    # -5.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 115
    const-string v1, "MIK"

    const-string v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public setFadePosition(F)V
    .locals 2
    .param p1, "p"    # F

    .prologue
    .line 214
    const-string v0, "MIK"

    const-string v1, "setFadePosition!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    .line 216
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->requestRender()V

    .line 217
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeStartPosition:F

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    .line 225
    const-string v0, "fadePosition"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeStartPosition:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeEndPosition:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 227
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$100(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;-><init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 259
    const-string v0, "MIK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator started! mFadeEndPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeEndPosition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAnimation(Z)V
    .locals 2
    .param p1, "callCallback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 265
    iput-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 266
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadeStartPosition:F

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mFadePosition:F

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->mTextureHandle:I

    .line 268
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iput-object v1, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$500(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$500(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;->onHideAnimationFinished()V

    .line 273
    :cond_0
    return-void
.end method
