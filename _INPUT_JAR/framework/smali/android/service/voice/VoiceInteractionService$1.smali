.class Landroid/service/voice/VoiceInteractionService$1;
.super Landroid/service/voice/IVoiceInteractionService$Stub;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ready()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    .line 78
    return-void
.end method

.method public soundModelsChanged()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method
