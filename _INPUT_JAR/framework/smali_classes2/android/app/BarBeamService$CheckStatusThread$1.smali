.class Landroid/app/BarBeamService$CheckStatusThread$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BarBeamService$CheckStatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService$CheckStatusThread;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1e

    .line 165
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_3f

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "ret_status":Z
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    const-string v1, "BarBeamService"

    const-string v2, "check status ++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_19
    const-wide/16 v2, 0x1f4

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_40

    .line 175
    :goto_1e
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v1}, Landroid/app/BarBeamService;->getCurrentStatus()Z

    move-result v0

    .line 176
    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    .line 177
    const-string v1, "BarBeamService"

    const-string v2, "check status --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    const/4 v2, 0x0

    # setter for: Landroid/app/BarBeamService;->isRunning:Z
    invoke-static {v1, v2}, Landroid/app/BarBeamService;->access$002(Landroid/app/BarBeamService;Z)Z

    .line 179
    iget-object v1, p0, Landroid/app/BarBeamService$CheckStatusThread$1;->this$1:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, v1, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    .end local v0    # "ret_status":Z
    :cond_3f
    return-void

    .line 172
    .restart local v0    # "ret_status":Z
    :catch_40
    move-exception v1

    goto :goto_1e
.end method
