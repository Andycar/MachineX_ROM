.class public final Landroid/media/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaController$1;,
        Landroid/media/session/MediaController$MessageHandler;,
        Landroid/media/session/MediaController$CallbackStub;,
        Landroid/media/session/MediaController$PlaybackInfo;,
        Landroid/media/session/MediaController$TransportControls;,
        Landroid/media/session/MediaController$Callback;
    }
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0xc

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_FOLDER_INFO_BROWSED_PLAYER:I = 0x8

.field private static final MSG_PLAY_ITEM_RESPONSE:I = 0xb

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_NOWPLAYING_CONTENT_CHANGE:I = 0xa

.field private static final MSG_UPDATE_NOWPLAYING_ENTRIES:I = 0x9

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/MediaController$MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCbRegistered:Z

.field private final mCbStub:Landroid/media/session/MediaController$CallbackStub;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private final mSessionBinder:Landroid/media/session/ISessionController;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/media/session/MediaSession$Token;

.field private final mTransportControls:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionBinder"    # Landroid/media/session/ISessionController;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/media/session/MediaController$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaController$CallbackStub;-><init>(Landroid/media/session/MediaController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    .line 93
    if-nez p2, :cond_25

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session token cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_25
    if-nez p1, :cond_2f

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2f
    iput-object p2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    .line 100
    new-instance v0, Landroid/media/session/MediaController$TransportControls;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$1;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    .line 101
    new-instance v0, Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, p2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    .line 102
    iput-object p1, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 113
    return-void
.end method

.method static synthetic access$200(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;
    .registers 2
    .param p0, "x0"    # Landroid/media/session/MediaController;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/session/MediaController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaController;->postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 451
    const-string v2, "MediaController"

    const-string v3, "Callback is already added, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_d
    :goto_d
    return-void

    .line 454
    :cond_e
    new-instance v1, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/media/session/MediaController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V

    .line 455
    .local v1, "holder":Landroid/media/session/MediaController$MessageHandler;
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-nez v2, :cond_d

    .line 459
    :try_start_20
    iget-object v2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v3, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v2, v3}, Landroid/media/session/ISessionController;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/session/MediaController;->mCbRegistered:Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_d

    .line 461
    :catch_2b
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaController"

    const-string v3, "Dead object in registerCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private getHandlerForCallbackLocked(Landroid/media/session/MediaController$Callback;)Landroid/media/session/MediaController$MessageHandler;
    .registers 6
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .prologue
    .line 488
    if-nez p1, :cond_a

    .line 489
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_a
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_26

    .line 492
    iget-object v2, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController$MessageHandler;

    .line 493
    .local v0, "handler":Landroid/media/session/MediaController$MessageHandler;
    # getter for: Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;
    invoke-static {v0}, Landroid/media/session/MediaController$MessageHandler;->access$100(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    if-ne p1, v2, :cond_23

    .line 497
    .end local v0    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :goto_22
    return-object v0

    .line 491
    .restart local v0    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 497
    .end local v0    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private final postMessage(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 501
    iget-object v2, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 502
    :try_start_3
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 503
    iget-object v1, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$MessageHandler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/session/MediaController$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 502
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 505
    :cond_1b
    monitor-exit v2

    .line 506
    return-void

    .line 505
    .end local v0    # "i":I
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z
    .registers 8
    .param p1, "cb"    # Landroid/media/session/MediaController$Callback;

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, "success":Z
    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_22

    .line 470
    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController$MessageHandler;

    .line 471
    .local v1, "handler":Landroid/media/session/MediaController$MessageHandler;
    # getter for: Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;
    invoke-static {v1}, Landroid/media/session/MediaController$MessageHandler;->access$100(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;

    move-result-object v4

    if-ne p1, v4, :cond_1f

    .line 472
    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    const/4 v3, 0x1

    .line 469
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 476
    .end local v1    # "handler":Landroid/media/session/MediaController$MessageHandler;
    :cond_22
    iget-boolean v4, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    if-eqz v4, :cond_38

    iget-object v4, p0, Landroid/media/session/MediaController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_38

    .line 478
    :try_start_2e
    iget-object v4, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v5, p0, Landroid/media/session/MediaController;->mCbStub:Landroid/media/session/MediaController$CallbackStub;

    invoke-interface {v4, v5}, Landroid/media/session/ISessionController;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_39

    .line 482
    :goto_35
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/media/session/MediaController;->mCbRegistered:Z

    .line 484
    :cond_38
    return v3

    .line 479
    :catch_39
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaController"

    const-string v5, "Dead object in removeCallbackLocked"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method


# virtual methods
.method public adjustVolume(II)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/session/ISessionController;->adjustVolume(IILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 333
    :goto_b
    return-void

    .line 330
    :catch_c
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling adjustVolumeBy."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public controlsSameSession(Landroid/media/session/MediaController;)Z
    .registers 5
    .param p1, "other"    # Landroid/media/session/MediaController;

    .prologue
    const/4 v0, 0x0

    .line 445
    if-nez p1, :cond_4

    .line 446
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionBinder()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_b

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 144
    :goto_15
    return v0

    .line 140
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1, p1}, Landroid/media/session/ISessionController;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_15

    .line 141
    :catch_1d
    move-exception v1

    goto :goto_15
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 214
    :goto_6
    return-object v1

    .line 211
    :catch_7
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getExtras"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFlags()J
    .registers 5

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getFlags()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 251
    :goto_6
    return-wide v2

    .line 248
    :catch_7
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    const-wide/16 v2, 0x0

    goto :goto_6
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 4

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getMetadata()Landroid/media/MediaMetadata;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 171
    :goto_6
    return-object v1

    .line 169
    :catch_7
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 407
    iget-object v1, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 409
    :try_start_4
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_f

    .line 414
    :cond_c
    :goto_c
    iget-object v1, p0, Landroid/media/session/MediaController;->mPackageName:Ljava/lang/String;

    return-object v1

    .line 410
    :catch_f
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 9

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v7

    .line 262
    .local v7, "result":Landroid/media/session/ParcelableVolumeInfo;
    new-instance v0, Landroid/media/session/MediaController$PlaybackInfo;

    iget v1, v7, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    iget-object v2, v7, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    iget v3, v7, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, v7, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, v7, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(ILandroid/media/AudioAttributes;III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 268
    .end local v7    # "result":Landroid/media/session/ParcelableVolumeInfo;
    :goto_15
    return-object v0

    .line 265
    :catch_16
    move-exception v6

    .line 266
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "MediaController"

    const-string v1, "Error calling getAudioInfo."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 4

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 157
    :goto_6
    return-object v1

    .line 155
    :catch_7
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getQueue()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    iget-object v2, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v2}, Landroid/media/session/ISessionController;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 184
    .local v1, "queue":Landroid/content/pm/ParceledListSlice;
    if-eqz v1, :cond_15

    .line 185
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    .line 190
    .end local v1    # "queue":Landroid/content/pm/ParceledListSlice;
    :goto_c
    return-object v2

    .line 187
    :catch_d
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaController"

    const-string v3, "Error calling getQueue."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 202
    :goto_6
    return-object v1

    .line 199
    :catch_7
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getQueueTitle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRatingType()I
    .registers 4

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getRatingType()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 236
    :goto_6
    return v1

    .line 234
    :catch_7
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 283
    :goto_6
    return-object v1

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling getPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    const/4 v1, 0x0

    goto :goto_6
.end method

.method getSessionBinder()Landroid/media/session/ISessionController;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/media/session/MediaController;->mToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 424
    iget-object v1, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 426
    :try_start_4
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_f

    .line 431
    :cond_c
    :goto_c
    iget-object v1, p0, Landroid/media/session/MediaController;->mTag:Ljava/lang/String;

    return-object v1

    .line 427
    :catch_f
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in getTag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public getTransportControls()Landroid/media/session/MediaController$TransportControls;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/media/session/MediaController;->mTransportControls:Landroid/media/session/MediaController$TransportControls;

    return-object v0
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 343
    return-void
.end method

.method public registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 354
    if-nez p1, :cond_a

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_a
    if-nez p2, :cond_11

    .line 358
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 360
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_11
    iget-object v1, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_14
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaController;->addCallbackLocked(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "command cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 399
    :goto_13
    return-void

    .line 396
    :catch_14
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setVolumeTo(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController;->mSessionBinder:Landroid/media/session/ISessionController;

    iget-object v2, p0, Landroid/media/session/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/session/ISessionController;->setVolumeTo(IILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 312
    :goto_b
    return-void

    .line 309
    :catch_c
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaController"

    const-string v2, "Error calling setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/session/MediaController$Callback;

    .prologue
    .line 372
    if-nez p1, :cond_a

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_a
    iget-object v1, p0, Landroid/media/session/MediaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_d
    invoke-direct {p0, p1}, Landroid/media/session/MediaController;->removeCallbackLocked(Landroid/media/session/MediaController$Callback;)Z

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0
.end method
