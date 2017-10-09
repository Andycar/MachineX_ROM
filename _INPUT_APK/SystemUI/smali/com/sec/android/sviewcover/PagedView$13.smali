.class Lcom/sec/android/sviewcover/PagedView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/PagedView;)V
    .locals 0

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$13;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 2695
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$13;->this$0:Lcom/sec/android/sviewcover/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->access$1002(Lcom/sec/android/sviewcover/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2696
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$13;->this$0:Lcom/sec/android/sviewcover/PagedView;

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$13;->this$0:Lcom/sec/android/sviewcover/PagedView;

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$13;->this$0:Lcom/sec/android/sviewcover/PagedView;

    const-string v1, "onScreen end"

    invoke-static {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->access$1100(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/String;Z)V

    .line 2699
    :cond_0
    return-void
.end method
