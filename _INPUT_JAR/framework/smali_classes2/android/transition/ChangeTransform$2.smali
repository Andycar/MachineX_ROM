.class Landroid/transition/ChangeTransform$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;)V
    .registers 7

    .prologue
    .line 269
    iput-object p1, p0, Landroid/transition/ChangeTransform$2;->this$0:Landroid/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/transition/ChangeTransform$2;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 271
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 305
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 306
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020046

    iget-object v2, p0, Landroid/transition/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 307
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 308
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform$2;->mIsCanceled:Z

    .line 276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$2;->mIsCanceled:Z

    if-nez v0, :cond_16

    .line 281
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$2;->val$handleParentChange:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->this$0:Landroid/transition/ChangeTransform;

    # getter for: Landroid/transition/ChangeTransform;->mUseOverlay:Z
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$000(Landroid/transition/ChangeTransform;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 282
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 288
    :cond_16
    :goto_16
    # getter for: Landroid/transition/ChangeTransform;->ANIMATION_MATRIX_PROPERTY:Landroid/util/Property;
    invoke-static {}, Landroid/transition/ChangeTransform;->access$100()Landroid/util/Property;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 290
    return-void

    .line 284
    :cond_27
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020046

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 285
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    const v1, 0x1020047

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 294
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 295
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 296
    .local v1, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v1}, Landroid/transition/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 297
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/transition/ChangeTransform$2;->val$view:Landroid/view/View;

    # invokes: Landroid/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V
    invoke-static {v0}, Landroid/transition/ChangeTransform;->access$200(Landroid/view/View;)V

    .line 302
    return-void
.end method
