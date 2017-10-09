.class Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView$2;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView$2;II)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iput p2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 301
    :cond_0
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCheckResponse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$result:I

    if-nez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)V

    .line 306
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$500(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DSNETWORK"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock--DSNETWORK VALUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$600(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "DSNETWORK"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iput-boolean v6, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$1102(Lcom/android/keyguard/MSimKeyguardSimPinView;Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    .line 350
    return-void

    .line 316
    :cond_2
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$result:I

    if-ne v1, v5, :cond_5

    .line 320
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$attemptsRemaining:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_4

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 333
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->resetPasswordText(Z)V

    .line 335
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    .line 337
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$900(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x1040842

    invoke-interface {v1, v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 341
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$1002(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v1, v6}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    goto/16 :goto_0

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1
.end method
