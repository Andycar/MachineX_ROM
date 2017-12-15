.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 2478
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 2481
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    .line 2482
    .local v0, "index":I
    iget-object v2, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_e

    .line 2489
    :cond_d
    :goto_d
    return-void

    .line 2485
    :cond_e
    iget-object v2, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v2

    aget-object v1, v2, v0

    .line 2486
    .local v1, "track":Landroid/media/SubtitleTrack;
    if-eqz v1, :cond_d

    .line 2487
    invoke-virtual {v1, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V

    goto :goto_d
.end method
