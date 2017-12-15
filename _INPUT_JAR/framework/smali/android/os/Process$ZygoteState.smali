.class public Landroid/os/Process$ZygoteState;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZygoteState"
.end annotation


# instance fields
.field final abiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/DataInputStream;

.field mClosed:Z

.field final socket:Landroid/net/LocalSocket;

.field final writer:Ljava/io/BufferedWriter;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .registers 5
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "inputStream"    # Ljava/io/DataInputStream;
    .param p3, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p4, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    .line 395
    iput-object p2, p0, Landroid/os/Process$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 396
    iput-object p3, p0, Landroid/os/Process$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 397
    iput-object p4, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    .line 398
    return-void
.end method

.method public static connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;
    .registers 10
    .param p0, "socketAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, "zygoteInputStream":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 403
    .local v5, "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 406
    .local v4, "zygoteSocket":Landroid/net/LocalSocket;
    :try_start_7
    new-instance v6, Landroid/net/LocalSocketAddress;

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v6, p0, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 409
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_56

    .line 411
    .end local v2    # "zygoteInputStream":Ljava/io/DataInputStream;
    .local v3, "zygoteInputStream":Ljava/io/DataInputStream;
    :try_start_1a
    new-instance v5, Ljava/io/BufferedWriter;

    .end local v5    # "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2a} :catch_5d

    .line 422
    .restart local v5    # "zygoteWriter":Ljava/io/BufferedWriter;
    # invokes: Landroid/os/Process;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;
    invoke-static {v5, v3}, Landroid/os/Process;->access$000(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "abiListString":Ljava/lang/String;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process: zygote socket opened, supported ABIS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v6, Landroid/os/Process$ZygoteState;

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v4, v3, v5, v7}, Landroid/os/Process$ZygoteState;-><init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    return-object v6

    .line 413
    .end local v0    # "abiListString":Ljava/lang/String;
    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .restart local v2    # "zygoteInputStream":Ljava/io/DataInputStream;
    :catch_56
    move-exception v1

    .line 415
    .end local v5    # "zygoteWriter":Ljava/io/BufferedWriter;
    .local v1, "ex":Ljava/io/IOException;
    :goto_57
    :try_start_57
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 419
    :goto_5a
    throw v1

    .line 416
    :catch_5b
    move-exception v6

    goto :goto_5a

    .line 413
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "zygoteInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    :catch_5d
    move-exception v1

    move-object v2, v3

    .end local v3    # "zygoteInputStream":Ljava/io/DataInputStream;
    .restart local v2    # "zygoteInputStream":Ljava/io/DataInputStream;
    goto :goto_57
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/os/Process$ZygoteState;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 440
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    .line 441
    return-void

    .line 436
    :catch_9
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Process"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method isClosed()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Landroid/os/Process$ZygoteState;->mClosed:Z

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Landroid/os/Process$ZygoteState;->abiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
