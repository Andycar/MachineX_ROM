.class Lcom/android/keyguard/PagedView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .locals 0

    .prologue
    .line 2709
    iput-object p1, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2720
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2721
    iget-object v0, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2722
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 2712
    iget-object v0, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2713
    iget-object v0, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    iget v0, v0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2714
    iget-object v0, p0, Lcom/android/keyguard/PagedView$13;->this$0:Lcom/android/keyguard/PagedView;

    const-string v1, "onScreen end"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/PagedView;->access$1100(Lcom/android/keyguard/PagedView;Ljava/lang/String;Z)V

    .line 2716
    :cond_0
    return-void
.end method
