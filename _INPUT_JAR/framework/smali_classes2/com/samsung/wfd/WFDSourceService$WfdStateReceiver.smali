.class Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field private customSetting:I

.field private sideSyncResolution:I

.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .registers 3

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    .line 338
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/wfd/WFDSourceService;
    .param p2, "x1"    # Lcom/samsung/wfd/WFDSourceService$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "action":Ljava/lang/String;
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent recieved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    # getter for: Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;
    invoke-static {}, Lcom/samsung/wfd/WFDSourceService;->access$100()Ljava/lang/Object;

    move-result-object v28

    monitor-enter v28

    .line 345
    :try_start_21
    const-string v2, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 347
    const-string v2, "Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 348
    .local v22, "strSessionControl":Ljava/lang/String;
    if-eqz v22, :cond_40

    const-string/jumbo v2, "terminate"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 349
    monitor-exit v28

    .line 598
    .end local v22    # "strSessionControl":Ljava/lang/String;
    :goto_3f
    return-void

    .line 352
    .restart local v22    # "strSessionControl":Ljava/lang/String;
    :cond_40
    const-string/jumbo v2, "res"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 353
    .local v18, "resolution":I
    const-string v2, "3D"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 354
    .local v21, "str3d":Ljava/lang/String;
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recvd resolution from app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3d:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v13, 0x0

    .line 356
    .local v13, "dim_mode":I
    if-eqz v21, :cond_c0

    const-string v2, "Yes"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 357
    const/4 v13, 0x1

    .line 365
    :goto_86
    const/16 v27, 0x0

    .line 366
    .local v27, "width":I
    const/4 v15, 0x0

    .line 368
    .local v15, "height":I
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_c2

    .line 370
    const/16 v27, 0x280

    .line 371
    const/16 v15, 0x1e0

    .line 405
    :goto_91
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Choosing the width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v2, 0x0

    move/from16 v0, v27

    invoke-static {v2, v0, v15, v13}, Lcom/samsung/wfd/WFDNative;->changeParams(IIII)Z

    .line 597
    .end local v13    # "dim_mode":I
    .end local v15    # "height":I
    .end local v18    # "resolution":I
    .end local v21    # "str3d":Ljava/lang/String;
    .end local v22    # "strSessionControl":Ljava/lang/String;
    .end local v27    # "width":I
    :cond_bb
    :goto_bb
    monitor-exit v28

    goto :goto_3f

    :catchall_bd
    move-exception v2

    monitor-exit v28
    :try_end_bf
    .catchall {:try_start_21 .. :try_end_bf} :catchall_bd

    throw v2

    .line 360
    .restart local v13    # "dim_mode":I
    .restart local v18    # "resolution":I
    .restart local v21    # "str3d":Ljava/lang/String;
    .restart local v22    # "strSessionControl":Ljava/lang/String;
    :cond_c0
    const/4 v13, 0x0

    goto :goto_86

    .line 373
    .restart local v15    # "height":I
    .restart local v27    # "width":I
    :cond_c2
    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_cb

    .line 375
    const/16 v27, 0x2d0

    .line 376
    const/16 v15, 0x1e0

    goto :goto_91

    .line 378
    :cond_cb
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_d4

    .line 380
    const/16 v27, 0x2d0

    .line 381
    const/16 v15, 0x240

    goto :goto_91

    .line 383
    :cond_d4
    and-int/lit8 v2, v18, 0x8

    if-eqz v2, :cond_dd

    .line 385
    const/16 v27, 0x500

    .line 386
    const/16 v15, 0x2d0

    goto :goto_91

    .line 388
    :cond_dd
    and-int/lit8 v2, v18, 0x10

    if-eqz v2, :cond_e6

    .line 390
    const/16 v27, 0x780

    .line 391
    const/16 v15, 0x438

    goto :goto_91

    .line 393
    :cond_e6
    and-int/lit8 v2, v18, 0x20

    if-eqz v2, :cond_ef

    .line 395
    const/16 v27, 0x320

    .line 396
    const/16 v15, 0x258

    goto :goto_91

    .line 401
    :cond_ef
    const/16 v27, 0x500

    .line 402
    const/16 v15, 0x2d0

    goto :goto_91

    .line 407
    .end local v13    # "dim_mode":I
    .end local v15    # "height":I
    .end local v18    # "resolution":I
    .end local v21    # "str3d":Ljava/lang/String;
    .end local v22    # "strSessionControl":Ljava/lang/String;
    .end local v27    # "width":I
    :cond_f4
    :try_start_f4
    const-string v2, "com.samsung.wfd.WFD_SESSION_TEARDOWN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 408
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_TEARDOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$202(Lcom/samsung/wfd/WFDSourceService;Z)Z

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardown()I

    goto :goto_bb

    .line 411
    :cond_113
    const-string v2, "com.samsung.wfd.WFD_SESSION_STOP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 412
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->stop()I

    goto :goto_bb

    .line 414
    :cond_12a
    const-string v2, "com.samsung.wfd.WFD_SESSION_PAUSE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 415
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_bb

    .line 417
    :cond_143
    const-string v2, "com.samsung.wfd.WFD_SESSION_RESUME"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 418
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_RESUME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    # invokes: Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$400(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_bb

    .line 420
    :cond_15c
    const-string v2, "com.samsung.wfd.WFD_SESSION_START"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_327

    .line 421
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mSessionId:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$500(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_180

    .line 423
    const-string v2, "WFDSourceService"

    const-string v3, "Session ID not NULL, close previous session first"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit v28

    goto/16 :goto_3f

    .line 426
    :cond_180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const-string/jumbo v2, "wfdPeerDeviceDescriptor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdDevice;

    # setter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v3, v2}, Lcom/samsung/wfd/WFDSourceService;->access$602(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 427
    const-string/jumbo v2, "wfdCustomSetting"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    .line 428
    const-string/jumbo v2, "wfdSideSyncResolution"

    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    new-instance v3, Lcom/samsung/wfd/WfdDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/wfd/WfdDevice;-><init>(Lcom/samsung/wfd/WfdDevice;)V

    # setter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$702(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    new-instance v3, Lcom/samsung/wfd/WfdInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/wfd/WfdInfo;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdDevice;->setWfdInfo(Lcom/samsung/wfd/WfdInfo;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->enableWfd(Lcom/samsung/wfd/WfdDevice;)Z

    move-result v2

    if-eqz v2, :cond_31e

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/WFDUibcManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23e

    .line 436
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<ContentProtection>\\n <HDCPValid>0</HDCPValid>\\n </ContentProtection>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 437
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_BUFFERCTRL:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<BufferCtrlEnable>\\n <Valid>0</Valid>\\n </BufferCtrlEnable>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 438
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<CEA>\\n <BIT>5</BIT>\\n </CEA>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 439
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "set 0 protection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v2, "WFDSourceService"

    const-string v3, "!!!!custom setting!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/WFDUibcManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 461
    :cond_231
    :goto_231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->startWfdSession(Lcom/samsung/wfd/WfdDevice;)V

    goto/16 :goto_bb

    .line 442
    :cond_23e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e5

    .line 443
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<ContentProtection>\\n <HDCPValid>0</HDCPValid>\\n </ContentProtection>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 444
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_BUFFERCTRL:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<BufferCtrlEnable>\\n <Valid>0</Valid>\\n </BufferCtrlEnable>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_26a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2be

    .line 446
    :cond_26a
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_HH_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<HH>\\n <BIT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</BIT>\\n </HH>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 450
    :goto_290
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "side sync resolution bit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "set 0 protection for sidesync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v2, "WFDSourceService"

    const-string v3, "!!!!custom setting!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_231

    .line 448
    :cond_2be
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<CEA>\\n <BIT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->sideSyncResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</BIT>\\n </CEA>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    goto :goto_290

    .line 454
    :cond_2e5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_231

    .line 455
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<ContentProtection>\\n <HDCPValid>0</HDCPValid>\\n </ContentProtection>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 456
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_BUFFERCTRL:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<BufferCtrlEnable>\\n <Valid>0</Valid>\\n </BufferCtrlEnable>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 457
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<CEA>\\n <BIT>1</BIT>\\n </CEA>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 458
    const-string v2, "WFDSourceService"

    const-string/jumbo v3, "set 0 protection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v2, "WFDSourceService"

    const-string v3, "!!!!custom setting 4!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_231

    .line 463
    :cond_31e
    const-string v2, "WFDSourceService"

    const-string v3, "WFD NOT Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 465
    :cond_327
    const-string v2, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48c

    invoke-static {}, Lcom/samsung/wfd/WFDNative;->isDongleTcpAvailable()Z

    move-result v2

    if-eqz v2, :cond_48c

    .line 466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->customSetting:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_346

    .line 467
    const-string v2, "WFDSourceService"

    const-string v3, "SIDESYNC! Do not change to TCP. just return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v28

    goto/16 :goto_3f

    .line 470
    :cond_346
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk On Receive << ACTION_WIFI_DISPLAY_TCP_TRANSPORT Prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isWiredHeadsetOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isBluetoothA2dpOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " noError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_3e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3e9

    .line 474
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_bb

    .line 476
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 478
    const/16 v23, 0x1

    .line 479
    .local v23, "transportType":I
    const/16 v11, 0x9c4

    .line 480
    .local v11, "bufferLengthMs":I
    const/16 v17, 0x4a3a

    .line 481
    .local v17, "port":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk Calculted type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bufferLengthMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v2, v0, v11, v1, v3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(IIIZ)I

    move-result v19

    .line 483
    .local v19, "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk setRtpTransport returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-ltz v19, :cond_479

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    # setter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$902(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 487
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    const/4 v3, 0x1

    # invokes: Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1300(Ljava/lang/String;I)V

    .line 489
    :cond_479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1402(Lcom/samsung/wfd/WFDSourceService;Z)Z

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    goto/16 :goto_bb

    .line 494
    .end local v11    # "bufferLengthMs":I
    .end local v17    # "port":I
    .end local v19    # "ret":I
    .end local v23    # "transportType":I
    :cond_48c
    const-string v2, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_53f

    invoke-static {}, Lcom/samsung/wfd/WFDNative;->isDongleTcpAvailable()Z

    move-result v2

    if-eqz v2, :cond_53f

    .line 495
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk On Receive << ACTION_WIFI_DISPLAY_UDP_TRANSPORT Prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_bb

    .line 498
    const/16 v23, 0x0

    .line 499
    .restart local v23    # "transportType":I
    const/4 v11, 0x0

    .line 500
    .restart local v11    # "bufferLengthMs":I
    const/16 v17, 0x4a38

    .line 501
    .restart local v17    # "port":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk Calculted type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bufferLengthMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v2, v0, v11, v1, v3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(IIIZ)I

    move-result v19

    .line 503
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk setRtpTransport returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-ltz v19, :cond_bb

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    # setter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$902(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 507
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    const/4 v3, 0x0

    # invokes: Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1300(Ljava/lang/String;I)V

    goto/16 :goto_bb

    .line 510
    .end local v11    # "bufferLengthMs":I
    .end local v17    # "port":I
    .end local v19    # "ret":I
    .end local v23    # "transportType":I
    :cond_53f
    const-string v2, "android.intent.action.WIFI_DISPLAY_RESOLUTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_597

    .line 511
    const/4 v14, 0x3

    .line 512
    .local v14, "formatType":I
    const/16 v24, 0x1

    .line 513
    .local v24, "value":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated formatType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v24

    # invokes: Lcom/samsung/wfd/WFDSourceService;->setResolution(II)I
    invoke-static {v2, v14, v0}, Lcom/samsung/wfd/WFDSourceService;->access$1500(Lcom/samsung/wfd/WFDSourceService;II)I

    move-result v19

    .line 515
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setResoltuion returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 516
    .end local v14    # "formatType":I
    .end local v19    # "ret":I
    .end local v24    # "value":I
    :cond_597
    const-string v2, "android.intent.action.WIFI_DISPLAY_BITRATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e6

    .line 517
    const-string/jumbo v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 518
    .local v10, "bitrate":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # invokes: Lcom/samsung/wfd/WFDSourceService;->setBitrate(I)I
    invoke-static {v2, v10}, Lcom/samsung/wfd/WFDSourceService;->access$1600(Lcom/samsung/wfd/WFDSourceService;I)I

    move-result v19

    .line 520
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBitrate returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 522
    .end local v10    # "bitrate":I
    .end local v19    # "ret":I
    :cond_5e6
    const-string v2, "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f8

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->setBufferingMode(I)I

    goto/16 :goto_bb

    .line 526
    :cond_5f8
    const-string v2, "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60a

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->setBufferingMode(I)I

    goto/16 :goto_bb

    .line 531
    :cond_60a
    const-string v2, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_618

    .line 532
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_bb

    .line 533
    :cond_618
    const-string v2, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_626

    .line 534
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_bb

    .line 535
    :cond_626
    const-string v2, "android.intent.action.SECURE_START"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_636

    const-string v2, "android.intent.action.SECURE_END"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_659

    :cond_636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_659

    .line 536
    const-string v2, "WFDSourceService"

    const-string v3, "On Receive << ACTION_SECURE_START or ACTION_SECURE_END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;Z)I
    :try_end_64f
    .catchall {:try_start_f4 .. :try_end_64f} :catchall_bd

    .line 539
    const-wide/16 v2, 0x3e8

    :try_start_651
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_654
    .catch Ljava/lang/Exception; {:try_start_651 .. :try_end_654} :catch_656
    .catchall {:try_start_651 .. :try_end_654} :catchall_bd

    goto/16 :goto_bb

    .line 540
    :catch_656
    move-exception v2

    goto/16 :goto_bb

    .line 541
    :cond_659
    :try_start_659
    const-string v2, "android.intent.action.SECURE_START_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_669

    const-string v2, "android.intent.action.SECURE_END_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_684

    :cond_669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_684

    .line 542
    const-string v2, "WFDSourceService"

    const-string v3, "On Receive << ACTION_SECURE_START_DONE or ACTION_SECURE_END_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$400(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_bb

    .line 544
    :cond_684
    const-string v2, "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_707

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_707

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_707

    .line 545
    const-string v2, "WFDSourceService"

    const-string v3, "kkk [B3] On Receive << ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string/jumbo v2, "type"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 547
    .local v12, "cmdType":I
    const-string/jumbo v2, "volume"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 548
    .local v25, "volume":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] Calculated type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v25

    invoke-virtual {v2, v12, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v19

    .line 550
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 551
    .end local v12    # "cmdType":I
    .end local v19    # "ret":I
    .end local v25    # "volume":I
    :cond_707
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_78c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_78c

    .line 552
    const-string v2, "WFDSourceService"

    const-string v3, "kkk [B3] On Receive << AudioManager.VOLUME_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 555
    .local v9, "audio_type":I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 556
    .local v26, "volume_value":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] audio_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v2, 0x3

    if-ne v9, v2, :cond_bb

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x4

    move/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v19

    .line 559
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 561
    .end local v9    # "audio_type":I
    .end local v19    # "ret":I
    .end local v26    # "volume_value":I
    :cond_78c
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7fd

    .line 562
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action << WIFIDISPLAY_HEADSET_PLUG, MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string/jumbo v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 564
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7d4

    .line 565
    const-string v2, "WFDSourceService"

    const-string v3, "headset out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 567
    :cond_7d4
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_bb

    .line 568
    const-string v2, "WFDSourceService"

    const-string v3, "headset in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_bb

    .line 572
    :cond_7fd
    const-string v2, "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84f

    .line 573
    const-string v2, "mode"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 574
    .local v16, "mode":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/wfd/WFDSourceService;->setAvPlaybackMode(I)I

    move-result v19

    .line 576
    .restart local v19    # "ret":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAvPlaybackMode returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 577
    .end local v16    # "mode":I
    .end local v19    # "ret":I
    :cond_84f
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 578
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 579
    .local v20, "state":I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    # getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_bb

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v29, v0

    new-instance v2, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;-><init>(Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;JJ)V

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    move-object/from16 v0, v29

    iput-object v2, v0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;
    :try_end_8aa
    .catchall {:try_start_659 .. :try_end_8aa} :catchall_bd

    goto/16 :goto_bb
.end method
