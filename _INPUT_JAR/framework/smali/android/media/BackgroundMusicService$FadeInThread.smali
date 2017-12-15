.class Landroid/media/BackgroundMusicService$FadeInThread;
.super Ljava/lang/Thread;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BackgroundMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeInThread"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Landroid/media/BackgroundMusicService;


# direct methods
.method public constructor <init>(Landroid/media/BackgroundMusicService;I)V
    .registers 4
    .param p2, "delay"    # I

    .prologue
    .line 107
    iput-object p1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    .line 108
    iput p2, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 113
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 116
    :try_start_3
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    if-lez v1, :cond_d

    .line 117
    iget v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->mDuration:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    :cond_d
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 121
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 122
    iget-object v1, p0, Landroid/media/BackgroundMusicService$FadeInThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    .line 127
    :cond_27
    :goto_27
    return-void

    .line 124
    :catch_28
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
