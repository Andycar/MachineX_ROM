.class Lcom/android/systemui/SearchPanelCircleView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;->performExitFadeOutAnimation(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    iput-object p2, p0, Lcom/android/systemui/SearchPanelCircleView$8;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 426
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$800(Lcom/android/systemui/SearchPanelCircleView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$700(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0, v2}, Lcom/android/systemui/SearchPanelCircleView;->access$502(Lcom/android/systemui/SearchPanelCircleView;F)F

    .line 432
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$8;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->access$902(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 433
    return-void
.end method
