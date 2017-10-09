.class Lcom/android/server/BatteryService$1$7;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$1;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$1;)V
    .registers 2

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/server/BatteryService$1$7;->this$1:Lcom/android/server/BatteryService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 414
    # getter for: Lcom/android/server/BatteryService;->SUPPORT_LOG_BATTERY_USAGE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 415
    iget-object v0, p0, Lcom/android/server/BatteryService$1$7;->this$1:Lcom/android/server/BatteryService$1;

    iget-object v0, v0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->logDischargeLevel()V

    .line 417
    :cond_d
    return-void
.end method
