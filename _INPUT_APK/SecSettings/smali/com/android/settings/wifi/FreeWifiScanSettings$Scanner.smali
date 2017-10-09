.class Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;
.super Landroid/os/Handler;
.source "FreeWifiScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private isSelfStartedScan:Z

.field private retryCount:I

.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Lcom/android/settings/wifi/FreeWifiScanSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/FreeWifiScanSettings;
    .param p2, "x1"    # Lcom/android/settings/wifi/FreeWifiScanSettings$1;

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 973
    const-string v0, "FreeWifiScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanner Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 977
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    iput-boolean v4, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->isSelfStartedScan:Z

    .line 980
    iput v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->retryCount:I

    .line 981
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1100(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 982
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->retryCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 983
    iput v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->retryCount:I

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1100(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/Boolean;)V

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a03ea

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1100(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/Boolean;)V

    .line 990
    const/16 v0, 0x1389

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 995
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-boolean v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->isSelfStartedScan:Z

    if-eqz v0, :cond_3

    .line 997
    iput-boolean v3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->isSelfStartedScan:Z

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1202(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/util/List;)Ljava/util/List;

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "Unblocking Scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1402(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)Z

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$Scanner;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$100(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    goto/16 :goto_0

    .line 974
    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
