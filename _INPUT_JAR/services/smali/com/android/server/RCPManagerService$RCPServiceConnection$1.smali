.class Lcom/android/server/RCPManagerService$RCPServiceConnection$1;
.super Ljava/lang/Object;
.source "RCPManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService$RCPServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService$RCPServiceConnection;)V
    .registers 2

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v0, v0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v1, v1, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1512
    iget-object v0, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v0, v0, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v1, v1, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1513
    :cond_21
    return-void
.end method
