.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItemV1"
.end annotation


# instance fields
.field protected final mParams:Landroid/os/Bundle;

.field protected final mUtteranceId:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 831
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 832
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 833
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    .line 834
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mUtteranceId:Ljava/lang/String;

    .line 835
    return-void
.end method


# virtual methods
.method getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 3

    .prologue
    .line 855
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromV1ParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method getPitch()I
    .registers 4

    .prologue
    .line 846
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "pitch"

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSpeechRate()I
    .registers 4

    .prologue
    .line 842
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "rate"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # invokes: Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$400(Landroid/speech/tts/TextToSpeechService;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mUtteranceId:Ljava/lang/String;

    return-object v0
.end method

.method hasLanguage()Z
    .registers 4

    .prologue
    .line 838
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string v1, "language"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
