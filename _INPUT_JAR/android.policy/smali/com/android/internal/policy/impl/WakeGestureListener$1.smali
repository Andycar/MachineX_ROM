.class Lcom/android/internal/policy/impl/WakeGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "WakeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WakeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WakeGestureListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WakeGestureListener;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/WakeGestureListener$1;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/WakeGestureListener$1;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    # getter for: Lcom/android/internal/policy/impl/WakeGestureListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WakeGestureListener;->access$000(Lcom/android/internal/policy/impl/WakeGestureListener;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 88
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/WakeGestureListener$1;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/WakeGestureListener;->mTriggerRequested:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/WakeGestureListener;->access$102(Lcom/android/internal/policy/impl/WakeGestureListener;Z)Z

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/WakeGestureListener$1;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    # getter for: Lcom/android/internal/policy/impl/WakeGestureListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WakeGestureListener;->access$300(Lcom/android/internal/policy/impl/WakeGestureListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WakeGestureListener$1;->this$0:Lcom/android/internal/policy/impl/WakeGestureListener;

    # getter for: Lcom/android/internal/policy/impl/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/WakeGestureListener;->access$200(Lcom/android/internal/policy/impl/WakeGestureListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method
