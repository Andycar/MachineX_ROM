.class public Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;
.super Landroid/opengl/GLSurfaceView;
.source "SViewCoverCloseEffectGLSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;,
        Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mFadeWidthPx:F

.field private mListener:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

.field private final mRenderer:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mFadeWidthPx:F

    .line 26
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mAnimationDuration:I

    .line 39
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setEGLConfigChooser(IIIIII)V

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setEGLContextClientVersion(I)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 43
    new-instance v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;-><init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mRenderer:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    .line 44
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mRenderer:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setRenderMode(I)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_hide_effect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mFadeWidthPx:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_hide_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mAnimationDuration:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mFadeWidthPx:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mListener:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    return-object v0
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method public setListener(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mListener:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    .line 65
    return-void
.end method

.method public startHideAnimation()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mRenderer:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->startAnimation()V

    .line 57
    return-void
.end method

.method public stopAnimation(Z)V
    .locals 1
    .param p1, "callCallback"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->mRenderer:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->stopAnimation(Z)V

    .line 61
    return-void
.end method
