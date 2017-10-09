.class Lcom/android/server/pm/PersonaManagerService$5$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$5;)V
    .registers 2

    .prologue
    .line 5321
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    iget v1, v1, Lcom/android/server/pm/PersonaManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5324
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5325
    :try_start_14
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "removeUserStateLocked is called..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5326
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$5$1;->this$1:Lcom/android/server/pm/PersonaManagerService$5;

    iget v2, v2, Lcom/android/server/pm/PersonaManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5327
    monitor-exit v1

    .line 5328
    return-void

    .line 5327
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_29

    throw v0
.end method
