.class Lcom/android/keyguard/FaceUnlock$2;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "FaceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FaceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FaceUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FaceUnlock;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "FULLockscreen"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v0}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 4
    .param p1, "millis"    # I

    .prologue
    .line 454
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v1}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v1}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "FULLockscreen"

    const-string v1, "reportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v0}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void
.end method

.method public unlock()V
    .locals 5

    .prologue
    .line 428
    const-string v1, "FULLockscreen"

    const-string v2, "unlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v1}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock$2;->this$0:Lcom/android/keyguard/FaceUnlock;

    invoke-static {v1}, Lcom/android/keyguard/FaceUnlock;->access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method
