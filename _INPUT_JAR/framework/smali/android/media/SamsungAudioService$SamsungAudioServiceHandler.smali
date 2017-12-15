.class Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
.super Landroid/os/Handler;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAudioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    .line 243
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    .line 280
    :cond_6
    :goto_6
    return-void

    .line 250
    :pswitch_7
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_USB_CHECK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$1102(Landroid/media/SamsungAudioService;Z)Z

    .line 252
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 253
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "### release fake device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_6

    .line 260
    :pswitch_2f
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    goto :goto_6

    .line 265
    :pswitch_35
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Soft reset is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->performSoftReset()V

    goto :goto_6

    .line 270
    :pswitch_44
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # invokes: Landroid/media/SamsungAudioService;->playSilentModeSound()V
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$1200(Landroid/media/SamsungAudioService;)V

    goto :goto_6

    .line 273
    :pswitch_4a
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->vibrateCall()V

    goto :goto_6

    .line 276
    :pswitch_50
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mIsPlaySilentModeOff false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$1302(Landroid/media/SamsungAudioService;Z)Z

    goto :goto_6

    .line 247
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2f
        :pswitch_35
        :pswitch_44
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method
