.class Landroid/service/fingerprint/FingerprintManager$2;
.super Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/service/fingerprint/FingerprintManager;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(I)V
    .registers 5
    .param p1, "acquireInfo"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public onEnrollResult(II)V
    .registers 5
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 114
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public onError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 126
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public onProcessed(I)V
    .registers 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method

.method public onRemoved(I)V
    .registers 5
    .param p1, "fingerprintId"    # I

    .prologue
    .line 130
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager$2;->this$0:Landroid/service/fingerprint/FingerprintManager;

    # getter for: Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/fingerprint/FingerprintManager;->access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method
