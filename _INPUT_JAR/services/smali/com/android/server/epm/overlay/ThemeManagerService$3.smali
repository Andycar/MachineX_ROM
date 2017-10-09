.class Lcom/android/server/epm/overlay/ThemeManagerService$3;
.super Ljava/util/TimerTask;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field val:I


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .registers 3

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->val:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1517
    const-string v1, "USER_TRIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_TRIAL -- startExpiryTimerForUninstall val= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->val:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expiryTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1000(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "TIMER_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1526
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadCast sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V
    invoke-static {v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;Z)V

    .line 1529
    return-void
.end method
