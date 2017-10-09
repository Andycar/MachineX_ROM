.class Lcom/sec/android/sviewcover/PagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/PagedView;->animateDragViewToOriginalPosition()V
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
    .line 2158
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView$4;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView$4;->this$0:Lcom/sec/android/sviewcover/PagedView;

    invoke-static {v0}, Lcom/sec/android/sviewcover/PagedView;->access$400(Lcom/sec/android/sviewcover/PagedView;)V

    .line 2162
    return-void
.end method
