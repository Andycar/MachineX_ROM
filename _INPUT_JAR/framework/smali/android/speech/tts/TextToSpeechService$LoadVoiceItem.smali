.class Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadVoiceItem"
.end annotation


# instance fields
.field private final mVoiceName:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V
    .registers 6
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "voiceName"    # Ljava/lang/String;

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 1109
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    .line 1110
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 1114
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()V
    .registers 3

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeechService;->onLoadVoice(Ljava/lang/String;)I

    .line 1120
    return-void
.end method

.method protected stopImpl()V
    .registers 1

    .prologue
    .line 1125
    return-void
.end method
