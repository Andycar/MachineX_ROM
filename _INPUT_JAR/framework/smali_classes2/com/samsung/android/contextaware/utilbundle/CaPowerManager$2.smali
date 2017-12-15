.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .registers 2

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, -0x2e

    const/16 v4, -0x2f

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    .local v0, "timeStamp":J
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_14

    .line 176
    const-string v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 200
    :cond_13
    :goto_13
    return-void

    .line 177
    :cond_14
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_20

    .line 179
    const-string v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_13

    .line 180
    :cond_20
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_3d

    .line 182
    const-string v2, "AP_SLEEP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v5, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 184
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 185
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    goto :goto_13

    .line 186
    :cond_3d
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_53

    .line 188
    const-string v2, "AP_WAKEUP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v4, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_13

    .line 191
    :cond_53
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_66

    .line 193
    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_13

    .line 195
    :cond_66
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_13

    .line 197
    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_13
.end method
