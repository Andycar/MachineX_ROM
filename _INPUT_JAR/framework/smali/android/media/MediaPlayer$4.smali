.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fd3:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .registers 10

    .prologue
    .line 2799
    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .registers 13

    .prologue
    .line 2801
    const/4 v4, 0x0

    .line 2802
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2804
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v8, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$offset2:J

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v7, v8, v10, v11, v9}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 2805
    const/16 v7, 0x1000

    new-array v1, v7, [B

    .line 2806
    .local v1, "buffer":[B
    const/4 v6, 0x0

    .local v6, "total":I
    :goto_16
    int-to-long v8, v6

    iget-wide v10, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_30

    .line 2807
    iget-wide v8, p0, Landroid/media/MediaPlayer$4;->val$length2:J

    long-to-int v7, v8

    sub-int v5, v7, v6

    .line 2808
    .local v5, "remain":I
    iget-object v7, p0, Landroid/media/MediaPlayer$4;->val$fd3:Ljava/io/FileDescriptor;

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v1, v8, v9}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 2809
    .local v2, "bytes":I
    if-gez v2, :cond_44

    .line 2816
    .end local v2    # "bytes":I
    .end local v5    # "remain":I
    :cond_30
    iget-object v7, p0, Landroid/media/MediaPlayer$4;->val$track:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_55
    .catchall {:try_start_6 .. :try_end_3c} :catchall_72

    .line 2817
    const/16 v7, 0x323

    .line 2822
    if-eqz v4, :cond_43

    .line 2824
    :try_start_40
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4a

    .line 2827
    .end local v1    # "buffer":[B
    .end local v6    # "total":I
    :cond_43
    :goto_43
    return v7

    .line 2812
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytes":I
    .restart local v5    # "remain":I
    .restart local v6    # "total":I
    :cond_44
    const/4 v7, 0x0

    :try_start_45
    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_55
    .catchall {:try_start_45 .. :try_end_48} :catchall_72

    .line 2813
    add-int/2addr v6, v2

    .line 2815
    goto :goto_16

    .line 2825
    .end local v2    # "bytes":I
    .end local v5    # "remain":I
    :catch_4a
    move-exception v3

    .line 2826
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "MediaPlayer"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 2818
    .end local v1    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "total":I
    :catch_55
    move-exception v3

    .line 2819
    .local v3, "e":Ljava/lang/Exception;
    :try_start_56
    const-string v7, "MediaPlayer"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_72

    .line 2820
    const/16 v7, 0x384

    .line 2822
    if-eqz v4, :cond_43

    .line 2824
    :try_start_63
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_43

    .line 2825
    :catch_67
    move-exception v3

    .line 2826
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "MediaPlayer"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 2822
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_72
    move-exception v7

    if-eqz v4, :cond_78

    .line 2824
    :try_start_75
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 2827
    :cond_78
    :goto_78
    throw v7

    .line 2825
    :catch_79
    move-exception v3

    .line 2826
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "MediaPlayer"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2833
    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v1

    .line 2834
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 2835
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2836
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2838
    .end local v0    # "m":Landroid/os/Message;
    :cond_23
    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2839
    return-void
.end method
