.class Lcom/android/server/am/SmartAdjustManager$3;
.super Ljava/lang/Thread;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->RunUpdateActiveInActivePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1097
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_46

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v1, :cond_46

    .line 1098
    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_3e

    .line 1100
    :try_start_23
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    if-eqz v1, :cond_2c

    .line 1101
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateCSCPackagesList()V

    .line 1102
    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1103
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_43

    .line 1104
    :try_start_32
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_0

    .line 1105
    const-string v1, "SAMP_SPCM_test"

    const-string v2, "mUpdateActiveInActivePackagesThread-1"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    goto :goto_0

    .line 1122
    :catch_3e
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1103
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1

    .line 1109
    :cond_46
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v1, :cond_5b

    .line 1110
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->RunSPCMDB()V
    invoke-static {v1}, Lcom/android/server/am/SmartAdjustManager;->access$100(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1119
    :goto_4f
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "SAMP_SPCM_test"

    const-string v2, "mUpdateActiveInActivePackagesThread-2"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1113
    :cond_5b
    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_3e

    .line 1115
    :try_start_66
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1116
    monitor-exit v2

    goto :goto_4f

    :catchall_6d
    move-exception v1

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_3e
.end method
