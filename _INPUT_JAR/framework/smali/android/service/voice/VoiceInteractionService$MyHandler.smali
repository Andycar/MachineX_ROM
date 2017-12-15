.class Landroid/service/voice/VoiceInteractionService$MyHandler;
.super Landroid/os/Handler;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    :goto_8
    return-void

    .line 103
    :pswitch_9
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    goto :goto_8

    .line 106
    :pswitch_f
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$000(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_8

    .line 109
    :pswitch_15
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$100(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_8

    .line 101
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method
