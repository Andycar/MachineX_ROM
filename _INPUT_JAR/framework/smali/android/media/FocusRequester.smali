.class Landroid/media/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

.field private mFocusChanged:Z

.field private final mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;

.field private final mStreamType:I


# direct methods
.method constructor <init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V
    .registers 12
    .param p1, "streamType"    # I
    .param p2, "focusRequest"    # I
    .param p3, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p4, "source"    # Landroid/os/IBinder;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "hdlr"    # Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    .param p7, "pn"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/media/FocusRequester;->mStreamType:I

    .line 71
    iput-object p3, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 72
    iput-object p4, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    .line 73
    iput-object p5, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    .line 75
    iput-object p7, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 76
    iput p8, p0, Landroid/media/FocusRequester;->mCallingUid:I

    .line 77
    iput p2, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    .line 78
    iput v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    .line 80
    iget v0, p0, Landroid/media/FocusRequester;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    .line 85
    :goto_1e
    return-void

    .line 83
    :cond_1f
    iput-boolean v2, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    goto :goto_1e
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"    # I

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_36

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 145
    :pswitch_1d
    const-string/jumbo v0, "none"

    goto :goto_1c

    .line 147
    :pswitch_21
    const-string v0, "GAIN"

    goto :goto_1c

    .line 149
    :pswitch_24
    const-string v0, "GAIN_TRANSIENT"

    goto :goto_1c

    .line 151
    :pswitch_27
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_1c

    .line 153
    :pswitch_2a
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    goto :goto_1c

    .line 155
    :pswitch_2d
    const-string v0, "LOSS"

    goto :goto_1c

    .line 157
    :pswitch_30
    const-string v0, "LOSS_TRANSIENT"

    goto :goto_1c

    .line 159
    :pswitch_33
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_1c

    .line 143
    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_1d
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .registers 5
    .param p1, "gainRequest"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, -0x1

    .line 208
    packed-switch p1, :pswitch_data_36

    .line 238
    :goto_5
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    :goto_1e
    :pswitch_1e
    return v0

    .line 210
    :pswitch_1f
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_42

    .line 219
    :pswitch_24
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_4e

    .line 228
    :pswitch_29
    iget v2, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    packed-switch v2, :pswitch_data_5a

    goto :goto_5

    .line 231
    :pswitch_2f
    const/4 v0, -0x3

    goto :goto_1e

    :pswitch_31
    move v0, v1

    .line 223
    goto :goto_1e

    :pswitch_33
    move v0, v1

    .line 233
    goto :goto_1e

    .line 208
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_24
    .end packed-switch

    .line 210
    :pswitch_data_42
    .packed-switch -0x3
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 219
    :pswitch_data_4e
    .packed-switch -0x3
        :pswitch_31
        :pswitch_31
        :pswitch_1e
        :pswitch_31
    .end packed-switch

    .line 228
    :pswitch_data_5a
    .packed-switch -0x3
        :pswitch_2f
        :pswitch_33
        :pswitch_1e
        :pswitch_2f
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    invoke-static {v0}, Landroid/media/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/FocusRequester;->focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FocusRequester;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/media/FocusRequester;->release()V

    .line 198
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 199
    return-void
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method getGainRequest()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Landroid/media/FocusRequester;->mFocusGainRequest:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getStreamType()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Landroid/media/FocusRequester;->mStreamType:I

    return v0
.end method

.method getUserId()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Landroid/media/FocusRequester;->mCallingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method handleExternalFocusGain(I)V
    .registers 3
    .param p1, "focusGain"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1}, Landroid/media/FocusRequester;->focusLossForGainRequest(I)I

    move-result v0

    .line 245
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 246
    return-void
.end method

.method handleFocusGain(I)V
    .registers 5
    .param p1, "focusGain"    # I

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_b

    .line 255
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 257
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    .line 259
    iget v1, p0, Landroid/media/FocusRequester;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/FocusRequester;->mFocusChanged:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 265
    :cond_16
    :goto_16
    return-void

    .line 262
    :catch_17
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal gain of audio focus due to: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method handleFocusLoss(I)V
    .registers 5
    .param p1, "focusLoss"    # I

    .prologue
    .line 269
    :try_start_0
    iget v1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    if-eq p1, v1, :cond_11

    .line 270
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_f

    .line 275
    iget-object v1, p0, Landroid/media/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 277
    :cond_f
    iput p1, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 282
    :cond_11
    :goto_11
    return-void

    .line 279
    :catch_12
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal loss of audio focus due to:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "ib"    # Landroid/os/IBinder;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 5
    .param p1, "otherClient"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    :try_start_1
    iget-object v2, p0, Landroid/media/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 95
    :cond_a
    :goto_a
    return v1

    .line 94
    :catch_b
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 105
    :try_start_1
    iget-object v2, p0, Landroid/media/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 107
    :cond_a
    :goto_a
    return v1

    .line 106
    :catch_b
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method hasSameUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 112
    iget v0, p0, Landroid/media/FocusRequester;->mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isFocusChanged()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    return v0
.end method

.method isGainLoss()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Landroid/media/FocusRequester;->mFocusLossReceived:I

    return v0
.end method

.method release()V
    .registers 5

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v1, :cond_13

    .line 187
    iget-object v1, p0, Landroid/media/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/FocusRequester;->mDeathHandler:Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_13} :catch_14

    .line 193
    :cond_13
    :goto_13
    return-void

    .line 190
    :catch_14
    move-exception v0

    .line 191
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "FocusRequester.release() hit "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method resetFocusChanged()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/FocusRequester;->mFocusChanged:Z

    .line 139
    return-void
.end method
