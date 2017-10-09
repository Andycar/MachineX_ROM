.class Lcom/samsung/voiceshell/AudioRecordHaydn$2;
.super Landroid/os/Handler;
.source "AudioRecordHaydn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/voiceshell/AudioRecordHaydn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 229
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "spectrum_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 232
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    const-string v2, "spectrum_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnSpectrumData([I)V

    .line 237
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_23
    :goto_23
    return-void

    .line 233
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_24
    const-string v1, "rms_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 234
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;->this$0:Lcom/samsung/voiceshell/AudioRecordHaydn;

    # getter for: Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v1

    const-string v2, "rms_value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnRmsForWave(I)V

    goto :goto_23
.end method
