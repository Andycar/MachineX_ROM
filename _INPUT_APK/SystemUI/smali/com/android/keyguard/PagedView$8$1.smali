.class Lcom/android/keyguard/PagedView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView$8;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PagedView$8;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView$8;)V
    .locals 0

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/keyguard/PagedView$8$1;->this$1:Lcom/android/keyguard/PagedView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/keyguard/PagedView$8$1;->this$1:Lcom/android/keyguard/PagedView$8;

    iget-object v0, v0, Lcom/android/keyguard/PagedView$8;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2358
    return-void
.end method
