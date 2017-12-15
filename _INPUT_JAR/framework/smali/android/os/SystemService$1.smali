.class final Landroid/os/SystemService$1;
.super Ljava/lang/Object;
.source "SystemService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 53
    # getter for: Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_5
    # getter for: Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
