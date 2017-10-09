.class Lcom/android/server/epm/overlay/OverlayManagerService$1;
.super Ljava/util/TimerTask;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/OverlayManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

.field val:I

.field final synthetic val$mTimer:Ljava/util/Timer;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/OverlayManagerService;Ljava/lang/String;Ljava/util/Timer;)V
    .registers 5

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val$mTimer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 264
    :try_start_0
    const-string v2, "USER_TRIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_TRIAL -- startExpiryTimerForUninstall val= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expiryTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    # getter for: Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I
    invoke-static {v4}, Lcom/android/server/epm/overlay/OverlayManagerService;->access$000(Lcom/android/server/epm/overlay/OverlayManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    # getter for: Lcom/android/server/epm/overlay/OverlayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/OverlayManagerService;->access$100(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val$pkgName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 266
    .local v1, "masterContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    # getter for: Lcom/android/server/epm/overlay/OverlayManagerService;->KEY_VALUE:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/epm/overlay/OverlayManagerService;->access$200(Lcom/android/server/epm/overlay/OverlayManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/epm/overlay/OverlayManagerService;->getData(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    .line 267
    const-string v2, "USER_TRIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_TRIAL -- AFTER GET DATA startExpiryTimerForUninstall val= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    iget-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    # getter for: Lcom/android/server/epm/overlay/OverlayManagerService;->expiryTime:I
    invoke-static {v3}, Lcom/android/server/epm/overlay/OverlayManagerService;->access$000(Lcom/android/server/epm/overlay/OverlayManagerService;)I

    move-result v3

    if-lt v2, v3, :cond_86

    .line 271
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val$mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 272
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    .line 273
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    iget v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/epm/overlay/OverlayManagerService;->storeData(Landroid/content/Context;I)V

    .line 274
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    # getter for: Lcom/android/server/epm/overlay/OverlayManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/epm/overlay/OverlayManagerService;->access$300(Lcom/android/server/epm/overlay/OverlayManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val$pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 282
    .end local v1    # "masterContext":Landroid/content/Context;
    :goto_85
    return-void

    .line 276
    .restart local v1    # "masterContext":Landroid/content/Context;
    :cond_86
    iget v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    .line 277
    iget-object v2, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->this$0:Lcom/android/server/epm/overlay/OverlayManagerService;

    iget v3, p0, Lcom/android/server/epm/overlay/OverlayManagerService$1;->val:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/epm/overlay/OverlayManagerService;->storeData(Landroid/content/Context;I)V
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_85

    .line 279
    .end local v1    # "masterContext":Landroid/content/Context;
    :catch_94
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_85
.end method
