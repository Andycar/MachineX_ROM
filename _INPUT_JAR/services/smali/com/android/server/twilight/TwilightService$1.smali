.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/android/server/twilight/TwilightState;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_5
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_5
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    invoke-direct {v2, p1, p2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;-><init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    .line 132
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->enableLocationUpdates()V

    .line 134
    :cond_23
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0
.end method
