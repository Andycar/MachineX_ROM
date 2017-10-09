.class Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockingCheckOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/channels/SocketChannel;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 595
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    .line 596
    return-void
.end method

.method private checkBlocking()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 626
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 628
    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 621
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 622
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    .line 607
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 608
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    .line 613
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 614
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    .line 601
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 602
    return-void
.end method
