.class Landroid/media/RemoteController$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .registers 2

    .prologue
    .line 784
    iput-object p1, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/RemoteController;
    .param p2, "x1"    # Landroid/media/RemoteController$1;

    .prologue
    .line 784
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MediaControllerCallback;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 792
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$900(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    .line 793
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 787
    iget-object v0, p0, Landroid/media/RemoteController$MediaControllerCallback;->this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$800(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    .line 788
    return-void
.end method
