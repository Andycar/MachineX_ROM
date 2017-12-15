.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final TYPE_MIRRORING:I = 0x1

.field public static final TYPE_PRESENTATION:I = 0x2

.field public static final TYPE_SCREEN_CAPTURE:I


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v1, "media_projection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 69
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 137
    if-nez p1, :cond_a

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_a
    new-instance v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 141
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :try_start_14
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 147
    :goto_19
    return-void

    .line 144
    :catch_1a
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public createScreenCaptureIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.media.MediaProjectionPermissionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 116
    :goto_6
    return-object v1

    .line 113
    :catch_7
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    if-nez p2, :cond_7

    .line 103
    :cond_6
    :goto_6
    return-object v1

    .line 99
    :cond_7
    const-string v2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "projection":Landroid/os/IBinder;
    if-eqz v0, :cond_6

    .line 103
    new-instance v1, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    goto :goto_6
.end method

.method public removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/media/projection/MediaProjectionManager$Callback;

    .prologue
    .line 154
    if-nez p1, :cond_a

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_a
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 159
    .local v0, "delegate":Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
    if-eqz v0, :cond_19

    .line 160
    :try_start_14
    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 165
    :cond_19
    :goto_19
    return-void

    .line 162
    :catch_1a
    move-exception v1

    .line 163
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public stopActiveProjection()V
    .registers 4

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    :goto_5
    return-void

    .line 126
    :catch_6
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to stop the currently active media projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
