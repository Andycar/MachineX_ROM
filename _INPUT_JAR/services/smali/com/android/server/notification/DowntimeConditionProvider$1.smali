.class Lcom/android/server/notification/DowntimeConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 368
    .local v2, "now":J
    const-string v6, "DowntimeConditions.enter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "DowntimeConditions.exit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 369
    :cond_18
    const-string/jumbo v6, "time"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 370
    .local v4, "schTime":J
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$000()Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "DowntimeConditions"

    const-string v7, "%s scheduled for %s, fired at %s, delta=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->access$100(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sub-long v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v4    # "schTime":J
    :cond_4f
    :goto_4f
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mIsTouchwizDnd:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300()Z

    move-result v6

    if-eqz v6, :cond_106

    .line 380
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v6}, Lcom/android/server/notification/DowntimeConditionProvider;->access$400(Lcom/android/server/notification/DowntimeConditionProvider;)Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-nez v6, :cond_d5

    .line 381
    const-string v6, "DowntimeConditions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored because schedule turned off."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_77
    return-void

    .line 372
    :cond_78
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 373
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$000()Z

    move-result v6

    if-eqz v6, :cond_a3

    const-string v6, "DowntimeConditions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timezone changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_a3
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/android/server/notification/DowntimeConditionProvider;->access$200(Lcom/android/server/notification/DowntimeConditionProvider;)Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4f

    .line 376
    :cond_b1
    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/DowntimeConditionProvider;->access$000()Z

    move-result v6

    if-eqz v6, :cond_4f

    const-string v6, "DowntimeConditions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fired at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 385
    :cond_d5
    const/4 v1, 0x0

    .line 386
    .local v1, "reason":I
    const-string v6, "DowntimeConditions.enter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e6

    const-string v6, "DowntimeConditions.exit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 387
    :cond_e6
    const/4 v1, 0x5

    .line 393
    :cond_e7
    :goto_e7
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime(I)V
    invoke-static {v6, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$500(Lcom/android/server/notification/DowntimeConditionProvider;I)V

    .line 399
    .end local v1    # "reason":I
    :goto_ec
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V
    invoke-static {v6}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)V

    goto :goto_77

    .line 388
    .restart local v1    # "reason":I
    :cond_f2
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 389
    const/4 v1, 0x4

    goto :goto_e7

    .line 390
    :cond_fc
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 391
    const/4 v1, 0x3

    goto :goto_e7

    .line 397
    .end local v1    # "reason":I
    :cond_106
    iget-object v6, p0, Lcom/android/server/notification/DowntimeConditionProvider$1;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V
    invoke-static {v6}, Lcom/android/server/notification/DowntimeConditionProvider;->access$600(Lcom/android/server/notification/DowntimeConditionProvider;)V

    goto :goto_ec
.end method
