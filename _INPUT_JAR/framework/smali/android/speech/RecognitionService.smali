.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$StartListeningArgs;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_RESET:I = 0x4

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private mCurrentCallback:Landroid/speech/RecognitionService$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 75
    new-instance v0, Landroid/speech/RecognitionService$1;

    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    .line 320
    return-void
.end method

.method static synthetic access$000(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .registers 3
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic access$300(Landroid/speech/RecognitionService;)V
    .registers 1
    .param p0, "x0"    # Landroid/speech/RecognitionService;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    return-void
.end method

.method static synthetic access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/speech/RecognitionService;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z
    .registers 3
    .param p0, "x0"    # Landroid/speech/RecognitionService;
    .param p1, "x1"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method private checkPermissions(Landroid/speech/IRecognitionListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 173
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 175
    const/4 v1, 0x1

    .line 183
    :goto_9
    return v1

    .line 178
    :cond_a
    :try_start_a
    const-string v1, "RecognitionService"

    const-string v2, "call for recognition service without RECORD_AUDIO permissions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_18

    .line 183
    :goto_16
    const/4 v1, 0x0

    goto :goto_9

    .line 180
    :catch_18
    move-exception v0

    .line 181
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "sending ERROR_INSUFFICIENT_PERMISSIONS message failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v0, :cond_5

    .line 148
    :goto_4
    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    # getter for: Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;
    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    .line 142
    const-string v0, "RecognitionService"

    const-string v1, "cancel called by client who did not call startListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 144
    :cond_1d
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    goto :goto_4
.end method

.method private dispatchClearCallback()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 152
    return-void
.end method

.method private dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 97
    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v2, :cond_28

    .line 100
    :try_start_4
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/speech/RecognitionService$2;

    invoke-direct {v3, p0, p2}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_1f

    .line 110
    new-instance v2, Landroid/speech/RecognitionService$Callback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;Landroid/speech/RecognitionService$1;)V

    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 111
    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, p1, v2}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    .line 120
    :goto_1e
    return-void

    .line 106
    :catch_1f
    move-exception v1

    .line 107
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "RecognitionService"

    const-string v3, "dead listener on startListening"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 114
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_28
    const/16 v2, 0x8

    :try_start_2a
    invoke-interface {p2, v2}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_35

    .line 118
    :goto_2d
    const-string v2, "RecognitionService"

    const-string v3, "concurrent startListening received - ignoring this call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 115
    :catch_35
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RecognitionService"

    const-string/jumbo v3, "onError call from startListening failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    if-nez v1, :cond_11

    .line 125
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 126
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "stopListening called with no preceding startListening - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_10
    return-void

    .line 127
    :cond_11
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    # getter for: Landroid/speech/RecognitionService$Callback;->mListener:Landroid/speech/IRecognitionListener;
    invoke-static {v1}, Landroid/speech/RecognitionService$Callback;->access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_39

    .line 128
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 129
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "stopListening called by other caller than startListening - ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_10

    .line 133
    :catch_2f
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecognitionService"

    const-string/jumbo v2, "onError call from stopListening failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :try_start_39
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_2f

    goto :goto_10
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    return-object v0
.end method

.method protected abstract onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    .line 218
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    .line 219
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 220
    return-void
.end method

.method protected abstract onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method
