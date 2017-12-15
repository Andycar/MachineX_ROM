.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItemV1"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLoggerV1;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 11
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 871
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 872
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 873
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    .line 874
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    .line 875
    new-instance v0, Landroid/speech/tts/SynthesisRequest;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 876
    # invokes: Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    .line 877
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    .line 878
    new-instance v0, Landroid/speech/tts/EventLoggerV1;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->access$600(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p3, p4, v2}, Landroid/speech/tts/EventLoggerV1;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    .line 880
    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .registers 4

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 954
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getVariant()Ljava/lang/String;
    .registers 4

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 959
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "variant"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "voiceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 930
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    .line 932
    :cond_20
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getSpeechRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    .line 933
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    .line 934
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getPitch()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    .line 935
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .registers 8

    .prologue
    .line 922
    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->access$200(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string v1, "language"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 967
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 888
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_e

    .line 889
    const-string v1, "TextToSpeechService"

    const-string/jumbo v2, "null synthesis text"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_d
    return v0

    .line 892
    :cond_e
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v2

    if-lt v1, v2, :cond_3f

    .line 893
    const-string v1, "TextToSpeechService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 896
    :cond_3f
    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected playImpl()V
    .registers 4

    .prologue
    .line 902
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    invoke-virtual {v1}, Landroid/speech/tts/EventLoggerV1;->onRequestProcessingStart()V

    .line 903
    monitor-enter p0

    .line 906
    :try_start_6
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 907
    monitor-exit p0

    .line 919
    :cond_d
    :goto_d
    return-void

    .line 909
    :cond_e
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 910
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 911
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2e

    .line 913
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 916
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasFinished()Z

    move-result v1

    if-nez v1, :cond_d

    .line 917
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->done()I

    goto :goto_d

    .line 911
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected stopImpl()V
    .registers 3

    .prologue
    .line 940
    monitor-enter p0

    .line 941
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 942
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 943
    if-eqz v0, :cond_e

    .line 947
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    .line 948
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    .line 950
    :cond_e
    return-void

    .line 942
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method
