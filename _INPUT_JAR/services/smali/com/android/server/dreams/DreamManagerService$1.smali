.class Lcom/android/server/dreams/DreamManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_7
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/dreams/DreamManagerService;->access$300(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
