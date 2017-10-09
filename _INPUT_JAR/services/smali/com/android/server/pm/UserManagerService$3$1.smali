.class Lcom/android/server/pm/UserManagerService$3$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$3;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$3;)V
    .registers 2

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1733
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_23

    .line 1734
    :try_start_12
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget v3, v3, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    # invokes: Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v3}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;I)V

    .line 1735
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_20

    .line 1736
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_23

    .line 1737
    return-void

    .line 1735
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0

    .line 1736
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    throw v0
.end method
