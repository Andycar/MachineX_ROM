.class Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MSimKeyguardSimPukView$2;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPukView$2;II)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iput p2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 259
    :cond_0
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$result:I

    if-nez v1, :cond_4

    .line 260
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->mSubscription:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 266
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 269
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 274
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$600(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DSNETWORK"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSim()--DSNETWORK VALUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$700(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

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

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$902(Lcom/android/keyguard/MSimKeyguardSimPukView;Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;)Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iput-boolean v6, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 319
    return-void

    .line 294
    :cond_4
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$result:I

    if-ne v1, v5, :cond_6

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 301
    :goto_1
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 305
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$302(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I

    .line 307
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$800(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x1040842

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPukView;->resetPasswordText(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v1, v5}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 312
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v1, v6}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z

    .line 315
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    goto/16 :goto_0

    .line 298
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v2, v2, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView$2$1;->this$1:Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    iget-object v3, v3, Lcom/android/keyguard/MSimKeyguardSimPukView$2;->this$0:Lcom/android/keyguard/MSimKeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1
.end method
