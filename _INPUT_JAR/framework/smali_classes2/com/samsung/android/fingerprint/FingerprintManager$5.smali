.class Lcom/samsung/android/fingerprint/FingerprintManager$5;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .registers 2

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1503
    move-object v1, p1

    .line 1504
    .local v1, "mEvent":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1505
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$5;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$5$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$5;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 1541
    :cond_17
    :goto_17
    return-void

    .line 1538
    :catch_18
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
