.class Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1140
    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1141
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1142
    :try_start_11
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 1145
    const-string v2, "BackupManagerService"

    const-string v4, "Init pending at scheduled backup"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_41

    .line 1147
    :try_start_22
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1148
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_36
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_22 .. :try_end_36} :catch_38
    .catchall {:try_start_22 .. :try_end_36} :catchall_41

    .line 1183
    :goto_36
    :try_start_36
    monitor-exit v3

    .line 1185
    :cond_37
    :goto_37
    return-void

    .line 1149
    :catch_38
    move-exception v0

    .line 1150
    .local v0, "ce":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "BackupManagerService"

    const-string v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1183
    .end local v0    # "ce":Landroid/app/PendingIntent$CanceledException;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_41

    throw v2

    .line 1156
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_a3

    .line 1158
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    :cond_64
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v2, :cond_71

    .line 1162
    :cond_6a
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/backup/BackupManagerService;->needUpdateBackupAlarm:Z

    .line 1163
    monitor-exit v3

    goto :goto_37

    .line 1166
    :cond_71
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-nez v2, :cond_9b

    .line 1167
    const-string v2, "BackupManagerService"

    const-string v4, "Running a backup pass"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 1172
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1174
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1175
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_36

    .line 1177
    .end local v1    # "msg":Landroid/os/Message;
    :cond_9b
    const-string v2, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1180
    :cond_a3
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_44 .. :try_end_cd} :catchall_41

    goto/16 :goto_36
.end method
