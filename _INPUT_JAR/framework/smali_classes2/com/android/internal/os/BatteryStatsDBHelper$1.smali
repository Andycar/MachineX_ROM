.class Lcom/android/internal/os/BatteryStatsDBHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsDBHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDBHelper$1;->this$0:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Sending fake excessive power drain broadcast"

    # invokes: Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "sec.intent.action.BATTERY_ABUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "i":Landroid/content/Intent;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsDBHelper;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
