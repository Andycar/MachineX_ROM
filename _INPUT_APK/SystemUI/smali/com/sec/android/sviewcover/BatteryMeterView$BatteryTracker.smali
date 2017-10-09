.class Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field online:I

.field percentStr:Ljava/lang/String;

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field final synthetic this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

.field voltage:I


# direct methods
.method private constructor <init>(Lcom/sec/android/sviewcover/BatteryMeterView;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->online:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/sviewcover/BatteryMeterView;Lcom/sec/android/sviewcover/BatteryMeterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/sviewcover/BatteryMeterView;
    .param p2, "x1"    # Lcom/sec/android/sviewcover/BatteryMeterView$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;-><init>(Lcom/sec/android/sviewcover/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 114
    iget-boolean v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->testmode:Z

    if-eqz v6, :cond_1

    const-string v6, "testmode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/high16 v6, 0x42c80000    # 100.0f

    const-string v9, "level"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    const-string v9, "scale"

    const/16 v10, 0x64

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-int v1, v6

    .line 121
    .local v1, "battLevel":I
    iget v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    if-eq v6, v1, :cond_7

    move v3, v7

    .line 122
    .local v3, "levelChange":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 123
    iput v1, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    .line 125
    :cond_2
    iget v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->plugType:I

    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_8

    move v4, v7

    .line 127
    .local v4, "plugTypeChange":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 128
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->plugType:I

    .line 129
    :cond_3
    iget v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->plugType:I

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 131
    iget v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    const-string v9, "health"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_a

    move v2, v7

    .line 133
    .local v2, "healthChange":Z
    :goto_4
    if-eqz v2, :cond_4

    .line 134
    const-string v6, "health"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    .line 137
    :cond_4
    iget v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    const-string v9, "status"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_b

    move v5, v7

    .line 139
    .local v5, "statusChange":Z
    :goto_5
    if-eqz v5, :cond_5

    .line 140
    const-string v6, "status"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    .line 143
    :cond_5
    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->technology:Ljava/lang/String;

    .line 144
    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->voltage:I

    .line 145
    const-string v6, "temperature"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->temperature:I

    .line 147
    sget-object v6, Lcom/sec/android/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_BATTERY_CHANGED : level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " health:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    if-eqz v5, :cond_0

    .line 150
    :cond_6
    iget-object v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    sget v9, Lcom/sec/android/sviewcover/R$string;->accessibility_battery_level:I

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/sviewcover/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    invoke-static {v6}, Lcom/sec/android/sviewcover/BatteryMeterView;->access$000(Lcom/sec/android/sviewcover/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    invoke-static {v6}, Lcom/sec/android/sviewcover/BatteryMeterView;->access$000(Lcom/sec/android/sviewcover/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    .end local v5    # "statusChange":Z
    :cond_7
    move v3, v8

    .line 121
    goto/16 :goto_1

    .restart local v3    # "levelChange":Z
    :cond_8
    move v4, v8

    .line 125
    goto/16 :goto_2

    .restart local v4    # "plugTypeChange":Z
    :cond_9
    move v6, v8

    .line 129
    goto/16 :goto_3

    :cond_a
    move v2, v8

    .line 131
    goto/16 :goto_4

    .restart local v2    # "healthChange":Z
    :cond_b
    move v5, v8

    .line 137
    goto/16 :goto_5

    .line 158
    .end local v1    # "battLevel":I
    .end local v2    # "healthChange":Z
    .end local v3    # "levelChange":Z
    .end local v4    # "plugTypeChange":Z
    :cond_c
    const-string v6, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    iput-boolean v7, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 160
    iget-object v6, p0, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;->this$0:Lcom/sec/android/sviewcover/BatteryMeterView;

    new-instance v7, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker$1;

    invoke-direct {v7, p0}, Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker$1;-><init>(Lcom/sec/android/sviewcover/BatteryMeterView$BatteryTracker;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/sviewcover/BatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
