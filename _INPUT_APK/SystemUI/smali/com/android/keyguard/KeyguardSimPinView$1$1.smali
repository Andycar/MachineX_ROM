.class Lcom/android/keyguard/KeyguardSimPinView$1$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$1;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$1;II)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 223
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$102(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 257
    return-void

    .line 235
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    if-ne v0, v3, :cond_3

    .line 236
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-static {}, Lcom/android/keyguard/KeyguardSimPinView;->access$000()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 249
    :goto_1
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$1$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$1;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$1;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1
.end method
