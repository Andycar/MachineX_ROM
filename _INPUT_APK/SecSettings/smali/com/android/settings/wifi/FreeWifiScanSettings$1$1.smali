.class Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/FreeWifiScanSettings$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanSettings$1;

    iput-object p2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "onReceive - run"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->this$1:Lcom/android/settings/wifi/FreeWifiScanSettings$1;

    iget-object v0, v0, Lcom/android/settings/wifi/FreeWifiScanSettings$1;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 164
    return-void
.end method
