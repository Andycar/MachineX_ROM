.class Lcom/android/keyguard/SlidingChallengeLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;Z)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    iput-boolean p2, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->val$show:Z

    invoke-static {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->access$200(Lcom/android/keyguard/SlidingChallengeLayout;Z)V

    .line 1079
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout$9;->val$show:Z

    invoke-static {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->access$100(Lcom/android/keyguard/SlidingChallengeLayout;Z)V

    .line 1075
    return-void
.end method
