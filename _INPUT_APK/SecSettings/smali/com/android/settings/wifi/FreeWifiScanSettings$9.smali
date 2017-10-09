.class Lcom/android/settings/wifi/FreeWifiScanSettings$9;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;->handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

.field final synthetic val$ssid:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->val$ssid:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->val$ssid:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$9;->val$value:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$200(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    .line 467
    return-void
.end method
