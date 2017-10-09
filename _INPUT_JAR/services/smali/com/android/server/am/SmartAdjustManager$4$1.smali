.class Lcom/android/server/am/SmartAdjustManager$4$1;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/SmartAdjustManager$4;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager$4;)V
    .registers 2

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/am/SmartAdjustManager;->access$400(Lcom/android/server/am/SmartAdjustManager;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1174
    const-string v0, "SAMP_GCMKill"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v2, v2, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/am/SmartAdjustManager;->access$400(Lcom/android/server/am/SmartAdjustManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OldListSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v2, v2, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v2, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_45
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_64

    .line 1177
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_61

    .line 1178
    :try_start_53
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4$1;->this$1:Lcom/android/server/am/SmartAdjustManager$4;

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->killGCMPkgs()V
    invoke-static {v0}, Lcom/android/server/am/SmartAdjustManager;->access$500(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1179
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5e

    .line 1180
    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_61

    .line 1181
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_64

    .line 1183
    :cond_5d
    return-void

    .line 1179
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0

    .line 1180
    :catchall_61
    move-exception v0

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_61

    :try_start_63
    throw v0

    .line 1181
    :catchall_64
    move-exception v0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_64

    throw v0
.end method
