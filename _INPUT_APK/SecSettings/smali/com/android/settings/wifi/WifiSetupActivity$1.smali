.class Lcom/android/settings/wifi/WifiSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupActivity$1;->this$0:Lcom/android/settings/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 92
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSetupActivity$1;->this$0:Lcom/android/settings/wifi/WifiSetupActivity;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSetupActivity;->access$000(Lcom/android/settings/wifi/WifiSetupActivity;Z)V

    .line 93
    return-void
.end method
