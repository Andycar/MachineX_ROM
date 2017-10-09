.class Lcom/android/server/notification/ConditionProviders$DowntimeCallback;
.super Ljava/lang/Object;
.source "ConditionProviders.java"

# interfaces
.implements Lcom/android/server/notification/DowntimeConditionProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DowntimeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConditionProviders;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConditionProviders;)V
    .registers 2

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p2, "x1"    # Lcom/android/server/notification/ConditionProviders$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;-><init>(Lcom/android/server/notification/ConditionProviders;)V

    return-void
.end method


# virtual methods
.method public onDowntimeChanged(Z)Z
    .registers 13
    .param p1, "inDowntime"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 550
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v3

    .line 551
    .local v3, "mode":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 554
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    iget-object v8, v8, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDowntimeChanged : inDowntime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    # getter for: Lcom/android/server/notification/ConditionProviders;->mIsTouchwizDnd:Z
    invoke-static {}, Lcom/android/server/notification/ConditionProviders;->access$500()Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 557
    if-nez v2, :cond_43

    .line 558
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, v7, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, "No configs in onDowntimeChanged"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_42
    :goto_42
    return v6

    .line 567
    :cond_43
    const/4 v4, -0x1

    .line 568
    .local v4, "newZenMode":I
    const/4 v5, 0x0

    .line 570
    .local v5, "reason":Ljava/lang/String;
    if-eqz p1, :cond_6b

    .line 571
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    iget-object v8, v8, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dnd_allowexception"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 572
    .local v0, "allowException":I
    if-ne v0, v7, :cond_67

    .line 573
    const/4 v4, 0x1

    .line 574
    const-string v5, "downtimeEnter-Priority"

    .line 584
    .end local v0    # "allowException":I
    :goto_5a
    if-eq v3, v4, :cond_42

    .line 585
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    move v6, v7

    .line 586
    goto :goto_42

    .line 576
    .restart local v0    # "allowException":I
    :cond_67
    const/4 v4, 0x2

    .line 577
    const-string v5, "downtimeEnter-None"

    goto :goto_5a

    .line 580
    .end local v0    # "allowException":I
    :cond_6b
    const/4 v4, 0x0

    .line 581
    const-string v5, "downtimeExit"

    goto :goto_5a

    .line 594
    .end local v4    # "newZenMode":I
    .end local v5    # "reason":Ljava/lang/String;
    :cond_6f
    if-eqz p1, :cond_95

    if-nez v3, :cond_95

    if-eqz v2, :cond_95

    .line 595
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v8

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v1

    .line 597
    .local v1, "condition":Landroid/service/notification/Condition;
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    const-string v9, "downtimeEnter"

    invoke-virtual {v8, v7, v9}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 598
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    const-string v9, "downtime"

    invoke-virtual {v8, v1, v9}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    .line 601
    .end local v1    # "condition":Landroid/service/notification/Condition;
    :cond_95
    if-nez p1, :cond_42

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v9}, Lcom/android/server/notification/ConditionProviders;->access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/DowntimeConditionProvider;->isDowntimeCondition(Landroid/service/notification/Condition;)Z

    move-result v8

    if-eqz v8, :cond_42

    if-eq v3, v7, :cond_ae

    const/4 v7, 0x2

    if-ne v3, v7, :cond_42

    .line 604
    :cond_ae
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v7}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v7

    const-string v8, "downtimeExit"

    invoke-virtual {v7, v6, v8}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_42
.end method
