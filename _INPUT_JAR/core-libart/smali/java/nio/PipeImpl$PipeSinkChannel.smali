.class Ljava/nio/PipeImpl$PipeSinkChannel;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "PipeImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeSinkChannel"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Ljava/nio/PipeImpl;


# direct methods
.method private constructor <init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->this$0:Ljava/nio/PipeImpl;

    .line 100
    invoke-direct {p0, p2}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 101
    iput-object p3, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->fd:Ljava/io/FileDescriptor;

    .line 102
    new-instance v0, Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, p2, p3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/SocketChannel;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/nio/PipeImpl;
    .param p2, "x1"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p3, "x2"    # Ljava/io/FileDescriptor;
    .param p4, "x3"    # Ljava/nio/PipeImpl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 107
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/nio/PipeImpl$PipeSinkChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 111
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .registers 4
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSinkChannel;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
