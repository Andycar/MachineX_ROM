.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;
.super Ljava/lang/Thread;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V
    .registers 2

    .prologue
    .line 434
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 439
    const/4 v11, 0x0

    .line 440
    .local v11, "len":I
    const/4 v9, 0x0

    .line 441
    .local v9, "interrupt":I
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 442
    .local v10, "interruptMode":Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    const/4 v7, 0x0

    .line 443
    .local v7, "intFile":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 444
    .local v3, "cadFile":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 446
    .local v12, "stepFile":Ljava/io/BufferedReader;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z

    move-result v16

    if-eqz v16, :cond_2c9

    .line 448
    const/16 v16, 0x800

    :try_start_15
    move/from16 v0, v16

    new-array v2, v0, [C

    .line 449
    .local v2, "buffer":[C
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/event_shealth_int"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_42} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_42} :catch_236
    .catchall {:try_start_15 .. :try_end_42} :catchall_282

    .line 451
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .local v8, "intFile":Ljava/io/BufferedReader;
    if-eqz v8, :cond_7a

    if-eqz v2, :cond_7a

    .line 452
    :try_start_46
    invoke-virtual {v8, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 453
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_7a

    .line 454
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Interrupt = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_7a
    and-int/lit8 v16, v9, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_ef

    .line 460
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/shealth_cadence"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_ad} :catch_2ef
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_ad} :catch_2e1
    .catchall {:try_start_46 .. :try_end_ad} :catchall_2d6

    .line 461
    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .local v4, "cadFile":Ljava/io/BufferedReader;
    if-eqz v4, :cond_ee

    if-eqz v2, :cond_ee

    .line 462
    :try_start_b1
    invoke-virtual {v4, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 463
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_ee

    .line 464
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v14

    .line 465
    .local v14, "strCad":Ljava/lang/String;
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CAD = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v14}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_b1 .. :try_end_ee} :catch_2f3
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_ee} :catch_2e5
    .catchall {:try_start_b1 .. :try_end_ee} :catchall_2d9

    .end local v14    # "strCad":Ljava/lang/String;
    :cond_ee
    move-object v3, v4

    .line 472
    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    :cond_ef
    and-int/lit8 v16, v9, 0x2

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16a

    .line 473
    :try_start_f9
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/pedometer_steps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_122
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_122} :catch_2ef
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_122} :catch_2e1
    .catchall {:try_start_f9 .. :try_end_122} :catchall_2d6

    .line 474
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .local v13, "stepFile":Ljava/io/BufferedReader;
    if-eqz v13, :cond_169

    if-eqz v2, :cond_169

    .line 475
    :try_start_126
    invoke-virtual {v13, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 476
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_169

    .line 477
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v15

    .line 478
    .local v15, "strStep":Ljava/lang/String;
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Count = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v9, v0, :cond_1d6

    .line 480
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 484
    :goto_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/io/FileNotFoundException; {:try_start_126 .. :try_end_169} :catch_2f8
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_169} :catch_2ea
    .catchall {:try_start_126 .. :try_end_169} :catchall_2dd

    .end local v15    # "strStep":Ljava/lang/String;
    :cond_169
    move-object v12, v13

    .line 489
    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :cond_16a
    and-int/lit8 v16, v9, 0x4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17b

    .line 490
    :try_start_174
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v17, "Start walking"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_17b
    and-int/lit8 v16, v9, 0x8

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19d

    .line 494
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v17, "Stop walking"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_174 .. :try_end_19d} :catch_2ef
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_19d} :catch_2e1
    .catchall {:try_start_174 .. :try_end_19d} :catchall_2d6

    .line 505
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v8, :cond_1c9

    .line 509
    :try_start_1c6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1d9

    .line 515
    :cond_1c9
    :goto_1c9
    if-eqz v3, :cond_1ce

    .line 517
    :try_start_1cb
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ce} :catch_1de

    .line 523
    :cond_1ce
    :goto_1ce
    if-eqz v12, :cond_2fd

    .line 525
    :try_start_1d0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1e3

    move-object v7, v8

    .line 529
    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 482
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v15    # "strStep":Ljava/lang/String;
    :cond_1d6
    :try_start_1d6
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    :try_end_1d8
    .catch Ljava/io/FileNotFoundException; {:try_start_1d6 .. :try_end_1d8} :catch_2f8
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1d8} :catch_2ea
    .catchall {:try_start_1d6 .. :try_end_1d8} :catchall_2dd

    goto :goto_15e

    .line 510
    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .end local v15    # "strStep":Ljava/lang/String;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :catch_1d9
    move-exception v5

    .line 512
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c9

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1de
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ce

    .line 526
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1e3
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 529
    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 498
    .end local v2    # "buffer":[C
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1ea
    move-exception v6

    .line 500
    .local v6, "e1":Ljava/io/FileNotFoundException;
    :goto_1eb
    :try_start_1eb
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_282

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_21a

    .line 509
    :try_start_217
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_22c

    .line 515
    :cond_21a
    :goto_21a
    if-eqz v3, :cond_21f

    .line 517
    :try_start_21c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_231

    .line 523
    :cond_21f
    :goto_21f
    if-eqz v12, :cond_7

    .line 525
    :try_start_221
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_224} :catch_226

    goto/16 :goto_7

    .line 526
    :catch_226
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 510
    .end local v5    # "e":Ljava/io/IOException;
    :catch_22c
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21a

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_231
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21f

    .line 501
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    :catch_236
    move-exception v5

    .line 503
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_237
    :try_start_237
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23a
    .catchall {:try_start_237 .. :try_end_23a} :catchall_282

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_266

    .line 509
    :try_start_263
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_266} :catch_278

    .line 515
    :cond_266
    :goto_266
    if-eqz v3, :cond_26b

    .line 517
    :try_start_268
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_26b
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_26b} :catch_27d

    .line 523
    :cond_26b
    :goto_26b
    if-eqz v12, :cond_7

    .line 525
    :try_start_26d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_270
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_270} :catch_272

    goto/16 :goto_7

    .line 526
    :catch_272
    move-exception v5

    .line 528
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 510
    :catch_278
    move-exception v5

    .line 512
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_266

    .line 518
    :catch_27d
    move-exception v5

    .line 520
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26b

    .line 505
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_282
    move-exception v16

    :goto_283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v19, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v19 .. v19}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v19

    const/16 v20, 0x1

    aget-wide v20, v19, v20

    aput-wide v20, v17, v18

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_2af

    .line 509
    :try_start_2ac
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2af} :catch_2ba

    .line 515
    :cond_2af
    :goto_2af
    if-eqz v3, :cond_2b4

    .line 517
    :try_start_2b1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2b4} :catch_2bf

    .line 523
    :cond_2b4
    :goto_2b4
    if-eqz v12, :cond_2b9

    .line 525
    :try_start_2b6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_2c4

    .line 529
    :cond_2b9
    :goto_2b9
    throw v16

    .line 510
    :catch_2ba
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2af

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2bf
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b4

    .line 526
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2c4
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b9

    .line 534
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2c9
    const-wide/16 v16, 0x64

    :try_start_2cb
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2ce
    .catch Ljava/lang/InterruptedException; {:try_start_2cb .. :try_end_2ce} :catch_2d0

    goto/16 :goto_7

    .line 535
    :catch_2d0
    move-exception v5

    .line 537
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 505
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catchall_2d6
    move-exception v16

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_283

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catchall_2d9
    move-exception v16

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_283

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catchall_2dd
    move-exception v16

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_283

    .line 501
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_2e1
    move-exception v5

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_237

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_2e5
    move-exception v5

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_237

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catch_2ea
    move-exception v5

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_237

    .line 498
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_2ef
    move-exception v6

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_1eb

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_2f3
    move-exception v6

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_1eb

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catch_2f8
    move-exception v6

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_1eb

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :cond_2fd
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7
.end method
