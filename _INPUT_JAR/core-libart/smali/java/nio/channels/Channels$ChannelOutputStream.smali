.class Ljava/nio/channels/Channels$ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 249
    if-nez p1, :cond_d

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_d
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 253
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    new-array v0, v1, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 258
    .local v0, "wrappedByte":[B
    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$ChannelOutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 259
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "wrappedByte":[B
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write([BII)V
    .registers 7
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 264
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v2}, Ljava/nio/channels/Channels;->checkBlocking(Ljava/nio/channels/Channel;)V

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "total":I
    :goto_b
    if-ge v1, p3, :cond_15

    .line 267
    iget-object v2, p0, Ljava/nio/channels/Channels$ChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b

    .line 269
    :cond_15
    monitor-exit p0

    return-void

    .line 263
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "total":I
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method
