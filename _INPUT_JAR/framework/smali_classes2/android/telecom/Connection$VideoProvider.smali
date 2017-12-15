.class public abstract Landroid/telecom/Connection$VideoProvider;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;,
        Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    }
.end annotation


# static fields
.field private static final MSG_REQUEST_CALL_DATA_USAGE:I = 0xa

.field private static final MSG_REQUEST_CAMERA_CAPABILITIES:I = 0x9

.field private static final MSG_SEND_SESSION_MODIFY_REQUEST:I = 0x7

.field private static final MSG_SEND_SESSION_MODIFY_RESPONSE:I = 0x8

.field private static final MSG_SET_CAMERA:I = 0x2

.field private static final MSG_SET_DEVICE_ORIENTATION:I = 0x5

.field private static final MSG_SET_DISPLAY_SURFACE:I = 0x4

.field private static final MSG_SET_PAUSE_IMAGE:I = 0xb

.field private static final MSG_SET_PREVIEW_SURFACE:I = 0x3

.field private static final MSG_SET_VIDEO_CALLBACK:I = 0x1

.field private static final MSG_SET_ZOOM:I = 0x6

.field public static final SESSION_EVENT_CAMERA_FAILURE:I = 0x5

.field public static final SESSION_EVENT_CAMERA_READY:I = 0x6

.field public static final SESSION_EVENT_RX_PAUSE:I = 0x1

.field public static final SESSION_EVENT_RX_RESUME:I = 0x2

.field public static final SESSION_EVENT_TX_START:I = 0x3

.field public static final SESSION_EVENT_TX_STOP:I = 0x4

.field public static final SESSION_MODIFY_REQUEST_FAIL:I = 0x2

.field public static final SESSION_MODIFY_REQUEST_INVALID:I = 0x3

.field public static final SESSION_MODIFY_REQUEST_SUCCESS:I = 0x1

.field public static final SESSION_MODIFY_REQUEST_TIMED_OUT:I = 0x4


# instance fields
.field private final mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

.field private final mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

.field private mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    .line 274
    new-instance v0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    invoke-direct {v0, p0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$1;)V

    iput-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    .line 275
    return-void
.end method

.method static synthetic access$102(Landroid/telecom/Connection$VideoProvider;Lcom/android/internal/telecom/IVideoCallback;)Lcom/android/internal/telecom/IVideoCallback;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;
    .param p1, "x1"    # Lcom/android/internal/telecom/IVideoCallback;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mMessageHandler:Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    return-object v0
.end method


# virtual methods
.method public changeCallDataUsage(I)V
    .registers 3
    .param p1, "dataUsage"    # I

    .prologue
    .line 438
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 440
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 444
    :cond_9
    :goto_9
    return-void

    .line 441
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    .registers 3
    .param p1, "cameraCapabilities"    # Landroid/telecom/CameraCapabilities;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 454
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 458
    :cond_9
    :goto_9
    return-void

    .line 455
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public changePeerDimensions(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 424
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 426
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 430
    :cond_9
    :goto_9
    return-void

    .line 427
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public final getInterface()Lcom/android/internal/telecom/IVideoProvider;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mBinder:Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;

    return-object v0
.end method

.method public handleCallSessionEvent(I)V
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 409
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 411
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 415
    :cond_9
    :goto_9
    return-void

    .line 412
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public abstract onRequestCallDataUsage()V
.end method

.method public abstract onRequestCameraCapabilities()V
.end method

.method public abstract onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSetCamera(Ljava/lang/String;)V
.end method

.method public abstract onSetDeviceOrientation(I)V
.end method

.method public abstract onSetDisplaySurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetPauseImage(Ljava/lang/String;)V
.end method

.method public abstract onSetPreviewSurface(Landroid/view/Surface;)V
.end method

.method public abstract onSetZoom(F)V
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 369
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 371
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 375
    :cond_9
    :goto_9
    return-void

    .line 372
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    if-eqz v0, :cond_9

    .line 391
    :try_start_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider;->mVideoCallback:Lcom/android/internal/telecom/IVideoCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 396
    :cond_9
    :goto_9
    return-void

    .line 393
    :catch_a
    move-exception v0

    goto :goto_9
.end method
