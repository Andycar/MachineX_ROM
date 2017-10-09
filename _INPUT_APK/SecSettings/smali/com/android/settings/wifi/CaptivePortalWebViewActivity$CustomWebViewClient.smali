.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p2, "x1"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 109
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Dismiss Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$300(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    if-eqz p3, :cond_1

    .line 101
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$400(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, "shouldoverride"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    new-instance v1, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    :goto_0
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v3

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->cancel(Z)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    new-instance v1, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
