.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static mShutdownIsInProgress:Ljava/lang/Boolean;

.field private static final mShutdownIsInProgressLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 82
    const-string v0, "last_"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    .line 85
    const/high16 v0, 0x10000

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method private RecoverySystem()V
    .registers 1

    .prologue
    .line 630
    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 479
    sget-object v9, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v9

    .line 480
    :try_start_4
    sget-object v8, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 481
    monitor-exit v9

    return-void

    .line 482
    :cond_e
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    .line 483
    monitor-exit v9
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_48

    .line 485
    sget-object v8, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 486
    sget-object v8, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 487
    sget-object v8, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 489
    const/4 v7, 0x3

    .line 492
    .local v7, "retry_count":I
    :cond_26
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v8, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v9, "rwd"

    invoke-direct {v2, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .local v2, "command":Ljava/io/RandomAccessFile;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_31
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_33
    if-ge v3, v4, :cond_4b

    aget-object v0, v1, v3

    .line 495
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 496
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 497
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_8b

    .line 494
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 483
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "command":Ljava/io/RandomAccessFile;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "retry_count":I
    :catchall_48
    move-exception v8

    :try_start_49
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v8

    .line 501
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "command":Ljava/io/RandomAccessFile;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "retry_count":I
    :cond_4b
    :try_start_4b
    const-string v8, "RecoverySystem"

    const-string v9, "!@RecoverySystem before fsync syscall!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 503
    const-string v8, "RecoverySystem"

    const-string v9, "!@RecoverySystem after fsync syscall!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_8b

    .line 505
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 507
    add-int/lit8 v7, v7, -0x1

    .line 508
    sget-object v8, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 509
    const-string v8, "RecoverySystem"

    const-string v9, "COMMAND_FILE is already exist!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_74
    sget-object v8, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eq v8, v11, :cond_ab

    .line 516
    const-string v8, "RecoverySystem"

    const-string v9, "!@ command file absent, throw exception"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (unable to create command file)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 505
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_8b
    move-exception v8

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v8

    .line 512
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_90
    const-string v8, "RecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retry_count : %d"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-nez v7, :cond_26

    goto :goto_74

    .line 521
    :cond_ab
    const-string/jumbo v8, "power"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 522
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "persist.sys.reboot.reason"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v8, "nvrecovery"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 524
    const-string v8, "RecoverySystem"

    const-string v9, "FactoryTest ->nvrecovery "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string/jumbo v8, "nvrecovery"

    invoke-virtual {v5, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 533
    :goto_d1
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Reboot failed (no permissions?)"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 526
    :cond_d9
    const-string v8, "download"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 527
    const-string v8, "RecoverySystem"

    const-string v9, "FactoryTest ->download "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v8, "download"

    invoke-virtual {v5, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_d1

    .line 530
    :cond_ee
    const-string/jumbo v8, "recovery"

    invoke-virtual {v5, v8}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_d1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "inputChannel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 544
    .local v0, "outputChannel":Ljava/nio/channels/FileChannel;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 545
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 546
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 547
    const/16 v7, 0x1a4

    .line 548
    .local v7, "mode":I
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_26} :catch_4f
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_26} :catch_95
    .catchall {:try_start_2 .. :try_end_26} :catchall_dd

    .line 557
    if-eqz v1, :cond_2b

    .line 558
    :try_start_28
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 559
    :cond_2b
    if-eqz v0, :cond_30

    .line 560
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_31

    .line 567
    .end local v7    # "mode":I
    :cond_30
    :goto_30
    return-void

    .line 562
    .restart local v7    # "mode":I
    :catch_31
    move-exception v6

    .line 564
    .local v6, "e":Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 550
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "mode":I
    :catch_4f
    move-exception v6

    .line 551
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_50
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copy recovery logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_dd

    .line 557
    if-eqz v1, :cond_71

    .line 558
    :try_start_6e
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 559
    :cond_71
    if-eqz v0, :cond_30

    .line 560
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_76} :catch_77

    goto :goto_30

    .line 562
    :catch_77
    move-exception v6

    .line 564
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 552
    .end local v6    # "e":Ljava/io/IOException;
    :catch_95
    move-exception v6

    .line 553
    .local v6, "e":Landroid/system/ErrnoException;
    :try_start_96
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error chmod recovery logs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_dd

    .line 557
    if-eqz v1, :cond_b7

    .line 558
    :try_start_b4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 559
    :cond_b7
    if-eqz v0, :cond_30

    .line 560
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bc} :catch_be

    goto/16 :goto_30

    .line 562
    :catch_be
    move-exception v6

    .line 564
    .local v6, "e":Ljava/io/IOException;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error close FileChannel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 555
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_dd
    move-exception v2

    .line 557
    if-eqz v1, :cond_e3

    .line 558
    :try_start_e0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 559
    :cond_e3
    if-eqz v0, :cond_e8

    .line 560
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e8} :catch_e9

    .line 565
    :cond_e8
    :goto_e8
    throw v2

    .line 562
    :catch_e9
    move-exception v6

    .line 564
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error close FileChannel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .registers 8
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_9

    .line 110
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 112
    :cond_9
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 114
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_e
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 115
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 116
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_18
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 117
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 118
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_35

    move-result-object v3

    .line 120
    .local v3, "is":Ljava/io/InputStream;
    :try_start_28
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_3a

    .line 122
    :try_start_31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_18

    .line 126
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_35
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    .line 122
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_3a
    move-exception v6

    :try_start_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_35

    .line 126
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_3f
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 128
    return-object v4
.end method

.method public static handleAftermath()Ljava/lang/String;
    .registers 8

    .prologue
    .line 576
    sget-object v6, Landroid/os/RecoverySystem;->mShutdownIsInProgressLock:Ljava/lang/Object;

    monitor-enter v6

    .line 577
    :try_start_3
    sget-object v5, Landroid/os/RecoverySystem;->mShutdownIsInProgress:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 578
    const-string v5, "RecoverySystem"

    const-string v7, "!@RecoverySystem handleAftermath disabled, as shutdown in progress"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v3, 0x0

    monitor-exit v6

    .line 617
    .local v2, "i":I
    .local v3, "log":Ljava/lang/String;
    .local v4, "names":[Ljava/lang/String;
    :cond_14
    return-object v3

    .line 581
    .end local v2    # "i":I
    .end local v3    # "log":Ljava/lang/String;
    .end local v4    # "names":[Ljava/lang/String;
    :cond_15
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_ed

    .line 582
    const-string v5, "RecoverySystem"

    const-string v6, "!@RecoverySystem handleAftermath"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v3, 0x0

    .line 586
    .restart local v3    # "log":Ljava/lang/String;
    :try_start_1e
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_28} :catch_f0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_fa

    move-result-object v3

    .line 593
    :goto_29
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 594
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_kernel"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery_kernel.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 595
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_last_kernel"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery_last_kernel.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 596
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_recovery_contents"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery_contents.list"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 597
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_history"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/recovery_history.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 599
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_emmc_checksum"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/emmc_checksum.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 600
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_avc_msg_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/avc_msg_recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 601
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_tzdbg_log_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/tzdbg_log_recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 602
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v7, "last_qsee_log_recovery"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/log/qsee_log_recovery.log"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 606
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 607
    .restart local v4    # "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_db
    if-eqz v4, :cond_14

    array-length v5, v4

    if-ge v2, v5, :cond_14

    .line 608
    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 607
    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 581
    .end local v2    # "i":I
    .end local v3    # "log":Ljava/lang/String;
    .end local v4    # "names":[Ljava/lang/String;
    :catchall_ed
    move-exception v5

    :try_start_ee
    monitor-exit v6
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v5

    .line 587
    .restart local v3    # "log":Ljava/lang/String;
    :catch_f0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v6, "No recovery log file"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 589
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_fa
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading recovery log"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 609
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_104
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 610
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_12c

    .line 611
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 613
    :cond_12c
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--update_package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "localeArg":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    const-string v0, "RecoverySystem"

    const-string v1, ":::: command -> wipe_cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public static rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 368
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 373
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 379
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const-string/jumbo v1, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 402
    .local v16, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_factory_reset"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 403
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "Wiping data is not allowed for this user."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_1e
    new-instance v10, Landroid/os/ConditionVariable;

    invoke-direct {v10}, Landroid/os/ConditionVariable;-><init>()V

    .line 407
    .local v10, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "android.permission.MASTER_CLEAR"

    new-instance v5, Landroid/os/RecoverySystem$1;

    invoke-direct {v5, v10}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 419
    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    .line 421
    const-string/jumbo v1, "ro.crypto.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "cryptState1":Ljava/lang/String;
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 424
    .local v12, "cryptState2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 425
    .local v15, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_57

    .line 426
    const-string v15, "--shutdown_after"

    .line 429
    :cond_57
    const/4 v14, 0x0

    .line 430
    .local v14, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 434
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 435
    .local v13, "localeArg":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v15, v1, v3

    const/4 v3, 0x1

    const-string v4, "--wipe_data"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v14, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 437
    const-string v1, "encrypted"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 438
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v15, v1, v3

    const/4 v3, 0x1

    const-string v4, "--wipe_data"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "--wipe_data_crypto"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v14, v1, v3

    const/4 v3, 0x4

    aput-object v13, v1, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 441
    :goto_d2
    return-void

    .line 440
    :cond_d3
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v15, v1, v3

    const/4 v3, 0x1

    const-string v4, "--wipe_data"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object v14, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_d2
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 626
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 627
    return-object p0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .registers 53
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 164
    .local v16, "fileLen":J
    new-instance v30, Ljava/io/RandomAccessFile;

    const-string/jumbo v45, "r"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v30, "raf":Ljava/io/RandomAccessFile;
    const/16 v24, 0x0

    .line 167
    .local v24, "lastPercent":I
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 168
    .local v26, "lastPublishTime":J
    if-eqz p1, :cond_21

    .line 169
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 172
    :cond_21
    const-wide/16 v46, 0x6

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v15, v0, [B

    .line 174
    .local v15, "footer":[B
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 176
    const/16 v45, 0x2

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_4f

    const/16 v45, 0x3

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_5d

    .line 177
    :cond_4f
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (no footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_58
    .catchall {:try_start_14 .. :try_end_58} :catchall_58

    .line 325
    .end local v15    # "footer":[B
    .end local v26    # "lastPublishTime":J
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_58
    move-exception v45

    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    throw v45

    .line 180
    .restart local v15    # "footer":[B
    .restart local v26    # "lastPublishTime":J
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_5d
    const/16 v45, 0x4

    :try_start_5f
    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x5

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v10, v45, v46

    .line 181
    .local v10, "commentSize":I
    const/16 v45, 0x0

    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x1

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v36, v45, v46

    .line 183
    .local v36, "signatureStart":I
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    new-array v14, v0, [B

    .line 184
    .local v14, "eocd":[B
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 189
    const/16 v45, 0x0

    aget-byte v45, v14, v45

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_d8

    const/16 v45, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_d8

    const/16 v45, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_d8

    const/16 v45, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_e1

    .line 191
    :cond_d8
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (bad footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 194
    :cond_e1
    const/16 v18, 0x4

    .local v18, "i":I
    :goto_e3
    array-length v0, v14

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x3

    move/from16 v0, v18

    move/from16 v1, v45

    if-ge v0, v1, :cond_127

    .line 195
    aget-byte v45, v14, v18

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_124

    add-int/lit8 v45, v18, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_124

    add-int/lit8 v45, v18, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_124

    add-int/lit8 v45, v18, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_124

    .line 197
    new-instance v45, Ljava/security/SignatureException;

    const-string v46, "EOCD marker found after start of EOCD"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 194
    :cond_124
    add-int/lit8 v18, v18, 0x1

    goto :goto_e3

    .line 207
    :cond_127
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    new-instance v45, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v46, v10, 0x16

    sub-int v46, v46, v36

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-direct {v0, v14, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, v45

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v45, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 210
    .local v20, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v37

    .line 211
    .local v37, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v37, :cond_156

    .line 212
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "signedData is null"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 214
    :cond_156
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 215
    .local v13, "encCerts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_168

    .line 216
    new-instance v45, Ljava/io/IOException;

    const-string v46, "encCerts is empty"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 220
    :cond_168
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 221
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Certificate;>;"
    const/4 v8, 0x0

    .line 222
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1e3

    .line 223
    const-string v45, "X.509"

    invoke-static/range {v45 .. v45}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 224
    .local v9, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v22, Ljava/io/ByteArrayInputStream;

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual/range {v45 .. v45}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v45

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    .local v22, "is":Ljava/io/InputStream;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 230
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v34

    .line 232
    .local v34, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_1ec

    .line 233
    const/16 v45, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 241
    .local v33, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_1ae

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_1ae
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v39

    .line 244
    .local v39, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    .line 245
    .local v35, "signatureKey":Ljava/security/PublicKey;
    const/16 v44, 0x0

    .line 246
    .local v44, "verified":Z
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_1bc
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_1d8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 247
    .local v7, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1bc

    .line 248
    const/16 v44, 0x1

    .line 252
    .end local v7    # "c":Ljava/security/cert/X509Certificate;
    :cond_1d8
    if-nez v44, :cond_1f5

    .line 253
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature doesn\'t match any trusted key"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 227
    .end local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    .end local v35    # "signatureKey":Ljava/security/PublicKey;
    .end local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v44    # "verified":Z
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_1e3
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature contains no certificates"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 235
    .restart local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    :cond_1ec
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "no signer infos!"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 271
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v35    # "signatureKey":Ljava/security/PublicKey;
    .restart local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v44    # "verified":Z
    :cond_1f5
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "da":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "dea":Ljava/lang/String;
    const/4 v4, 0x0

    .line 274
    .local v4, "alg":Ljava/lang/String;
    if-eqz v11, :cond_202

    if-nez v12, :cond_24b

    .line 277
    :cond_202
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    .line 281
    :goto_206
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v32

    .line 282
    .local v32, "sig":Ljava/security/Signature;
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 286
    int-to-long v0, v10

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    const-wide/16 v48, 0x2

    sub-long v42, v46, v48

    .line 287
    .local v42, "toRead":J
    const-wide/16 v40, 0x0

    .line 288
    .local v40, "soFar":J
    const-wide/16 v46, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 289
    const/16 v45, 0x1000

    move/from16 v0, v45

    new-array v6, v0, [B

    .line 290
    .local v6, "buffer":[B
    const/16 v21, 0x0

    .line 291
    .local v21, "interrupted":Z
    :cond_22b
    :goto_22b
    cmp-long v45, v40, v42

    if-gez v45, :cond_235

    .line 292
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v21

    .line 293
    if-eqz v21, :cond_268

    .line 313
    :cond_235
    if-eqz p1, :cond_240

    .line 314
    const/16 v45, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 317
    :cond_240
    if-eqz v21, :cond_2c7

    .line 318
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "verification was interrupted"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 279
    .end local v6    # "buffer":[B
    .end local v21    # "interrupted":Z
    .end local v32    # "sig":Ljava/security/Signature;
    .end local v40    # "soFar":J
    .end local v42    # "toRead":J
    :cond_24b
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "with"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_206

    .line 294
    .restart local v6    # "buffer":[B
    .restart local v21    # "interrupted":Z
    .restart local v32    # "sig":Ljava/security/Signature;
    .restart local v40    # "soFar":J
    .restart local v42    # "toRead":J
    :cond_268
    array-length v0, v6

    move/from16 v38, v0

    .line 295
    .local v38, "size":I
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v40

    cmp-long v45, v46, v42

    if-lez v45, :cond_27d

    .line 296
    sub-long v46, v42, v40

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v38, v0

    .line 298
    :cond_27d
    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v31

    .line 299
    .local v31, "read":I
    const/16 v45, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Ljava/security/Signature;->update([BII)V

    .line 300
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v40, v40, v46

    .line 302
    if-eqz p1, :cond_22b

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 304
    .local v28, "now":J
    const-wide/16 v46, 0x64

    mul-long v46, v46, v40

    div-long v46, v46, v42

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v25, v0

    .line 305
    .local v25, "p":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_22b

    sub-long v46, v28, v26

    const-wide/16 v48, 0x1f4

    cmp-long v45, v46, v48

    if-lez v45, :cond_22b

    .line 307
    move/from16 v24, v25

    .line 308
    move-wide/from16 v26, v28

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    goto/16 :goto_22b

    .line 321
    .end local v25    # "p":I
    .end local v28    # "now":J
    .end local v31    # "read":I
    .end local v38    # "size":I
    :cond_2c7
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v45

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v45

    if-nez v45, :cond_2de

    .line 322
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature digest verification failed"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_2de
    .catchall {:try_start_5f .. :try_end_2de} :catchall_58

    .line 325
    :cond_2de
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 327
    return-void
.end method
