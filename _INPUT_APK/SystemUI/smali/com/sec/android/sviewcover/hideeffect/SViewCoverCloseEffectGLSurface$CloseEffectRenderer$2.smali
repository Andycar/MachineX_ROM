.class Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;
.super Ljava/lang/Object;
.source "SViewCoverCloseEffectGLSurface.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->canceled:Z

    .line 250
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->access$302(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;I)I

    .line 239
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->access$402(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 240
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->canceled:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$500(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-static {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->access$500(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;->onHideAnimationFinished()V

    .line 245
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    iget-object v1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$2;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-static {v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->access$200(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->setFadePosition(F)V

    .line 234
    return-void
.end method
