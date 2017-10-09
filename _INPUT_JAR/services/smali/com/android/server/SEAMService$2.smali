.class Lcom/android/server/SEAMService$2;
.super Landroid/content/BroadcastReceiver;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService;->registerSPDCompleteReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/SEAMService$2;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 366
    # getter for: Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;
    invoke-static {}, Lcom/android/server/SEAMService;->access$100()Lcom/android/server/SKLogger;

    move-result-object v0

    const-string v1, "SEAMService"

    const-string v2, "SPD Complete intent received"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v0, "selinux.reload_policy"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    # getter for: Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;
    invoke-static {}, Lcom/android/server/SEAMService;->access$100()Lcom/android/server/SKLogger;

    move-result-object v0

    const-string v1, "SEAMService"

    const-string v2, "done with reload policy after spd update"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/android/server/SEAMService$2;->this$0:Lcom/android/server/SEAMService;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    # setter for: Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v1, v0}, Lcom/android/server/SEAMService;->access$202(Lcom/android/server/SEAMService;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService;

    .line 370
    iget-object v0, p0, Lcom/android/server/SEAMService$2;->this$0:Lcom/android/server/SEAMService;

    # getter for: Lcom/android/server/SEAMService;->mPMS:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Lcom/android/server/SEAMService;->access$200(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->reloadSBAPolicy()V

    .line 371
    return-void
.end method
