.class Lcom/android/keyguard/KeyguardSimpleHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimpleHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimpleHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimpleHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimpleHostView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrustInitiatedByUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimpleHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimpleHostView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimpleHostView;->access$000(Lcom/android/keyguard/KeyguardSimpleHostView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimpleHostView;->dismiss(Z)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimpleHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimpleHostView$1;->this$0:Lcom/android/keyguard/KeyguardSimpleHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimpleHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 79
    return-void
.end method
