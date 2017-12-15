.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppFusionSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    }
.end annotation


# instance fields
.field private mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

.field private mWaitLocState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .line 244
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 240
    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    .line 241
    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    .line 246
    const-string v0, "LppFusion"

    const-string v1, "Creating State Machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->addState(Lcom/android/internal/util/State;)V

    .line 251
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->addState(Lcom/android/internal/util/State;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 255
    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mWaitLocState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V

    return-void
.end method

.method private goToSleep()V
    .registers 3

    .prologue
    .line 465
    monitor-enter p0

    .line 466
    :try_start_1
    const-string v0, "LppFusion"

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->smHasMessages()Z

    move-result v0

    if-nez v0, :cond_21

    .line 468
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    .line 470
    :cond_21
    monitor-exit p0

    .line 471
    return-void

    .line 470
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private smHasMessages()Z
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_6e
    const/4 v0, 0x1

    :goto_6f
    return v0

    :cond_70
    const/4 v0, 0x0

    goto :goto_6f
.end method


# virtual methods
.method public exit()V
    .registers 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->quit()V

    .line 462
    return-void
.end method
