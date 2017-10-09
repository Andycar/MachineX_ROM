.class Lcom/sec/android/sviewcover/PagedView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/PagedView$8;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/PagedView$8;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/PagedView$8;)V
    .locals 0

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$8$1;->this$1:Lcom/sec/android/sviewcover/PagedView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$8$1;->this$1:Lcom/sec/android/sviewcover/PagedView$8;

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView$8;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2341
    return-void
.end method
