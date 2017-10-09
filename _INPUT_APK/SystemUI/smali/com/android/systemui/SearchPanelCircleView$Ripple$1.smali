.class Lcom/android/systemui/SearchPanelCircleView$Ripple$1;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView$Ripple;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->alpha:F

    .line 564
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v1, v1, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v1}, Lcom/android/systemui/SearchPanelCircleView;->access$1100(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget v2, v2, Lcom/android/systemui/SearchPanelCircleView$Ripple;->alpha:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->alpha:F

    .line 565
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v1, v1, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v1}, Lcom/android/systemui/SearchPanelCircleView;->access$1200(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->radius:F

    .line 566
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget v1, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->radius:F

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget v2, v2, Lcom/android/systemui/SearchPanelCircleView$Ripple;->endRadius:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->radius:F

    .line 567
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;->this$1:Lcom/android/systemui/SearchPanelCircleView$Ripple;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelCircleView;->invalidate()V

    .line 568
    return-void
.end method
