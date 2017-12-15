.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_21

    .line 95
    :goto_7
    const/4 v1, 0x0

    .line 97
    .local v1, "onlyCore":Z
    :try_start_8
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_2a

    move-result v1

    .line 101
    :goto_17
    if-nez v1, :cond_20

    .line 102
    :try_start_19
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_2a

    .line 108
    :cond_20
    :goto_20
    return-void

    .line 91
    .end local v1    # "onlyCore":Z
    :catch_21
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    const-string v3, "Can\'t log boot events"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "onlyCore":Z
    :catch_2a
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    const-string v3, "Can\'t remove old update packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v2

    goto :goto_17
.end method
