.class Landroid/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .registers 5

    .prologue
    .line 2551
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$2;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .registers 9

    .prologue
    const/16 v3, 0x385

    .line 2553
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v4

    if-nez v4, :cond_f

    .line 2571
    :cond_e
    :goto_e
    return v3

    .line 2557
    :cond_f
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPlayer$2;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 2558
    .local v2, "track":Landroid/media/SubtitleTrack;
    if-eqz v2, :cond_e

    .line 2563
    new-instance v1, Ljava/util/Scanner;

    iget-object v3, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2564
    .local v1, "scanner":Ljava/util/Scanner;
    const-string v3, "\\A"

    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, "contents":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 2566
    :try_start_37
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    iget-object v5, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2567
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_5c

    .line 2568
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 2569
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2570
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 2571
    const/16 v3, 0x323

    goto :goto_e

    .line 2567
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v3
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2575
    invoke-direct {p0}, Landroid/media/MediaPlayer$2;->addTrack()I

    move-result v1

    .line 2576
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 2577
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2578
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2580
    .end local v0    # "m":Landroid/os/Message;
    :cond_23
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2581
    return-void
.end method
