.class Lcom/android/keyguard/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .locals 1

    .prologue
    .line 2102
    iput-object p1, p0, Lcom/android/keyguard/PagedView$3;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView$3;->cancelled:Z

    .line 2107
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2110
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/keyguard/PagedView$3;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->access$300(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    :cond_0
    return-void
.end method
