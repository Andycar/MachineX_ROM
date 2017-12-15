.class Lcom/sec/android/emergencymode/EmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/emergencymode/EmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/emergencymode/EmergencyManager;


# direct methods
.method constructor <init>(Lcom/sec/android/emergencymode/EmergencyManager;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 117
    :cond_8
    :goto_8
    return-void

    .line 104
    :cond_9
    const-string v5, "EmergencyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 106
    const-string v5, "enabled"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    .local v1, "enabled":Z
    const-string v5, "flag"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "flag":I
    const-string/jumbo v5, "skipdialog"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 109
    .local v3, "skipdialog":Z
    if-eq v2, v8, :cond_8

    .line 110
    iget-object v4, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/sec/android/emergencymode/EmergencyManager;->access$000(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V

    goto :goto_8

    .line 112
    .end local v1    # "enabled":Z
    .end local v2    # "flag":I
    .end local v3    # "skipdialog":Z
    :cond_44
    const-string v5, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 113
    iget-object v5, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # getter for: Lcom/sec/android/emergencymode/EmergencyManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->access$100(Lcom/sec/android/emergencymode/EmergencyManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_61

    const/4 v1, 0x1

    .line 114
    .restart local v1    # "enabled":Z
    :goto_59
    const/16 v2, 0x10

    .line 115
    .restart local v2    # "flag":I
    iget-object v5, p0, Lcom/sec/android/emergencymode/EmergencyManager$1;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V
    invoke-static {v5, v1, v2, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->access$000(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V

    goto :goto_8

    .end local v1    # "enabled":Z
    .end local v2    # "flag":I
    :cond_61
    move v1, v4

    .line 113
    goto :goto_59
.end method
