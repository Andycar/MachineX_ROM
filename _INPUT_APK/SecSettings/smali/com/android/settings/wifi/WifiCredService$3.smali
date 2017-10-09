.class Lcom/android/settings/wifi/WifiCredService$3;
.super Ljava/util/TimerTask;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCredService;->scheduleExpiryTimer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;

.field final synthetic val$expiryTimer:Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCredService;Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiCredService$3;->val$expiryTimer:Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 209
    .local v0, "credIdVal":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->val$expiryTimer:Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$400(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)I

    move-result v0

    .line 210
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCredService$3;->val$expiryTimer:Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 211
    if-ltz v0, :cond_1

    .line 212
    const-string v3, "WifiCredService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " expiration timer expired "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 215
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_0

    .line 216
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->HS20CredId:I

    if-ne v3, v0, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 223
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 224
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0xce

    iput v3, v1, Landroid/os/Message;->what:I

    .line 225
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 227
    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$3;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 229
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method
