.class Lcom/android/keyguard/PagedView$14;
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
    .line 2725
    iput-object p1, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2736
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2737
    iget-object v0, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2738
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2728
    iget-object v1, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/PagedView;->access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2729
    iget-object v1, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/PagedView;->access$1202(Lcom/android/keyguard/PagedView;Z)Z

    .line 2730
    iget-object v1, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2731
    .local v0, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    .line 2732
    return-void
.end method
