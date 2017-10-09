.class public Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
.super Ljava/lang/Thread;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverShapeThread"
.end annotation


# static fields
.field private static final CMD_DELAY_TIME:I = 0x5

.field private static final NUM_FOR_CMD_DATA:I = 0x8

.field private static final SMART_COVER_CMD:Ljava/lang/String; = "smartcover_cmd"

.field private static final SMART_COVER_CMD_CHANGE:Ljava/lang/String; = "6"

.field private static final SMART_COVER_CMD_CLEAR:Ljava/lang/String; = "4"

.field private static final SMART_COVER_CMD_MODEON:Ljava/lang/String; = "3"

.field private static final SMART_COVER_CMD_WRITE:Ljava/lang/String; = "5"

.field private static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"


# instance fields
.field mCoverHeight:I

.field mCoverShapeArray:[B

.field mCoverWidth:I

.field mPreDefArray:[I

.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;[BII)V
    .registers 7
    .param p2, "coverShape"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 504
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 490
    iput v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    .line 491
    iput v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    .line 493
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mPreDefArray:[I

    .line 505
    const-string v0, "CoverManager"

    const-string v1, "CoverShapeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    .line 507
    iput p3, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    .line 508
    iput p4, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    .line 509
    return-void

    .line 493
    :array_24
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method private getShapeCmdData(I)I
    .registers 6
    .param p1, "startIndex"    # I

    .prologue
    .line 551
    const/4 v1, 0x0

    .line 552
    .local v1, "shapeCmdData":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_16

    .line 553
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverShapeArray:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_13

    .line 554
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mPreDefArray:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 552
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 557
    :cond_16
    return v1
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 561
    const/4 v2, 0x0

    .line 564
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 569
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 570
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 580
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 565
    :catch_19
    move-exception v0

    .line 566
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 571
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 574
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 575
    :catch_26
    move-exception v1

    .line 576
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 512
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    div-int/lit8 v3, v6, 0x8

    .line 514
    .local v3, "numShapeCmdDataPerRow":I
    const/4 v0, 0x0

    .line 517
    .local v0, "checkZero":I
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,4"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run : smartcover_cmd,4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v5, 0x0

    .line 522
    .local v5, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1d
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverHeight:I

    if-ge v2, v6, :cond_8d

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smartcover_cmd,5,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    if-ge v1, v3, :cond_65

    .line 525
    iget v6, p0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->mCoverWidth:I

    mul-int/2addr v6, v2

    mul-int/lit8 v7, v1, 0x8

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->getShapeCmdData(I)I

    move-result v4

    .line 526
    .local v4, "shapeCmdData":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 527
    add-int/2addr v0, v4

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 530
    .end local v4    # "shapeCmdData":I
    :cond_65
    if-eqz v0, :cond_85

    .line 531
    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v6, v5}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 532
    const-string v6, "CoverManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CoverShapeThread : run : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    .line 537
    :cond_85
    const-wide/16 v6, 0x5

    :try_start_87
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8a} :catch_ac

    .line 522
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 542
    .end local v1    # "i":I
    :cond_8d
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,6"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 543
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run : smartcover_cmd,6"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,3"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    const-string v6, "CoverManager"

    const-string v7, "CoverShapeThread : run : smartcover_cmd,3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 538
    .restart local v1    # "i":I
    :catch_ac
    move-exception v6

    goto :goto_8a
.end method
