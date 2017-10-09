.class Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenModeHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConditionProviders;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConditionProviders;)V
    .registers 2

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p2, "x1"    # Lcom/android/server/notification/ConditionProviders$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;-><init>(Lcom/android/server/notification/ConditionProviders;)V

    return-void
.end method


# virtual methods
.method onConfigChanged()V
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # invokes: Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V
    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->access$300(Lcom/android/server/notification/ConditionProviders;)V

    .line 532
    return-void
.end method

.method onZenModeChanged()V
    .registers 5

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v1}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    .line 537
    .local v0, "mode":I
    if-nez v0, :cond_15

    .line 539
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    const/4 v2, 0x0

    const-string/jumbo v3, "zenOff"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    .line 541
    :cond_15
    return-void
.end method
