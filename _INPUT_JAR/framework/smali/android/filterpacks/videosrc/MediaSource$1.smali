.class Landroid/filterpacks/videosrc/MediaSource$1;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .registers 2

    .prologue
    .line 512
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 514
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer sent dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2a
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$100(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 516
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_67

    .line 517
    :cond_44
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 521
    :goto_4d
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # setter for: Landroid/filterpacks/videosrc/MediaSource;->mWidth:I
    invoke-static {v0, p2}, Landroid/filterpacks/videosrc/MediaSource;->access$402(Landroid/filterpacks/videosrc/MediaSource;I)I

    .line 522
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # setter for: Landroid/filterpacks/videosrc/MediaSource;->mHeight:I
    invoke-static {v0, p3}, Landroid/filterpacks/videosrc/MediaSource;->access$502(Landroid/filterpacks/videosrc/MediaSource;I)I

    .line 529
    :cond_57
    :goto_57
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v1

    .line 530
    :try_start_5a
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    # setter for: Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 531
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 532
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_91

    .line 533
    return-void

    .line 519
    :cond_67
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_4d

    .line 524
    :cond_71
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_89

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    # getter for: Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_57

    .line 526
    :cond_89
    const-string v0, "MediaSource"

    const-string v1, "Multiple video size change events received!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 532
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method
