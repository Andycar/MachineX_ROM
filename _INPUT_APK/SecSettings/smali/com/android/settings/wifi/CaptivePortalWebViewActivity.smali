.class public Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.super Landroid/app/Activity;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;,
        Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    }
.end annotation


# static fields
.field private static mProgressBar:Landroid/widget/ProgressBar;


# instance fields
.field private mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

.field protected mContext:Landroid/content/Context;

.field private mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

.field private mWebview:Landroid/webkit/WebView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    .line 74
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1, "x1"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Landroid/webkit/SslErrorHandler;
    .param p3, "x3"    # Landroid/net/http/SslError;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Landroid/webkit/SslErrorHandler;
    .param p3, "x3"    # Landroid/net/http/SslError;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Landroid/webkit/SslErrorHandler;
    .param p3, "x3"    # Landroid/net/http/SslError;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 294
    iget-object v5, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 295
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v5, 0x7f040150

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, "pageInfoView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "title":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 301
    const-string v4, ""

    .line 303
    :cond_0
    if-nez v3, :cond_1

    .line 304
    const-string v3, ""

    .line 307
    :cond_1
    const v5, 0x7f1002d6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v5, 0x7f100086

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0412

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a091f

    new-instance v7, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$11;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$10;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method private createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 214
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 215
    .local v0, "certificate":Landroid/net/http/SslCertificate;
    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, "certificateView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a040f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 219
    .local v2, "newDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a091f

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$5;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a040e

    new-instance v5, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$4;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$3;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    return-object v2
.end method

.method private createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0410

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040d

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$9;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0411

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$8;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01d1

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$7;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$6;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    .local v0, "newDialog":Landroid/app/AlertDialog$Builder;
    return-object v0
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 178
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->requestWindowFeature(I)Z

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 132
    :cond_0
    const v2, 0x7f040240

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->setContentView(I)V

    .line 133
    iput-object p0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mContext:Landroid/content/Context;

    .line 134
    move-object v0, p0

    .line 135
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    .line 136
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    .line 138
    const v2, 0x7f100525

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    .line 139
    const v2, 0x7f1001a1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    sput-object v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 145
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 148
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v3, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 161
    const-string v2, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v3, "Load the Page in WebView : http://www.google.com/"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    const-string v3, "http://www.google.com/"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    iput-object v5, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 165
    const v2, 0x7f100527

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    .local v1, "captiveportalcancel":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$2;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->setIndicatorTransparency()V

    .line 173
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 202
    iput-object v1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebViewClient:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 204
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " OnResume Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiNetworkId:I

    iget-object v1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 185
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " WiFi AP changed by Settings Application -- Check this AP for Internet connection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->cancel(Z)Z

    .line 191
    iput-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 192
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 117
    return-void
.end method
