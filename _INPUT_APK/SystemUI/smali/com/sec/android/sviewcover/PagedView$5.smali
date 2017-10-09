.class Lcom/sec/android/sviewcover/PagedView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/PagedView;->zoomOut()Z
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
    .line 2180
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v1}, Lcom/sec/android/sviewcover/PagedView;->access$600(Lcom/sec/android/sviewcover/PagedView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/sviewcover/PagedView$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/PagedView$5$1;-><init>(Lcom/sec/android/sviewcover/PagedView$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2195
    :cond_0
    return-void
.end method
