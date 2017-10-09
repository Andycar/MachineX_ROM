.class Lcom/android/systemui/SearchPanelCircleView$Ripple;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ripple"
.end annotation


# instance fields
.field alpha:F

.field endRadius:F

.field radius:F

.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;FFF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput p2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->x:F

    .line 551
    iput p3, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->y:F

    .line 552
    iput p4, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->endRadius:F

    .line 553
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 588
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->x:F

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->y:F

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->radius:F

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView$Ripple;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v3}, Lcom/android/systemui/SearchPanelCircleView;->access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 589
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 559
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$Ripple$1;-><init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$Ripple$2;-><init>(Lcom/android/systemui/SearchPanelCircleView$Ripple;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 583
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 584
    return-void

    .line 556
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
