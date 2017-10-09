.class Lcom/sec/android/sviewcover/PagedView$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/PagedView$5;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/PagedView$5;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/PagedView$5;)V
    .locals 0

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$5$1;->this$1:Lcom/sec/android/sviewcover/PagedView$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$5$1;->this$1:Lcom/sec/android/sviewcover/PagedView$5;

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView$5;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2192
    return-void
.end method
