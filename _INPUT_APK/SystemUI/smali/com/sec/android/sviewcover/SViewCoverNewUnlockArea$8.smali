.class Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;
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
    .line 817
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 820
    .local v0, "value":F
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 821
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3602(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 822
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationUpdate(F)V

    .line 823
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    .line 824
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V

    .line 825
    return-void
.end method
