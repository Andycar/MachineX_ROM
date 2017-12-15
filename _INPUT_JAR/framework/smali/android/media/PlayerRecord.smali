.class Landroid/media/PlayerRecord;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerRecord$RemotePlaybackState;,
        Landroid/media/PlayerRecord$RcClientDeathHandler;,
        Landroid/media/PlayerRecord$RccPlaybackState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field public static sController:Landroid/media/MediaFocusControl;

.field private static sLastRccId:I


# instance fields
.field public mCallingPackageName:Ljava/lang/String;

.field private mCallingUid:I

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field private mRcClient:Landroid/media/IRemoteControlClient;

.field private mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

.field private mRccId:I

.field private final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Landroid/media/PlayerRecord;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, -0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    .line 223
    iput-object p1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    .line 224
    iput-object p2, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    .line 225
    iput-object p3, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 226
    iput v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 228
    sget v1, Landroid/media/PlayerRecord;->sLastRccId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/media/PlayerRecord;->sLastRccId:I

    iput v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    .line 229
    new-instance v1, Landroid/media/PlayerRecord$RccPlaybackState;

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/media/PlayerRecord$RccPlaybackState;-><init>(IJF)V

    iput-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    .line 234
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->resetPlaybackInfo()V

    .line 235
    iget-object v1, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_32

    .line 237
    :try_start_2c
    iget-object v1, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    .line 242
    :cond_32
    :goto_32
    return-void

    .line 238
    :catch_33
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v2, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    goto :goto_32
.end method

.method protected static setMediaFocusControl(Landroid/media/MediaFocusControl;)V
    .registers 1
    .param p0, "mfc"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 217
    sput-object p0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    .line 218
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 351
    sget-object v0, Landroid/media/PlayerRecord;->sController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    .line 352
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 343
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_10

    .line 344
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 347
    :cond_10
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "registrationInfo"    # Z

    .prologue
    .line 194
    if-eqz p2, :cond_63

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  pi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- ercvr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    :goto_62
    return-void

    .line 204
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mRccId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol handling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volObs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->destroy()V

    .line 357
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 358
    return-void
.end method

.method protected getMediaButtonIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected getMediaButtonReceiver()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getRcc()Landroid/media/IRemoteControlClient;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method protected getRccId()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Landroid/media/PlayerRecord;->mRccId:I

    return v0
.end method

.method protected hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    .registers 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/media/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 264
    iget-object v0, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 269
    :goto_a
    return v0

    .line 266
    :cond_b
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1e

    .line 267
    iget-object v0, p0, Landroid/media/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    .line 269
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected isPlaybackActive()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    iget v0, v0, Landroid/media/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v0

    return v0
.end method

.method protected resetControllerInfoForNoRcc()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 313
    iput-object v0, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 314
    iput-object v0, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 315
    return-void
.end method

.method protected resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    .registers 10
    .param p1, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 283
    iget-object v3, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    if-eqz v3, :cond_7

    .line 285
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->unlinkToRcClientDeath()V

    .line 288
    :cond_7
    iput-object p1, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 289
    iput-object p2, p0, Landroid/media/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 290
    iput p3, p0, Landroid/media/PlayerRecord;->mCallingUid:I

    .line 291
    if-nez p1, :cond_13

    .line 293
    invoke-virtual {p0}, Landroid/media/PlayerRecord;->resetPlaybackInfo()V

    .line 307
    :goto_12
    return-void

    .line 295
    :cond_13
    iget-object v3, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .local v0, "b":Landroid/os/IBinder;
    new-instance v2, Landroid/media/PlayerRecord$RcClientDeathHandler;

    iget-object v3, p0, Landroid/media/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v3}, Landroid/media/PlayerRecord$RcClientDeathHandler;-><init>(Landroid/media/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 299
    .local v2, "rcdh":Landroid/media/PlayerRecord$RcClientDeathHandler;
    const/4 v3, 0x0

    :try_start_21
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_27

    .line 305
    :goto_24
    iput-object v2, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    goto :goto_12

    .line 300
    :catch_27
    move-exception v1

    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_24
.end method

.method public resetPlaybackInfo()V
    .registers 3

    .prologue
    const/16 v1, 0xf

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackType:I

    .line 319
    iput v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolume:I

    .line 320
    iput v1, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeMax:I

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackVolumeHandling:I

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/PlayerRecord;->mPlaybackStream:I

    .line 323
    iget-object v0, p0, Landroid/media/PlayerRecord;->mPlaybackState:Landroid/media/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0}, Landroid/media/PlayerRecord$RccPlaybackState;->reset()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 325
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .registers 5

    .prologue
    .line 329
    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    # getter for: Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/PlayerRecord$RcClientDeathHandler;->access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 331
    :try_start_c
    iget-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    # getter for: Landroid/media/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/PlayerRecord$RcClientDeathHandler;->access$000(Landroid/media/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/PlayerRecord;->mRcClientDeathHandler:Landroid/media/PlayerRecord$RcClientDeathHandler;
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 338
    :cond_1b
    :goto_1b
    return-void

    .line 333
    :catch_1c
    move-exception v0

    .line 335
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Error in unlinkToRcClientDeath()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method
