.class Lcom/android/keyguard/MultiPaneChallengeLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MultiPaneChallengeLayout;->showBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$2;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout$2;->this$0:Lcom/android/keyguard/MultiPaneChallengeLayout;

    invoke-static {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->access$000(Lcom/android/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method
