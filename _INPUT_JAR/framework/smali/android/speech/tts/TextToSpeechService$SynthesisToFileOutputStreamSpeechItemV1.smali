.class Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthesisToFileOutputStreamSpeechItemV1"
.end annotation


# instance fields
.field private final mFileOutputStream:Ljava/io/FileOutputStream;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V
    .registers 9
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;
    .param p8, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 976
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 977
    invoke-direct/range {p0 .. p7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 978
    iput-object p8, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 979
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .registers 5

    .prologue
    .line 983
    new-instance v0, Landroid/speech/tts/FileSynthesisCallback;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/speech/tts/FileSynthesisCallback;-><init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected playImpl()V
    .registers 4

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->dispatchOnStart()V

    .line 990
    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->playImpl()V

    .line 992
    :try_start_6
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 996
    :goto_b
    return-void

    .line 993
    :catch_c
    move-exception v0

    .line 994
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TextToSpeechService"

    const-string v2, "Failed to close output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
