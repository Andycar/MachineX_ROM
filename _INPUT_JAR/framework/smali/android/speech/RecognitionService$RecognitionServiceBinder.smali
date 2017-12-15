.class final Landroid/speech/RecognitionService$RecognitionServiceBinder;
.super Landroid/speech/IRecognitionService$Stub;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecognitionServiceBinder"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/speech/RecognitionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionService;)V
    .registers 3
    .param p1, "service"    # Landroid/speech/RecognitionService;

    .prologue
    .line 323
    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 325
    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 351
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 352
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_20

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 353
    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    :cond_20
    return-void
.end method

.method public clearReference()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 360
    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .registers 8
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 330
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 331
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_28

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p2}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 332
    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Landroid/speech/RecognitionService$StartListeningArgs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0, p1, p2}, Landroid/speech/RecognitionService$StartListeningArgs;-><init>(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    :cond_28
    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 341
    iget-object v1, p0, Landroid/speech/RecognitionService$RecognitionServiceBinder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionService;

    .line 342
    .local v0, "service":Landroid/speech/RecognitionService;
    if-eqz v0, :cond_20

    # invokes: Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z
    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 343
    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v1

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    :cond_20
    return-void
.end method
