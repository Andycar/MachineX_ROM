.class Lcom/android/server/VRManagerService$1;
.super Landroid/os/Handler;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VRManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/VRManagerService;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 75
    :goto_5
    return-void

    .line 64
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_d
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 66
    const-string v0, "VRManagerService"

    const-string v2, "VRConnection timeout for VRService!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VRManagerService$VRConnection;->close()V

    .line 68
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0, v2}, Lcom/android/server/VRManagerService;->access$102(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$VRConnection;)Lcom/android/server/VRManagerService$VRConnection;

    .line 70
    :cond_2b
    monitor-exit v1

    goto :goto_5

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2d

    throw v0

    .line 62
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
