.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
.super Landroid/os/AsyncTask;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isCaptive:Z

.field private isWiFiConnAvailable:Z

.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p2, "x1"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 66
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-nez v0, :cond_0

    .line 47
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Internet connection Unavilable "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->setResult(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, "Page is still captive portal, doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Has Internet connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->setResult(I)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
