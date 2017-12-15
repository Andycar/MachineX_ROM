.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Listener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .registers 6
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 276
    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 286
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    .line 290
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 292
    :try_start_26
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->setVideoCallback(Landroid/os/IBinder;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_36

    .line 295
    :goto_35
    return-void

    .line 293
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 198
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 298
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public removeListener(Landroid/telecom/RemoteConnection$VideoProvider$Listener;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Listener;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method public requestCallDataUsage()V
    .registers 2

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 366
    :goto_5
    return-void

    .line 364
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestCameraCapabilities()V
    .registers 2

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 359
    :goto_5
    return-void

    .line 357
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "reqProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 345
    :goto_5
    return-void

    .line 343
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 352
    :goto_5
    return-void

    .line 350
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 310
    :goto_5
    return-void

    .line 308
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 331
    :goto_5
    return-void

    .line 329
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 324
    :goto_5
    return-void

    .line 322
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 373
    :goto_5
    return-void

    .line 371
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 314
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 317
    :goto_5
    return-void

    .line 315
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 338
    :goto_5
    return-void

    .line 336
    :catch_6
    move-exception v0

    goto :goto_5
.end method
