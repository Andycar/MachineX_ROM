.class Landroid/app/BarBeamService$1;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3b

    .line 191
    const-string v2, "BarBeamService"

    const-string v3, "Led in handler : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    const/4 v3, 0x0

    # invokes: Landroid/app/BarBeamService;->setLEDNotification(Z)V
    invoke-static {v2, v3}, Landroid/app/BarBeamService;->access$100(Landroid/app/BarBeamService;Z)V

    .line 193
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v3, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 194
    :try_start_18
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamService$Listener;

    .line 195
    .local v1, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v1}, Landroid/app/BarBeamService$Listener;->onBeamingStoppped()V

    goto :goto_20

    .line 198
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v2

    .line 197
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_33
    :try_start_33
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    iget-object v2, v2, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    .line 200
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3b
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_4e

    .line 201
    const-string v2, "BarBeamService"

    const-string v3, "Led in handler : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    const/4 v3, 0x1

    # invokes: Landroid/app/BarBeamService;->setLEDNotification(Z)V
    invoke-static {v2, v3}, Landroid/app/BarBeamService;->access$100(Landroid/app/BarBeamService;Z)V

    .line 204
    :cond_4e
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_60

    .line 205
    const-string v2, "BarBeamService"

    const-string v3, "StopBeaming by no binder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Landroid/app/BarBeamService$1;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v2}, Landroid/app/BarBeamService;->stopBeaming()V

    .line 208
    :cond_60
    return-void
.end method
