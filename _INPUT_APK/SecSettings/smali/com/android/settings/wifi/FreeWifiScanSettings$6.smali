.class Lcom/android/settings/wifi/FreeWifiScanSettings$6;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$6;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$6;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$100(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    .line 252
    return-void
.end method
