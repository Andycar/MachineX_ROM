.class Landroid/net/LocalSocketImpl$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 60
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_11

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_11
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->available_native(Ljava/io/FileDescriptor;)I
    invoke-static {v1, v0}, Landroid/net/LocalSocketImpl;->access$100(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    return v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 69
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 76
    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 77
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_1b

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v2

    .line 79
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I
    invoke-static {v2, v0}, Landroid/net/LocalSocketImpl;->access$300(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    .line 80
    .local v1, "ret":I
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    return v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 94
    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 95
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_1b

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v2

    .line 97
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_1b
    if-ltz p2, :cond_24

    if-ltz p3, :cond_24

    add-int v2, p2, p3

    :try_start_21
    array-length v4, p1

    if-le v2, v4, :cond_2a

    .line 98
    :cond_24
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 101
    :cond_2a
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I
    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$400(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I

    move-result v1

    .line 103
    .local v1, "ret":I
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_18

    return v1
.end method
