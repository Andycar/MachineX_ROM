.class Landroid/media/SamsungAudioService$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    if-nez p2, :cond_3

    .line 453
    :cond_2
    :goto_2
    return-void

    .line 289
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 291
    .local v13, "outDevice":I
    const/4 v11, 0x0

    .line 292
    .local v11, "inDevice":I
    const/16 v16, 0x0

    .line 294
    .local v16, "state":I
    const-string v1, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 295
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 301
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_28

    .line 302
    const-string v1, "earcare=reset"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    .line 304
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_3d

    const/4 v1, 0x1

    :goto_32
    # setter for: Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z
    invoke-static {v2, v1}, Landroid/media/SamsungAudioService;->access$1402(Landroid/media/SamsungAudioService;Z)Z

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    goto :goto_2

    .line 304
    :cond_3d
    const/4 v1, 0x0

    goto :goto_32

    .line 310
    :cond_3f
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1500(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/SamsungAudioService;->access$1600(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2

    .line 320
    :cond_59
    const-string v1, "com.sec.tms.audio.server"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 321
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 322
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "app":Ljava/lang/String;
    if-eqz v9, :cond_173

    .line 325
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v1, "server"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 328
    .local v12, "isConnected":Z
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_e2

    if-eqz v12, :cond_e2

    .line 329
    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_2

    .line 332
    :cond_e2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    if-nez v12, :cond_2

    .line 333
    const/high16 v1, 0x1000000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 337
    .end local v12    # "isConnected":Z
    :cond_102
    const-string v1, "client"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 339
    .restart local v12    # "isConnected":Z
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_136

    if-eqz v12, :cond_136

    .line 340
    const/high16 v1, -0x7ff00000

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_2

    .line 343
    :cond_136
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    if-nez v12, :cond_2

    .line 344
    const/high16 v1, -0x7ff00000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 349
    .end local v12    # "isConnected":Z
    :cond_156
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt app wrong : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 352
    :cond_173
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tms evt app is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 357
    .end local v9    # "app":Ljava/lang/String;
    :cond_17f
    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 358
    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 359
    .local v14, "reason":I
    const/4 v1, 0x3

    if-ne v14, v1, :cond_1ab

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1800(Landroid/media/SamsungAudioService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_1ab

    .line 360
    const-string v1, "emergency_mode=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 361
    :cond_1ab
    const/4 v1, 0x5

    if-ne v14, v1, :cond_2

    .line 362
    const-string v1, "emergency_mode=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 367
    .end local v14    # "reason":I
    :cond_1b5
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 368
    const-string v1, "audioParam;factoryteststate=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 370
    :cond_1c4
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 371
    const-string v1, "audioParam;factoryteststate=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 375
    :cond_1d3
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 376
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 377
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 379
    .restart local v12    # "isConnected":Z
    if-nez v16, :cond_22a

    if-eqz v12, :cond_22a

    .line 380
    const/16 v1, 0x800

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_2

    .line 383
    :cond_22a
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    if-nez v12, :cond_2

    .line 384
    const/16 v1, 0x800

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 388
    .end local v12    # "isConnected":Z
    :cond_24a
    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2eb

    .line 389
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 390
    const-string/jumbo v1, "smartdock"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 392
    .local v15, "smartdock":Z
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smartdock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v15, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1900(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b0

    .line 396
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    new-instance v2, Ljava/lang/String;

    const-string v3, "2:44100:44100:1:0:0:48000:16"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1902(Landroid/media/SamsungAudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    :cond_2b0
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/SamsungAudioService;->access$1900(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v13, 0x4000

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$1900(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v1, v13, v0, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V

    goto/16 :goto_2

    .line 418
    .end local v15    # "smartdock":Z
    :cond_2eb
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_314

    .line 419
    const-string v1, "CONNECTION_MODE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 420
    .local v10, "connectionMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioParam;wfdFixedVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 423
    .end local v10    # "connectionMode":I
    :cond_314
    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33e

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "mono"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mMonoMode:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2002(Landroid/media/SamsungAudioService;I)I

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mMonoMode:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$2000(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setMonoMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2100(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_2

    .line 430
    :cond_33e
    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_368

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mDualMicMode:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2202(Landroid/media/SamsungAudioService;I)I

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mDualMicMode:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$2200(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setDualMicMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2300(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_2

    .line 436
    :cond_368
    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mNaturalSound:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2402(Landroid/media/SamsungAudioService;I)I

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mNaturalSound:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$2400(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2500(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_2

    .line 442
    :cond_392
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b4

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "mute"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mAllSoundMute:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2602(Landroid/media/SamsungAudioService;I)I

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    goto/16 :goto_2

    .line 448
    :cond_3b4
    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c6

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v2, 0x1

    # setter for: Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2702(Landroid/media/SamsungAudioService;Z)Z

    goto/16 :goto_2

    .line 450
    :cond_3c6
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$2702(Landroid/media/SamsungAudioService;Z)Z

    goto/16 :goto_2
.end method
