.class Landroid/speech/tts/TextToSpeech$20;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/io/File;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1861
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$20;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    iput-object p3, p0, Landroid/speech/tts/TextToSpeech$20;->val$text:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$20;->val$params:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$20;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 11
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 1867
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1868
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1884
    :goto_30
    return-object v0

    .line 1871
    :cond_31
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    const/high16 v1, 0x2c000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1875
    .local v3, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$20;->this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$20;->val$text:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$20;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$20;->val$params:Landroid/os/Bundle;

    # invokes: Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v0, v4}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$20;->val$utteranceId:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    .line 1877
    .local v7, "returnValue":I
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1878
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_56} :catch_58
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_56} :catch_7e

    move-result-object v0

    goto :goto_30

    .line 1879
    .end local v3    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "returnValue":I
    :catch_58
    move-exception v6

    .line 1880
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1881
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30

    .line 1882
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_7e
    move-exception v6

    .line 1883
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$20;->val$file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1884
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1861
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$20;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
