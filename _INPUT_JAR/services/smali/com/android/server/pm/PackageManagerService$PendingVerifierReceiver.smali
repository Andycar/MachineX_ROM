.class Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingVerifierReceiver"
.end annotation


# instance fields
.field private mState:Lcom/android/server/pm/PackageVerificationState;

.field private mSufficientVerifierTimeout:Z

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V
    .registers 5
    .param p2, "state"    # Lcom/android/server/pm/PackageVerificationState;
    .param p3, "uid"    # I
    .param p4, "sufficientVerifierTimeout"    # Z

    .prologue
    .line 12561
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12562
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    .line 12563
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    .line 12564
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    .line 12565
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12569
    const-string v2, "PackageManager"

    const-string v3, "VERIFY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive for RequiredVerifier id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12570
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    monitor-enter v3

    .line 12571
    :try_start_28
    new-instance v1, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse()I
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;)I

    move-result v2

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-direct {v1, v2, v4}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 12574
    .local v1, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageVerificationState;->isCurrentVerifier(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 12575
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    .line 12576
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 12577
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 12578
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12579
    const-string v2, "PackageManager"

    const-string v4, "VERIFY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessageDelayed(CHECK_PENDING_VERIFICATION, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12581
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12584
    .end local v0    # "msg":Landroid/os/Message;
    :cond_aa
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->isSufficientVerificationComplete()Z

    move-result v2

    if-nez v2, :cond_119

    .line 12585
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x15

    invoke-virtual {v2, v4, v1}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    .line 12586
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 12587
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 12588
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12589
    const-string v2, "PackageManager"

    const-string v4, "VERIFY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessageDelayed(SUFFICIENT_VERIFICATION_TIMEOUT, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12591
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12593
    .end local v0    # "msg":Landroid/os/Message;
    :cond_119
    monitor-exit v3

    .line 12594
    return-void

    .line 12593
    .end local v1    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :catchall_11b
    move-exception v2

    monitor-exit v3
    :try_end_11d
    .catchall {:try_start_28 .. :try_end_11d} :catchall_11b

    throw v2
.end method
