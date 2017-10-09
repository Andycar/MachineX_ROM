.class Lcom/android/server/backup/BackupManagerService$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1360
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1362
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v3, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1363
    .local v3, "bufStream":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1364
    .local v2, "bufOut":Ljava/io/DataOutputStream;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1373
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1374
    .local v0, "N":I
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1376
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v0, :cond_3a

    .line 1377
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 1378
    .local v5, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v8, v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1379
    iget-wide v10, v5, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1376
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1381
    .end local v5    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_3a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1383
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1384
    .local v1, "af":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .line 1385
    .local v7, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1386
    invoke-virtual {v1, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_54} :catch_56
    .catchall {:try_start_5 .. :try_end_54} :catchall_5f

    .line 1390
    .end local v0    # "N":I
    .end local v1    # "af":Landroid/util/AtomicFile;
    .end local v2    # "bufOut":Ljava/io/DataOutputStream;
    .end local v3    # "bufStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "i":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :goto_54
    :try_start_54
    monitor-exit v9

    .line 1391
    return-void

    .line 1387
    :catch_56
    move-exception v4

    .line 1388
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "BackupManagerService"

    const-string v10, "Unable to write backup schedule!"

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 1390
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v8

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    throw v8
.end method
