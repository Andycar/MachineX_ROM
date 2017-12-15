.class Lcom/samsung/android/privatemode/PrivateModeManager$2$1;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/PrivateModeManager$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeManager$2;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 210
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 212
    :try_start_6
    const-string v1, "PPS_PrivateModeManager"

    const-string v2, "bindPrivateModeManager, onStateChange : PREPARED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$300()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    .line 219
    :cond_16
    :goto_16
    return-void

    .line 214
    :catch_17
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager$2$1;->this$1:Lcom/samsung/android/privatemode/PrivateModeManager$2;

    iget-object v1, v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;->this$0:Lcom/samsung/android/privatemode/PrivateModeManager;

    const-string v2, "bindPrivateModeManager"

    const/4 v3, 0x0

    # invokes: Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$400(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_16
.end method
