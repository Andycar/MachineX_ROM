.class Lcom/android/settings/wifi/mobileap/WifiApSettings$20;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V
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
    .line 1334
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$20;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 1336
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$20;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1337
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$20;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1338
    return-void
.end method
