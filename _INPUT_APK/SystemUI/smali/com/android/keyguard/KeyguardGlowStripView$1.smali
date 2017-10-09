.class Lcom/android/keyguard/KeyguardGlowStripView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardGlowStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardGlowStripView;->makeEmGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardGlowStripView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardGlowStripView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardGlowStripView;->access$002(Lcom/android/keyguard/KeyguardGlowStripView;Z)Z

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardGlowStripView;->invalidate()V

    .line 121
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView$1;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardGlowStripView;->access$002(Lcom/android/keyguard/KeyguardGlowStripView;Z)Z

    .line 126
    return-void
.end method
