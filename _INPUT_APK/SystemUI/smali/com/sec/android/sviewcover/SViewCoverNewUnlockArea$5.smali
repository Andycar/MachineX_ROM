.class Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 785
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 787
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimator() - strokeAnimationValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationUpdate(F)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V

    .line 790
    return-void
.end method
