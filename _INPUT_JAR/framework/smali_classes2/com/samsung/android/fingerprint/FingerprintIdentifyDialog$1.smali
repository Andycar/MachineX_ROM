.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 6
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p1

    .line 56
    .local v0, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 57
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :cond_20
    return-void
.end method
