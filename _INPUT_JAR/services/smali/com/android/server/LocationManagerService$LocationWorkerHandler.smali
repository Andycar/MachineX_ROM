.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2644
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2649
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 2677
    :goto_7
    :pswitch_7
    return-void

    .line 2652
    :pswitch_8
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2656
    :cond_e
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1c

    :goto_18
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_7

    :cond_1c
    move v1, v2

    goto :goto_18

    .line 2660
    :pswitch_1e
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2663
    :cond_24
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iput-boolean v2, v0, Lcom/android/server/LocationManagerService;->mSendLocationBroadcast:Z

    goto :goto_7

    .line 2667
    :pswitch_29
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2668
    const-string v0, "LocationManagerService"

    const-string v1, "MESSAGE_SEND_BROADCAST_REQ_CELL_INFO_UPDATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_36
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const-string v1, "network"

    # invokes: Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    goto :goto_7

    .line 2649
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1e
        :pswitch_29
    .end packed-switch
.end method
