.class public Landroid/speech/RecognitionService$Callback;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method private constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 231
    iput-object p1, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/speech/RecognitionService$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/speech/RecognitionService;
    .param p2, "x1"    # Landroid/speech/IRecognitionListener;
    .param p3, "x2"    # Landroid/speech/RecognitionService$1;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;
    .registers 2
    .param p0, "x0"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    .line 228
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    return-object v0
.end method


# virtual methods
.method public beginningOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    .line 241
    return-void
.end method

.method public bufferReceived([B)V
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    .line 252
    return-void
.end method

.method public endOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    .line 259
    return-void
.end method

.method public error(I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 269
    return-void
.end method

.method public partialResults(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "partialResults"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public readyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public results(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method public rmsChanged(F)V
    .registers 3
    .param p1, "rmsdB"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    .line 316
    return-void
.end method
