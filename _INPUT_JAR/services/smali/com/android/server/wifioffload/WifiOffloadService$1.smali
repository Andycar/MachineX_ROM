.class Lcom/android/server/wifioffload/WifiOffloadService$1;
.super Landroid/os/Handler;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_19

    .line 525
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "Message received , call offloading flow "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$000(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifioffload/WifiOffloadService;->access$100(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V

    .line 531
    :cond_18
    :goto_18
    return-void

    .line 527
    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_18

    .line 528
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "<<< STARTING dialog now >>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService$1;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # invokes: Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V
    invoke-static {v0}, Lcom/android/server/wifioffload/WifiOffloadService;->access$200(Lcom/android/server/wifioffload/WifiOffloadService;)V

    goto :goto_18
.end method
