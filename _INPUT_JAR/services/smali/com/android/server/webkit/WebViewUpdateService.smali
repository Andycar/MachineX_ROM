.class public Lcom/android/server/webkit/WebViewUpdateService;
.super Lcom/android/server/SystemService;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateService$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewUpdateService"

.field private static final WAIT_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mRelroReady32Bit:Z

.field private mRelroReady64Bit:Z

.field private mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateService;->onWebViewUpdateInstalled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/webkit/WebViewUpdateService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/webkit/WebViewUpdateService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    return p1
.end method

.method private onWebViewUpdateInstalled()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "WebViewUpdateService"

    const-string v1, "WebView Package updated!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady32Bit:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mRelroReady64Bit:Z

    .line 74
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 75
    invoke-static {}, Landroid/webkit/WebViewFactory;->onWebViewUpdateInstalled()V

    .line 76
    return-void

    .line 74
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public onStart()V
    .registers 5

    .prologue
    .line 51
    new-instance v1, Lcom/android/server/webkit/WebViewUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/webkit/WebViewUpdateService$1;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "webviewupdate"

    new-instance v2, Lcom/android/server/webkit/WebViewUpdateService$BinderService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/webkit/WebViewUpdateService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    return-void
.end method
