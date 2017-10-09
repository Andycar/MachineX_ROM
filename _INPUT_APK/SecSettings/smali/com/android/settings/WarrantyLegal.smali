.class public Lcom/android/settings/WarrantyLegal;
.super Landroid/app/Activity;
.source "WarrantyLegal.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showPageOfText()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/WarrantyLegal;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/warranty/warranty.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040241

    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyLegal;->setContentView(I)V

    .line 39
    const v0, 0x7f100528

    invoke-virtual {p0, v0}, Lcom/android/settings/WarrantyLegal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settings/WarrantyLegal;->mWebView:Landroid/webkit/WebView;

    .line 40
    iget-object v0, p0, Lcom/android/settings/WarrantyLegal;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/WarrantyLegal;->showPageOfText()V

    .line 44
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/settings/WarrantyLegal;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/settings/WarrantyLegal;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 59
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WarrantyLegal;->finish()V

    goto :goto_0
.end method
