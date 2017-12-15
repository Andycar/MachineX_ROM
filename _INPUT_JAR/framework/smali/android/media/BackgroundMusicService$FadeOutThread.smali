.class Landroid/media/BackgroundMusicService$FadeOutThread;
.super Ljava/lang/Thread;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BackgroundMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeOutThread"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Landroid/media/BackgroundMusicService;


# direct methods
.method public constructor <init>(Landroid/media/BackgroundMusicService;)V
    .registers 3

    .prologue
    .line 137
    iput-object p1, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 131
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    .line 138
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 142
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 144
    const/16 v0, 0x64

    .line 146
    .local v0, "NR_OF_FADEOUT_STEPS":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/16 v4, 0x64

    if-ge v2, v4, :cond_33

    .line 148
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 150
    .local v3, "volume":F
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 151
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 155
    :cond_23
    :try_start_23
    iget v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->mDuration:I

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2e

    .line 146
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 156
    :catch_2e
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "volume":F
    :cond_33
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 162
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 165
    :cond_48
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    # getter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/BackgroundMusicService;->access$000(Landroid/media/BackgroundMusicService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 166
    iget-object v4, p0, Landroid/media/BackgroundMusicService$FadeOutThread;->this$0:Landroid/media/BackgroundMusicService;

    const/4 v5, 0x0

    # setter for: Landroid/media/BackgroundMusicService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v5}, Landroid/media/BackgroundMusicService;->access$002(Landroid/media/BackgroundMusicService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 167
    return-void
.end method
