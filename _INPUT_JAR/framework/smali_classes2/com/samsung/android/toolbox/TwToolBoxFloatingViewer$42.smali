.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1899
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1900
    .local v0, "value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F
    invoke-static {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F

    .line 1901
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setAlpha(F)V

    .line 1902
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 1905
    .end local v0    # "value":Ljava/lang/Float;
    :goto_1f
    return-void

    .line 1903
    :catch_20
    move-exception v1

    goto :goto_1f
.end method
