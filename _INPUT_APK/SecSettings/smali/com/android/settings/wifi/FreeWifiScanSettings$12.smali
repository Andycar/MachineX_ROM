.class Lcom/android/settings/wifi/FreeWifiScanSettings$12;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V
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
    .line 644
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$12;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$12;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;->onScanCompleted(Ljava/lang/Boolean;)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$12;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$12;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$12;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$600(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    .line 652
    return-void
.end method
