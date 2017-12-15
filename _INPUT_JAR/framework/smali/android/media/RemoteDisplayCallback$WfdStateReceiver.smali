.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p2, "x1"    # Landroid/media/RemoteDisplayCallback$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "action":Ljava/lang/String;
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent recieved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v3, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 298
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mPtr:I
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$100(Landroid/media/RemoteDisplayCallback;)I

    move-result v3

    if-eqz v3, :cond_78

    .line 299
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    iget-object v4, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mPtr:I
    invoke-static {v4}, Landroid/media/RemoteDisplayCallback;->access$100(Landroid/media/RemoteDisplayCallback;)I

    move-result v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;
    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)Landroid/view/Surface;

    move-result-object v5

    # invokes: Landroid/media/RemoteDisplayCallback;->destroySurface(ILandroid/view/Surface;)I
    invoke-static {v3, v4, v5}, Landroid/media/RemoteDisplayCallback;->access$300(Landroid/media/RemoteDisplayCallback;ILandroid/view/Surface;)I

    .line 300
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    iget-object v4, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mPtr:I
    invoke-static {v4}, Landroid/media/RemoteDisplayCallback;->access$100(Landroid/media/RemoteDisplayCallback;)I

    move-result v4

    # invokes: Landroid/media/RemoteDisplayCallback;->destroyNativeObject(I)V
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;I)V

    .line 301
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 302
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 303
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 304
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "Released surface successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_6d
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # setter for: Landroid/media/RemoteDisplayCallback;->mPtr:I
    invoke-static {v3, v6}, Landroid/media/RemoteDisplayCallback;->access$102(Landroid/media/RemoteDisplayCallback;I)I

    .line 312
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const/4 v4, 0x0

    # setter for: Landroid/media/RemoteDisplayCallback;->surface:Landroid/view/Surface;
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$202(Landroid/media/RemoteDisplayCallback;Landroid/view/Surface;)Landroid/view/Surface;

    .line 314
    :cond_78
    # getter for: Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 316
    :try_start_7e
    # getter for: Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$700()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/media/RemoteDisplayCallback;->access$600(Landroid/media/RemoteDisplayCallback;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8b} :catch_a5
    .catchall {:try_start_7e .. :try_end_8b} :catchall_b1

    .line 320
    # setter for: Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z
    invoke-static {v6}, Landroid/media/RemoteDisplayCallback;->access$502(Z)Z

    .line 323
    :cond_8e
    :goto_8e
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v3}, Landroid/media/RemoteDisplayCallback;->displayDisconnected()V

    .line 393
    :cond_93
    :goto_93
    return-void

    .line 306
    :cond_94
    const-string v3, "RemoteDisplayCallback"

    const-string/jumbo v4, "surface not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 309
    :cond_9d
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "Why on earth is surface null??"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 317
    :catch_a5
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a6
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "exception @ unbind"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_b1

    .line 320
    # setter for: Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z
    invoke-static {v6}, Landroid/media/RemoteDisplayCallback;->access$502(Z)Z

    goto :goto_8e

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_b1
    move-exception v3

    # setter for: Landroid/media/RemoteDisplayCallback;->mRtspRunning:Z
    invoke-static {v6}, Landroid/media/RemoteDisplayCallback;->access$502(Z)Z

    throw v3

    .line 324
    :cond_b6
    const-string v3, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 325
    const-string v3, "cause"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "data":Ljava/lang/String;
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error from Native: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-virtual {v3, v6}, Landroid/media/RemoteDisplayCallback;->displayError(I)V

    goto :goto_93

    .line 328
    .end local v1    # "data":Ljava/lang/String;
    :cond_e2
    const-string v3, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 329
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$800(Landroid/media/RemoteDisplayCallback;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v3

    if-nez v3, :cond_fa

    .line 330
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "WIFIDISPLAY_RESOLUTION_FROM_NATIVE mWfdDevice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 333
    :cond_fa
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v4, "width"

    const/16 v5, 0x500

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/media/RemoteDisplayCallback;->mWidth:I
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$902(Landroid/media/RemoteDisplayCallback;I)I

    .line 334
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v4, "height"

    const/16 v5, 0x2d0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/media/RemoteDisplayCallback;->mHeight:I
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$1002(Landroid/media/RemoteDisplayCallback;I)I

    .line 335
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v4, "hdcp"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/media/RemoteDisplayCallback;->mHdcp:I
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$1102(Landroid/media/RemoteDisplayCallback;I)I

    .line 336
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFIDISPLAY_RESOLUTION_FROM_NATIVE width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mWidth:I
    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->access$900(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mHeight:I
    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->access$1000(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hdcp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mHdcp:I
    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->access$1100(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string/jumbo v3, "wlan.wfd.status"

    const-string v4, "connected"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const/4 v4, 0x1

    # invokes: Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionState(I)V
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$1200(Landroid/media/RemoteDisplayCallback;I)V

    .line 340
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    iget-object v4, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mSessionId:I
    invoke-static {v4}, Landroid/media/RemoteDisplayCallback;->access$1300(Landroid/media/RemoteDisplayCallback;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RemoteDisplayCallback;->displayConnected(I)V

    .line 341
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1400()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$1500(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;)V

    goto/16 :goto_93

    .line 342
    :cond_182
    const-string v3, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bb

    .line 343
    const-string v3, "cause"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, "data":I
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WFD Engine HDCP result >> data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    packed-switch v1, :pswitch_data_2ce

    goto/16 :goto_93

    .line 348
    :pswitch_1ad
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "connect with non-HDCP dongle! show WFD suspend!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # invokes: Landroid/media/RemoteDisplayCallback;->startHDCPSuspend()V
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$1600(Landroid/media/RemoteDisplayCallback;)V

    goto/16 :goto_93

    .line 354
    .end local v1    # "data":I
    :cond_1bb
    const-string v3, "com.samsung.wfd.WFD_SERVICE_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 355
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # invokes: Landroid/media/RemoteDisplayCallback;->broadcastWfdSessionStart()Z
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$1700(Landroid/media/RemoteDisplayCallback;)Z

    goto/16 :goto_93

    .line 356
    :cond_1ca
    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 357
    const-string v3, "IP"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    # getter for: Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1800()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1fd

    .line 360
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dongle IP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1800()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1fd
    const-string v3, "URL"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    # getter for: Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1900()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_228

    .line 366
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dongle Update URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_228
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v4, "count"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/media/RemoteDisplayCallback;->mAudioCnt:I
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$2002(Landroid/media/RemoteDisplayCallback;I)I

    .line 370
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioCnt:I
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$2000(Landroid/media/RemoteDisplayCallback;)I

    move-result v3

    if-eqz v3, :cond_259

    .line 371
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioCnt:I
    invoke-static {v5}, Landroid/media/RemoteDisplayCallback;->access$2000(Landroid/media/RemoteDisplayCallback;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_259
    const-string v3, "VER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/RemoteDisplayCallback;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    # getter for: Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1400()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_284

    .line 377
    const-string v3, "RemoteDisplayCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dongle ver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$1400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_284
    iget-object v3, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v4, "connectedSessionID"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/media/RemoteDisplayCallback;->mSessionId:I
    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->access$1302(Landroid/media/RemoteDisplayCallback;I)I

    goto/16 :goto_93

    .line 381
    :cond_291
    const-string v3, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2af

    .line 382
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "action  << WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$2100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 384
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$2100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_93

    .line 386
    :cond_2af
    const-string v3, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 387
    const-string v3, "RemoteDisplayCallback"

    const-string v4, "display toast for weak network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$2100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 389
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$2100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_93

    .line 346
    nop

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_1ad
    .end packed-switch
.end method
