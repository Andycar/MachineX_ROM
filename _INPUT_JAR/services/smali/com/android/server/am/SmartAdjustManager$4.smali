.class Lcom/android/server/am/SmartAdjustManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;)V
    .registers 2

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1147
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_17

    .line 1148
    const-string v1, "SAMP_SPCM_test"

    const-string v2, "SPCM onReceive called !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1151
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v1, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_3b

    .line 1152
    :try_start_21
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v4, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_38

    .line 1154
    :try_start_26
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/SmartAdjustManager;->access$200(Lcom/android/server/am/SmartAdjustManager;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/am/SmartAdjustManager;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V
    invoke-static {v1, v5}, Lcom/android/server/am/SmartAdjustManager;->access$300(Lcom/android/server/am/SmartAdjustManager;Ljava/util/ArrayList;)V

    .line 1155
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_35

    .line 1156
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_38

    .line 1157
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_3b

    .line 1208
    :cond_34
    :goto_34
    return-void

    .line 1155
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1

    .line 1156
    :catchall_38
    move-exception v1

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v1

    .line 1157
    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3b

    throw v1

    .line 1160
    :cond_3e
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->mGcmFreezingEnable:Z

    if-eqz v1, :cond_34

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_GCM_KILL_ENABLE:Z

    if-eqz v1, :cond_34

    .line 1161
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1162
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/am/SmartAdjustManager;->access$402(Lcom/android/server/am/SmartAdjustManager;Z)Z

    .line 1164
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->isConnectedInChina()Z

    move-result v1

    if-nez v1, :cond_60

    sget-boolean v1, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    if-nez v1, :cond_89

    .line 1165
    :cond_60
    const-string v1, "SAMP_GCMKill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppLockEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/LpnetManagerService;->mGCMAppFreezerEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mGCMKillProcLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mGCMPushPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_34

    .line 1169
    :cond_89
    const-string v1, "SAMP_GCMKill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got SCREEN_OFF, OldListSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mGCMKillPkgLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    new-instance v2, Lcom/android/server/am/SmartAdjustManager$4$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/SmartAdjustManager$4$1;-><init>(Lcom/android/server/am/SmartAdjustManager$4;)V

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mDefaultFreezingInterval:J
    invoke-static {v3}, Lcom/android/server/am/SmartAdjustManager;->access$600(Lcom/android/server/am/SmartAdjustManager;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    const-string v2, "GCM_LOCKER_ALARM"

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J
    invoke-static {v3}, Lcom/android/server/am/SmartAdjustManager;->access$700(Lcom/android/server/am/SmartAdjustManager;)J

    move-result-wide v4

    # invokes: Lcom/android/server/am/SmartAdjustManager;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/SmartAdjustManager;->access$800(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;J)V

    goto/16 :goto_34

    .line 1188
    :cond_ca
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1189
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/am/SmartAdjustManager;->access$402(Lcom/android/server/am/SmartAdjustManager;Z)Z

    .line 1190
    const-string v1, "SAMP_GCMKill"

    const-string v2, "got SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 1192
    :cond_e1
    const-string v1, "GCM_LOCKER_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1193
    const-string v1, "SAMP_GCMKill"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got intent GCM_LOCKER_ALARM, mScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/am/SmartAdjustManager;->access$400(Lcom/android/server/am/SmartAdjustManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/am/SmartAdjustManager;->access$400(Lcom/android/server/am/SmartAdjustManager;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1195
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1196
    :try_start_114
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v1, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_119
    .catchall {:try_start_114 .. :try_end_119} :catchall_13b

    .line 1197
    :try_start_119
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v4, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_11e
    .catchall {:try_start_119 .. :try_end_11e} :catchall_138

    .line 1198
    :try_start_11e
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->killGCMPkgs()V
    invoke-static {v1}, Lcom/android/server/am/SmartAdjustManager;->access$500(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1199
    monitor-exit v4
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_135

    .line 1200
    :try_start_124
    monitor-exit v3
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_138

    .line 1201
    :try_start_125
    monitor-exit v2
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_13b

    .line 1202
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    const-string v2, "GCM_LOCKER_ALARM"

    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mDefaultAlramInterval:J
    invoke-static {v3}, Lcom/android/server/am/SmartAdjustManager;->access$700(Lcom/android/server/am/SmartAdjustManager;)J

    move-result-wide v4

    # invokes: Lcom/android/server/am/SmartAdjustManager;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/SmartAdjustManager;->access$800(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;J)V

    goto/16 :goto_34

    .line 1199
    :catchall_135
    move-exception v1

    :try_start_136
    monitor-exit v4
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    :try_start_137
    throw v1

    .line 1200
    :catchall_138
    move-exception v1

    monitor-exit v3
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_138

    :try_start_13a
    throw v1

    .line 1201
    :catchall_13b
    move-exception v1

    monitor-exit v2
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_13b

    throw v1
.end method
