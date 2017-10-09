.class Lcom/android/server/MountService$9;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    .prologue
    .line 3797
    iput-object p1, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3799
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3800
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MountService"

    const-string v2, "mPolicyReceiver :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v1, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    const-string/jumbo v3, "storage_itpolicy"

    # invokes: Lcom/android/server/MountService;->hasDeviceRestriction(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v2

    # invokes: Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;Z)V

    .line 3802
    return-void
.end method
