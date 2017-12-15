.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mCallCapabilities:I

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mCallerDualPhoneNumber:Ljava/lang/String;

.field private mConference:Landroid/telecom/RemoteConference;

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .registers 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v1, 0x0

    .line 429
    const-string v0, "NULL"

    invoke-direct {p0, v0, v1, v1}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 431
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 432
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 433
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v3, 0x1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 386
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 389
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 414
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 415
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 416
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 418
    return-void
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 923
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 563
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 564
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 568
    :cond_b
    :goto_b
    return-void

    .line 566
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public answer()V
    .registers 3

    .prologue
    .line 575
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 576
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 580
    :cond_b
    :goto_b
    return-void

    .line 578
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public answer(I)V
    .registers 4
    .param p1, "videoState"    # I

    .prologue
    .line 589
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 590
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 594
    :cond_b
    :goto_b
    return-void

    .line 592
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 637
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 638
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 642
    :cond_b
    :goto_b
    return-void

    .line 640
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public getAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public getCallCapabilities()I
    .registers 2

    .prologue
    .line 478
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallCapabilities:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .registers 2

    .prologue
    .line 524
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCallerDualPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDualPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .registers 2

    .prologue
    .line 539
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public hold()V
    .registers 3

    .prologue
    .line 613
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 614
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 618
    :cond_b
    :goto_b
    return-void

    .line 616
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public isRingbackRequested()Z
    .registers 2

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public isVoipAudioMode()Z
    .registers 2

    .prologue
    .line 485
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public playDtmfTone(C)V
    .registers 4
    .param p1, "digit"    # C

    .prologue
    .line 655
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 656
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 660
    :cond_b
    :goto_b
    return-void

    .line 658
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public postDialContinue(Z)V
    .registers 4
    .param p1, "proceed"    # Z

    .prologue
    .line 701
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 702
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 706
    :cond_b
    :goto_b
    return-void

    .line 704
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 441
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method public reject()V
    .registers 3

    .prologue
    .line 601
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 602
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 606
    :cond_b
    :goto_b
    return-void

    .line 604
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method setAddress(Landroid/net/Uri;I)V
    .registers 6
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 868
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 869
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 870
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 871
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    goto :goto_a

    .line 873
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_1a
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 715
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 716
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 720
    :cond_b
    :goto_b
    return-void

    .line 718
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method setCallCapabilities(I)V
    .registers 5
    .param p1, "callCapabilities"    # I

    .prologue
    .line 795
    iput p1, p0, Landroid/telecom/RemoteConnection;->mCallCapabilities:I

    .line 796
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 797
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onCallCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_8

    .line 799
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 877
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 878
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 879
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 880
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    goto :goto_a

    .line 882
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_1a
    return-void
.end method

.method setCallerDualPhoneNumber(Ljava/lang/String;)V
    .registers 5
    .param p1, "callerDualPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 887
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDualPhoneNumber:Ljava/lang/String;

    .line 888
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 889
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onCallerDualPhoneNumberChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    goto :goto_8

    .line 891
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .registers 5
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 905
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v2, p1, :cond_1c

    .line 906
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 907
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 908
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    goto :goto_c

    .line 911
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 897
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 899
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V

    goto :goto_10

    .line 901
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_22
    return-void
.end method

.method setDestroyed()V
    .registers 6

    .prologue
    .line 805
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 807
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_18

    .line 808
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    const-string v4, "Connection destroyed."

    invoke-direct {v2, v3, v4}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 812
    :cond_18
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 813
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0}, Landroid/telecom/RemoteConnection$Callback;->onDestroyed(Landroid/telecom/RemoteConnection;)V

    goto :goto_1e

    .line 815
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_2e
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 817
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 819
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_36
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x6

    .line 769
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, v3, :cond_21

    .line 770
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 771
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 773
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 774
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    goto :goto_f

    .line 777
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_21
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .registers 5
    .param p1, "isVoip"    # Z

    .prologue
    .line 852
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 853
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 854
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_8

    .line 856
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .registers 5
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 826
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    goto :goto_6

    .line 828
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_16
    return-void
.end method

.method setRingbackRequested(Z)V
    .registers 5
    .param p1, "ringback"    # Z

    .prologue
    .line 783
    iget-boolean v2, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_1c

    .line 784
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 785
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 786
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_c

    .line 789
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method setState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 757
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, p1, :cond_1c

    .line 758
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 759
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 760
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_c

    .line 763
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 5
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 860
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 861
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 862
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    goto :goto_8

    .line 864
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 5
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 844
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 845
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 846
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    goto :goto_8

    .line 848
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method setVideoState(I)V
    .registers 5
    .param p1, "videoState"    # I

    .prologue
    .line 834
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 835
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 836
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_8

    .line 838
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_18
    return-void
.end method

.method public stopDtmfTone()V
    .registers 3

    .prologue
    .line 671
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 672
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 676
    :cond_b
    :goto_b
    return-void

    .line 674
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public unhold()V
    .registers 3

    .prologue
    .line 625
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_b

    .line 626
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 630
    :cond_b
    :goto_b
    return-void

    .line 628
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 450
    if-eqz p1, :cond_7

    .line 451
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 453
    :cond_7
    return-void
.end method
