.class Lcom/android/settings/wifi/FreeWifiScanSettings$14;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;->scanPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$14;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$14;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$14;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$14;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$800(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    .line 754
    return-void
.end method
