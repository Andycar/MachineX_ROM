.class Landroid/service/voice/VoiceInteractionSession$1;
.super Lcom/android/internal/app/IVoiceInteractor$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p2}, Landroid/service/voice/VoiceInteractionSession;->newRequest(Lcom/android/internal/app/IVoiceInteractorCallback;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v3

    .line 117
    .local v3, "request":Landroid/service/voice/VoiceInteractionSession$Request;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v6, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    new-instance v2, Landroid/service/voice/VoiceInteractionSession$Caller;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/service/voice/VoiceInteractionSession$Caller;-><init>(Ljava/lang/String;I)V

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 120
    iget-object v0, v3, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v0
.end method

.method public startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p2}, Landroid/service/voice/VoiceInteractionSession;->newRequest(Lcom/android/internal/app/IVoiceInteractorCallback;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v3

    .line 127
    .local v3, "request":Landroid/service/voice/VoiceInteractionSession$Request;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v6, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    new-instance v2, Landroid/service/voice/VoiceInteractionSession$Caller;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/service/voice/VoiceInteractionSession$Caller;-><init>(Ljava/lang/String;I)V

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 130
    iget-object v0, v3, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v0
.end method

.method public startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 106
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p2}, Landroid/service/voice/VoiceInteractionSession;->newRequest(Lcom/android/internal/app/IVoiceInteractorCallback;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v3

    .line 107
    .local v3, "request":Landroid/service/voice/VoiceInteractionSession$Request;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v6, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    new-instance v2, Landroid/service/voice/VoiceInteractionSession$Caller;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/service/voice/VoiceInteractionSession$Caller;-><init>(Ljava/lang/String;I)V

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 110
    iget-object v0, v3, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v0
.end method

.method public startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p3, "prompt"    # Ljava/lang/CharSequence;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0, p2}, Landroid/service/voice/VoiceInteractionSession;->newRequest(Lcom/android/internal/app/IVoiceInteractorCallback;)Landroid/service/voice/VoiceInteractionSession$Request;

    move-result-object v3

    .line 97
    .local v3, "request":Landroid/service/voice/VoiceInteractionSession$Request;
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v6, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    new-instance v2, Landroid/service/voice/VoiceInteractionSession$Caller;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, p1, v4}, Landroid/service/voice/VoiceInteractionSession$Caller;-><init>(Ljava/lang/String;I)V

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 100
    iget-object v0, v3, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    return-object v0
.end method

.method public supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;

    .prologue
    .line 135
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x5

    const/4 v5, 0x0

    new-instance v6, Landroid/service/voice/VoiceInteractionSession$Caller;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, p1, v7}, Landroid/service/voice/VoiceInteractionSession$Caller;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$1;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessageAndWait(Landroid/os/Message;)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 138
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_28

    .line 139
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [Z

    move-object v2, v3

    check-cast v2, [Z

    .line 140
    .local v2, "res":[Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 143
    .end local v2    # "res":[Z
    :goto_27
    return-object v2

    :cond_28
    array-length v3, p2

    new-array v2, v3, [Z

    goto :goto_27
.end method
