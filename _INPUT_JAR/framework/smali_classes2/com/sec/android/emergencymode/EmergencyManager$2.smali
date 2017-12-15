.class Lcom/sec/android/emergencymode/EmergencyManager$2;
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
    .line 120
    iput-object p1, p0, Lcom/sec/android/emergencymode/EmergencyManager$2;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 131
    :cond_7
    :goto_7
    return-void

    .line 126
    :cond_8
    const-string v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "com.sec.android.emergencymode.UltraPowerSavingManager.ORDER_ULTRA_POWERSAVING_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    const-string v2, "enable"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 129
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/sec/android/emergencymode/EmergencyManager$2;->this$0:Lcom/sec/android/emergencymode/EmergencyManager;

    const/16 v3, 0x200

    # invokes: Lcom/sec/android/emergencymode/EmergencyManager;->triggerEmergencyMode(ZIZ)V
    invoke-static {v2, v1, v3, v5}, Lcom/sec/android/emergencymode/EmergencyManager;->access$000(Lcom/sec/android/emergencymode/EmergencyManager;ZIZ)V

    goto :goto_7
.end method
