.class Landroid/service/voice/VoiceInteractionSession$Request$1;
.super Lcom/android/internal/app/IVoiceInteractorRequest$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession$Request;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 180
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-eqz v0, :cond_1a

    .line 181
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x6

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$0:Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 184
    :cond_1a
    return-void
.end method
