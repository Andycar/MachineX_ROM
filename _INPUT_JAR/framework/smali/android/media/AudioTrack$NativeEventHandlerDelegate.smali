.class Landroid/media/AudioTrack$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 11
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1556
    iput-object p1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    if-eqz p4, :cond_19

    .line 1560
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1567
    .local v2, "looper":Landroid/os/Looper;
    :goto_b
    if-eqz v2, :cond_1e

    .line 1569
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 1595
    :goto_18
    return-void

    .line 1563
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_19
    # getter for: Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/media/AudioTrack;->access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_b

    .line 1593
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_18
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
