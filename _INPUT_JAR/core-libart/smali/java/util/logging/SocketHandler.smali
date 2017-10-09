.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "java.util.logging.XMLFormatter"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "ALL"


# instance fields
.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    const-string v1, "java.util.logging.SocketHandler.host"

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, "java.util.logging.SocketHandler.port"

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "ALL"

    const-string v1, "java.util.logging.XMLFormatter"

    invoke-direct {p0, v0, v2, v1, v2}, Ljava/util/logging/StreamHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/SocketHandler;->initSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private initSocket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 106
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "host == null || host.isEmpty()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_10
    const/4 v1, 0x0

    .line 111
    .local v1, "p":I
    :try_start_11
    invoke-static {p2}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_2b

    move-result v1

    .line 117
    :try_start_15
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p1, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_45

    .line 123
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-super {p0, v2}, Ljava/util/logging/StreamHandler;->internalSetOutputStream(Ljava/io/OutputStream;)V

    .line 124
    return-void

    .line 112
    :catch_2b
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal port argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_45
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "Failed to establish the network connection"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 121
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 132
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 133
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_f

    .line 134
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/SocketHandler;->socket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 141
    :cond_f
    :goto_f
    return-void

    .line 137
    :catch_10
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v1

    const-string v2, "Exception occurred when closing the socket handler"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 151
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 152
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 153
    return-void
.end method
