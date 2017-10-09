.class Lcom/android/server/LpnetManagerService$5$5;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$5;)V
    .registers 2

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$5;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 946
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "LpnetManagerService"

    const-string v1, "ACTION_TRIGGER_IDLE Not Triggered as Screen On"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_d
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$5;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$5$5;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$3300(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->screenOffAction(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/LpnetManagerService;->access$2000(Lcom/android/server/LpnetManagerService;J)V

    .line 948
    return-void
.end method
