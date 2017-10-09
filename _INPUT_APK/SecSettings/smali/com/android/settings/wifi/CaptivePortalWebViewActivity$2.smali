.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;
.super Ljava/lang/Object;
.source "CaptivePortalWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$600(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->finish()V

    .line 170
    return-void
.end method
