.class Lcom/android/server/am/ActivityManagerService$20;
.super Landroid/os/CountDownTimer;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 14457
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 14482
    const-string v0, "BootTimer"

    const-string/jumbo v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14483
    # getter for: Lcom/android/server/am/ActivityManagerService;->cpuCheckTimer:Landroid/os/CountDownTimer;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$1500()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 14484
    const/4 v0, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->cpuCheckTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 14485
    return-void
.end method

.method public onTick(J)V
    .registers 11
    .param p1, "duration"    # J

    .prologue
    .line 14459
    const/4 v1, 0x0

    .line 14460
    .local v1, "freq":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 14462
    .local v3, "online":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_56
    .catchall {:try_start_2 .. :try_end_e} :catchall_83

    .line 14463
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .local v2, "freq":Ljava/io/BufferedReader;
    :try_start_e
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/online"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_9f
    .catchall {:try_start_e .. :try_end_1a} :catchall_98

    .line 14464
    .end local v3    # "online":Ljava/io/BufferedReader;
    .local v4, "online":Ljava/io/BufferedReader;
    :try_start_1a
    const-string v5, "BootTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3e} :catch_a2
    .catchall {:try_start_1a .. :try_end_3e} :catchall_9b

    .line 14469
    if-eqz v2, :cond_43

    .line 14470
    :try_start_40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 14472
    :cond_43
    if-eqz v4, :cond_48

    .line 14473
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_4b

    :cond_48
    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 14479
    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    :cond_4a
    :goto_4a
    return-void

    .line 14475
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catch_4b
    move-exception v0

    .line 14476
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BootTimer"

    const-string v6, "close() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 14478
    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 14465
    .end local v0    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v0

    .line 14466
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_57
    :try_start_57
    const-string v5, "BootTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BootTimer Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_57 .. :try_end_6f} :catchall_83

    .line 14469
    if-eqz v1, :cond_74

    .line 14470
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 14472
    :cond_74
    if-eqz v3, :cond_4a

    .line 14473
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7a

    goto :goto_4a

    .line 14475
    :catch_7a
    move-exception v0

    .line 14476
    const-string v5, "BootTimer"

    const-string v6, "close() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 14468
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v5

    .line 14469
    :goto_84
    if-eqz v1, :cond_89

    .line 14470
    :try_start_86
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 14472
    :cond_89
    if-eqz v3, :cond_8e

    .line 14473
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_8f

    .line 14477
    :cond_8e
    :goto_8e
    throw v5

    .line 14475
    :catch_8f
    move-exception v0

    .line 14476
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "BootTimer"

    const-string v7, "close() failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 14468
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    :catchall_98
    move-exception v5

    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_84

    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catchall_9b
    move-exception v5

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_84

    .line 14465
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    :catch_9f
    move-exception v0

    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_57

    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catch_a2
    move-exception v0

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_57
.end method
