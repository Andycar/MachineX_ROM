.class Lcom/samsung/android/fingerprint/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;->binderDied()V
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
    .line 276
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 279
    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const v2, 0x186a0

    invoke-direct {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    .line 281
    .local v1, "evt":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_8
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 282
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/fingerprint/IFingerprintClient;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_1b

    .line 289
    :cond_15
    :goto_15
    return-void

    .line 284
    :catch_16
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
