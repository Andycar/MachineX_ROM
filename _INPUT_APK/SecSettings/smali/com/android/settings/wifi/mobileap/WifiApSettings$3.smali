.class Lcom/android/settings/wifi/mobileap/WifiApSettings$3;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 2
    .param p1, "bOn"    # Z

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    const-string v0, "WifiApSettings"

    const-string v1, "MOBILE AP .STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    .line 297
    :cond_0
    return-void
.end method
