.class public final Landroid/media/projection/MediaProjection;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjection$1;,
        Landroid/media/projection/MediaProjection$CallbackRecord;,
        Landroid/media/projection/MediaProjection$MediaProjectionCallback;,
        Landroid/media/projection/MediaProjection$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjection"


# instance fields
.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/projection/MediaProjection$Callback;",
            "Landroid/media/projection/MediaProjection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroid/media/projection/IMediaProjection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/media/projection/IMediaProjection;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    .line 60
    :try_start_e
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    new-instance v2, Landroid/media/projection/MediaProjection$MediaProjectionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/projection/MediaProjection$MediaProjectionCallback;-><init>(Landroid/media/projection/MediaProjection;Landroid/media/projection/MediaProjection$1;)V

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    .line 64
    return-void

    .line 61
    :catch_1a
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to start media projection"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/media/projection/MediaProjection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public createAudioRecord(IIII)Landroid/media/AudioRecord;
    .registers 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "audioFormat"    # I
    .param p4, "bufferSizeInBytes"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 135
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 136
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1
.end method

.method public createVirtualDisplay(Ljava/lang/String;IIIZLandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dpi"    # I
    .param p5, "isSecure"    # Z
    .param p6, "surface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 101
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 102
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz p5, :cond_21

    const/4 v10, 0x4

    .line 103
    .local v10, "flags":I
    :goto_d
    or-int/lit8 v1, v10, 0x10

    or-int/lit8 v7, v1, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    return-object v1

    .line 102
    .end local v10    # "flags":I
    :cond_21
    const/4 v10, 0x0

    goto :goto_d
.end method

.method public getProjection()Landroid/media/projection/IMediaProjection;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 76
    if-nez p1, :cond_a

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_a
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjection$CallbackRecord;-><init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjection;->mImpl:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->stop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 159
    :goto_5
    return-void

    .line 156
    :catch_6
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjection"

    const-string v2, "Unable to stop projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;

    .prologue
    .line 89
    if-nez p1, :cond_a

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_a
    iget-object v0, p0, Landroid/media/projection/MediaProjection;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
