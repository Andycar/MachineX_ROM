.class Lcom/android/settings/wifi/WifiPoorConnection$3;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPoorConnection;

.field final synthetic val$mCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiPoorConnection;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiPoorConnection"

    const-string v2, "CANCEL BUTTON - CHECKBOX CHECKED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_poor_connection_warning"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a05a2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->finish()V

    .line 100
    return-void

    .line 93
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiPoorConnection"

    const-string v2, "CANCEL BUTTON - CHECKBOX UNCHECKED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
