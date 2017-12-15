.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnSetPlayItemListener;,
        Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;,
        Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field private static final MSG_GET_NOW_PLAYING_ENTRIES:I = 0xe

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field private static final MSG_SET_BROWSED_PLAYER:I = 0xc

.field private static final MSG_SET_PLAY_ITEM:I = 0xd

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private mGetNowPlayingEntriesListener:Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionPlaybackState:Landroid/media/session/PlaybackState;

.field private mSetBrowsedPlayerListener:Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;

.field private mSetPlayItemListener:Landroid/media/RemoteControlClient$OnSetPlayItemListener;

.field private mTransportControlFlags:I

.field private mTransportListener:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1006
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 1013
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 1029
    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 1034
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 1038
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 1042
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1055
    iput v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1061
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1086
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1099
    iput-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1104
    iput-object v5, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 1126
    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 352
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 355
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_41

    .line 356
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 363
    :goto_40
    return-void

    .line 357
    :cond_41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 358
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_40

    .line 360
    :cond_4f
    iput-object v5, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 361
    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .registers 6
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 1029
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 1034
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 1038
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 1042
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1055
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1061
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1099
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 1126
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 381
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 383
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 384
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onSetBrowsedPlayer()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;IJ)V
    .registers 4
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSetPlayItem(IJ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onGetNowPlayingEntries()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/RemoteControlClient;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/RemoteControlClient;IJ)V
    .registers 4
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/RemoteControlClient;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 61
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    return v0
.end method

.method static synthetic access$900(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .registers 5
    .param p0, "speed"    # F

    .prologue
    .line 1301
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 1302
    const-wide/16 v0, 0x3a98

    .line 1304
    :goto_c
    return-wide v0

    :cond_d
    const v0, 0x466a6000    # 15000.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_c
.end method

.method private onGetNowPlayingEntries()V
    .registers 4

    .prologue
    .line 1244
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "onGetNowPlayingEntries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    :try_start_b
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mGetNowPlayingEntriesListener:Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;

    if-eqz v0, :cond_1c

    .line 1247
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "mGetNowPlayingEntriesListener.onGetNowPlayingEntries"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mGetNowPlayingEntriesListener:Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;

    invoke-interface {v0}, Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;->onGetNowPlayingEntries()V

    .line 1250
    :cond_1c
    monitor-exit v1

    .line 1251
    return-void

    .line 1250
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private onPositionDriftCheck()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 793
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 794
    :try_start_5
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v4, :cond_13

    .line 795
    :cond_11
    monitor-exit v5

    .line 821
    :goto_12
    return-void

    .line 797
    :cond_13
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v6, v12

    if-ltz v4, :cond_20

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_25

    .line 799
    :cond_20
    monitor-exit v5

    goto :goto_12

    .line 820
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v4

    .line 801
    :cond_25
    :try_start_25
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    sub-long/2addr v8, v10

    long-to-float v4, v8

    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    div-float/2addr v4, v8

    float-to-long v8, v4

    add-long v2, v6, v8

    .line 803
    .local v2, "estPos":J
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-interface {v4}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    move-result-wide v0

    .line 804
    .local v0, "actPos":J
    cmp-long v4, v0, v12

    if-ltz v4, :cond_68

    .line 805
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v4, v6, v8

    if-lez v4, :cond_54

    .line 808
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 820
    :goto_52
    monitor-exit v5

    goto :goto_12

    .line 812
    :cond_54
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v7}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v8

    invoke-virtual {v4, v6, v8, v9}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_52

    .line 818
    :cond_68
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V
    :try_end_6f
    .catchall {:try_start_25 .. :try_end_6f} :catchall_22

    goto :goto_52
.end method

.method private onSeekTo(IJ)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 1208
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    :try_start_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_10

    .line 1210
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 1212
    :cond_10
    monitor-exit v1

    .line 1213
    return-void

    .line 1212
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private onSetBrowsedPlayer()V
    .registers 4

    .prologue
    .line 1234
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "onSetBrowsedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1236
    :try_start_b
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSetBrowsedPlayerListener:Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;

    if-eqz v0, :cond_1c

    .line 1237
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "mSetBrowsedPlayerListener.onSetBrowsedPlayer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSetBrowsedPlayerListener:Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;

    invoke-interface {v0}, Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;->onSetBrowsedPlayer()V

    .line 1240
    :cond_1c
    monitor-exit v1

    .line 1241
    return-void

    .line 1240
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private onSetPlayItem(IJ)V
    .registers 8
    .param p1, "scope"    # I
    .param p2, "uid"    # J

    .prologue
    .line 1224
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "onSetPlayItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1226
    :try_start_b
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSetPlayItemListener:Landroid/media/RemoteControlClient$OnSetPlayItemListener;

    if-eqz v0, :cond_1c

    .line 1227
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "mSetPlayItemListener.onSetPlayItem"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSetPlayItemListener:Landroid/media/RemoteControlClient$OnSetPlayItemListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/RemoteControlClient$OnSetPlayItemListener;->onSetPlayItem(IJ)V

    .line 1230
    :cond_1c
    monitor-exit v1

    .line 1231
    return-void

    .line 1230
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1216
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v0, :cond_10

    .line 1218
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

    .line 1220
    :cond_10
    monitor-exit v1

    .line 1221
    return-void

    .line 1220
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private playItemResponseInt(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 726
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "playItemResponseInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_2a

    .line 731
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->playItemResponse(Z)V

    .line 733
    :cond_2a
    return-void
.end method

.method static playbackPositionShouldMove(I)Z
    .registers 2
    .param p0, "playstate"    # I

    .prologue
    .line 1264
    packed-switch p0, :pswitch_data_8

    .line 1276
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 1271
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1264
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private setPlaybackStateInt(IJFZ)V
    .registers 16
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 674
    iget-object v7, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 680
    :try_start_7
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v4, p1, :cond_21

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v4, p2

    if-nez v4, :cond_21

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v4, v4, p4

    if-nez v4, :cond_21

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_61

    cmp-long v4, p2, v8

    if-nez v4, :cond_61

    .line 684
    :cond_21
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 688
    if-eqz p5, :cond_69

    .line 689
    cmp-long v4, p2, v8

    if-gez v4, :cond_63

    .line 690
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 697
    :goto_2d
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 702
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v4, :cond_61

    .line 703
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getStateFromRccState(I)I

    move-result v1

    .line 704
    .local v1, "pbState":I
    if-eqz p5, :cond_41

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 707
    .local v2, "position":J
    :cond_41
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v4}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 708
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 709
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 710
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v4

    iput-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 711
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 714
    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    .end local v1    # "pbState":I
    .end local v2    # "position":J
    :cond_61
    monitor-exit v7

    .line 715
    return-void

    .line 692
    :cond_63
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_2d

    .line 714
    :catchall_66
    move-exception v4

    monitor-exit v7
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw v4

    .line 695
    :cond_69
    const-wide v4, -0x7fe688e67fe67d00L

    :try_start_6e
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_66

    goto :goto_2d
.end method

.method private updateFolderInfoBrowsedPlayerInt(Ljava/lang/String;)V
    .registers 4
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "updateFolderInfoBrowsedPlayerInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_11

    .line 767
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 769
    :cond_11
    return-void
.end method

.method private updateNowPlayingContentChangeInt()V
    .registers 3

    .prologue
    .line 782
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "updateNowPlayingContentChangeInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_11

    .line 786
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->updateNowPlayingContentChange()V

    .line 788
    :cond_11
    return-void
.end method

.method private updateNowPlayingEntriesInt([J)V
    .registers 4
    .param p1, "playList"    # [J

    .prologue
    .line 744
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "updateNowPlayingEntriesInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_11

    .line 748
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->updateNowPlayingEntries([J)V

    .line 750
    :cond_11
    return-void
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .registers 7
    .param p1, "startEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .line 606
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_29

    .line 607
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 608
    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 609
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 610
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 611
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    .line 619
    :goto_1b
    if-nez p1, :cond_21

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_3b

    .line 620
    :cond_21
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    .line 624
    :goto_28
    return-object v0

    .line 613
    :cond_29
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 614
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 615
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 616
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_1b

    .line 622
    :cond_3b
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-direct {v1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    goto :goto_28
.end method

.method public getMediaSession()Landroid/media/session/MediaSession;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public playItemResponse(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 721
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "playItemResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->playItemResponseInt(Z)V

    .line 723
    return-void
.end method

.method public registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .registers 4
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 390
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    .line 391
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 392
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 393
    return-void
.end method

.method public setBrowsedPlayerUpdateListener(Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;

    .prologue
    .line 909
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "setBrowsedPlayerUpdateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 911
    :try_start_b
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mSetBrowsedPlayerListener:Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;

    .line 912
    monitor-exit v1

    .line 913
    return-void

    .line 912
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .prologue
    .line 876
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 878
    monitor-exit v1

    .line 879
    return-void

    .line 878
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setNowPlayingEntriesUpdateListener(Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;

    .prologue
    .line 892
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "setNowPlayingEntriesUpdateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_b
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mGetNowPlayingEntriesListener:Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;

    .line 895
    monitor-exit v1

    .line 896
    return-void

    .line 895
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .registers 8
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .prologue
    .line 987
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 989
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v0, :cond_24

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 993
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 997
    :cond_24
    monitor-exit v1

    .line 998
    return-void

    .line 997
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setPlayItemListener(Landroid/media/RemoteControlClient$OnSetPlayItemListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnSetPlayItemListener;

    .prologue
    .line 926
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "setPlayItemListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_b
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mSetPlayItemListener:Landroid/media/RemoteControlClient$OnSetPlayItemListener;

    .line 929
    monitor-exit v1

    .line 930
    return-void

    .line 929
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .registers 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .prologue
    .line 975
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_3
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 977
    monitor-exit v1

    .line 978
    return-void

    .line 977
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setPlaybackState(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 641
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 643
    return-void
.end method

.method public setPlaybackState(IJF)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    .prologue
    .line 669
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 670
    return-void
.end method

.method public setTransportControlFlags(I)V
    .registers 8
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 838
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 840
    :try_start_3
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 843
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_24

    .line 844
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 845
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getActionsFromRccControlFlags(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 847
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 848
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 850
    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    :cond_24
    monitor-exit v2

    .line 851
    return-void

    .line 850
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 399
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 401
    return-void
.end method

.method public updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 4
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 756
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "updateFolderInfoBrowsedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    :try_start_b
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->updateFolderInfoBrowsedPlayerInt(Ljava/lang/String;)V

    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 759
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0
.end method

.method public updateNowPlayingContentChange()V
    .registers 3

    .prologue
    .line 775
    const-string v0, "RemoteControlClient"

    const-string/jumbo v1, "updateNowPlayingContentChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_b
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->updateNowPlayingContentChangeInt()V

    .line 778
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0
.end method

.method public updateNowPlayingEntries([J)V
    .registers 5
    .param p1, "playList"    # [J

    .prologue
    .line 739
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNowPlayingEntries: Item numbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->updateNowPlayingEntriesInt([J)V

    .line 741
    return-void
.end method
