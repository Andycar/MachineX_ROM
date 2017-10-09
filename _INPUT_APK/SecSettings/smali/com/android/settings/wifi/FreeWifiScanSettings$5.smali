.class Lcom/android/settings/wifi/FreeWifiScanSettings$5;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/FreeWifiScanPickerDialog$OnScanButtonPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 221
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$5;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanPressed()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "FreeWifiScanSettings"

    const-string v1, "SCAN BUTTON PRESSED IN FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/FreeWifiScanSettings$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$5$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method
