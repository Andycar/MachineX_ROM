.class Lcom/android/keyguard/sec/MassTensionUnlockView$2;
.super Ljava/lang/Object;
.source "MassTensionUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 225
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 237
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 238
    .local v1, "fromX":I
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 239
    .local v2, "fromY":I
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v5, Landroid/graphics/Point;->x:I

    .line 240
    .local v3, "toX":I
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v5, v5, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 242
    .local v4, "toY":I
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setX(F)V

    .line 243
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setY(F)V

    .line 244
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$100(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 247
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 248
    iget-object v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView$2;->this$0:Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-static {v5}, Lcom/android/keyguard/sec/MassTensionUnlockView;->access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    return-void
.end method
