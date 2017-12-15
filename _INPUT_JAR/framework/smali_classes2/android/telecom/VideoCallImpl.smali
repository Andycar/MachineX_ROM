.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field private final mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .registers 5
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 50
    new-instance v0, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 103
    new-instance v0, Landroid/telecom/VideoCallImpl$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$2;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 157
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 159
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$1;)V

    iput-object v0, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 160
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl;->mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->setVideoCallback(Landroid/os/IBinder;)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Listener;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;

    return-object v0
.end method


# virtual methods
.method public requestCallDataUsage()V
    .registers 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 238
    :goto_5
    return-void

    .line 236
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestCameraCapabilities()V
    .registers 2

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 230
    :goto_5
    return-void

    .line 228
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 214
    :goto_5
    return-void

    .line 212
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 222
    :goto_5
    return-void

    .line 220
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 174
    :goto_5
    return-void

    .line 172
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 198
    :goto_5
    return-void

    .line 196
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 190
    :goto_5
    return-void

    .line 188
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    :goto_5
    return-void

    .line 244
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 182
    :goto_5
    return-void

    .line 180
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setVideoCallListener(Landroid/telecom/InCallService$VideoCall$Listener;)V
    .registers 2
    .param p1, "videoCallListener"    # Landroid/telecom/InCallService$VideoCall$Listener;

    .prologue
    .line 165
    iput-object p1, p0, Landroid/telecom/VideoCallImpl;->mVideoCallListener:Landroid/telecom/InCallService$VideoCall$Listener;

    .line 166
    return-void
.end method

.method public setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 206
    :goto_5
    return-void

    .line 204
    :catch_6
    move-exception v0

    goto :goto_5
.end method
