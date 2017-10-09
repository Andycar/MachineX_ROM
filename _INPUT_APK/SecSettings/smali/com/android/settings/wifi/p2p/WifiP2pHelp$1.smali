.class Lcom/android/settings/wifi/p2p/WifiP2pHelp$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pHelp;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pHelp$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pHelp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    return-void
.end method
