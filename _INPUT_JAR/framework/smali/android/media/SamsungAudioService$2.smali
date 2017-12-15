.class Landroid/media/SamsungAudioService$2;
.super Landroid/os/UEventObserver;
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
    .line 651
    iput-object p1, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSystemReady:Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$2800(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 683
    :cond_b
    :goto_b
    return-void

    .line 657
    :cond_c
    const-string v0, "USB_CONNECTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, "USB_CONNECTION":Ljava/lang/String;
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUEvent(device) :: USB_CONNECTION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v0, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 660
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # invokes: Landroid/media/SamsungAudioService;->isUSBCheckStreamActive()Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$2900(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1700(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1100(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mUSBDetected:Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$3000(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 661
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 662
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "### set usb check device"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$1102(Landroid/media/SamsungAudioService;Z)Z

    .line 664
    const-string v0, ""

    invoke-static {v5, v2, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 665
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1500(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xdac

    move v3, v1

    move v4, v1

    # invokes: Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->access$1600(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b

    .line 668
    :cond_84
    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 669
    :cond_94
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1100(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 670
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1500(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->removeMessages(I)V

    .line 671
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$1102(Landroid/media/SamsungAudioService;Z)Z

    .line 672
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c2

    .line 673
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "### release usb check device"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v0, ""

    invoke-static {v5, v1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 678
    :cond_c2
    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mUSBDetected:Z
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$3000(Landroid/media/SamsungAudioService;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mUSBDetected:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$3002(Landroid/media/SamsungAudioService;Z)Z

    .line 679
    :cond_d7
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/SamsungAudioService$2;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mUSBDetected:Z
    invoke-static {v0, v1}, Landroid/media/SamsungAudioService;->access$3002(Landroid/media/SamsungAudioService;Z)Z

    goto/16 :goto_b

    .line 681
    :cond_e6
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other USB event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method
