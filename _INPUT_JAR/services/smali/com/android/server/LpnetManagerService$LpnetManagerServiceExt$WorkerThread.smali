.class Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;
.super Ljava/lang/Thread;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    .line 2093
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2094
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2096
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2097
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    new-instance v1, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;-><init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$1;)V

    # setter for: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5702(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;)Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    .line 2098
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2099
    return-void
.end method
