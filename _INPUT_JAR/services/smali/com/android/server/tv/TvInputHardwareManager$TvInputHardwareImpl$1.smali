.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .registers 2
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .prologue
    .line 571
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .registers 4
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$800(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 564
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$900(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    .line 565
    monitor-exit v1

    .line 566
    return-void

    .line 565
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onServiceDied()V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$800(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 576
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1002(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 577
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Landroid/media/AudioDevicePort;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1102(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 578
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1202(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method
