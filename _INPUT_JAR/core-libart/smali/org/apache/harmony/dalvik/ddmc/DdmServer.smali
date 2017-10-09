.class public Lorg/apache/harmony/dalvik/ddmc/DdmServer;
.super Ljava/lang/Object;
.source "DdmServer.java"


# static fields
.field public static final CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mRegistrationComplete:Z

.field private static mRegistrationTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    .line 37
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 38
    sput-boolean v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcast(I)V
    .registers 6
    .param p0, "event"    # I

    .prologue
    .line 108
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 109
    :try_start_3
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 110
    .local v2, "values":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, "iter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 114
    .local v0, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    packed-switch p0, :pswitch_data_30

    .line 122
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 125
    .end local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "values":Ljava/util/Collection;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v3

    .line 116
    .restart local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v2    # "values":Ljava/util/Collection;
    :pswitch_25
    :try_start_25
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->connected()V

    goto :goto_d

    .line 119
    :pswitch_29
    invoke-virtual {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->disconnected()V

    goto :goto_d

    .line 125
    .end local v0    # "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    :cond_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    .line 126
    return-void

    .line 114
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method private static dispatch(I[BII)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 12
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 143
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 148
    :cond_3
    :goto_3
    :try_start_3
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v3, :cond_1f

    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    if-nez v3, :cond_1f

    .line 151
    :try_start_b
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_1d
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 156
    :try_start_12
    sget-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    if-nez v3, :cond_3

    .line 158
    const/4 v3, 0x1

    sput-boolean v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationTimedOut:Z

    goto :goto_3

    .line 163
    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v3

    .line 152
    :catch_1d
    move-exception v2

    .line 153
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 162
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_1f
    :try_start_1f
    sget-object v3, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .line 163
    .local v1, "handler":Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_1a

    .line 166
    if-nez v1, :cond_30

    .line 167
    const/4 v3, 0x0

    .line 171
    :goto_2f
    return-object v3

    .line 170
    :cond_30
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 171
    .local v0, "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_2f
.end method

.method private static native nativeSendChunk(I[BII)V
.end method

.method public static registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "handler"    # Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    .prologue
    .line 53
    if-nez p1, :cond_a

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 57
    :try_start_d
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    throw v0

    .line 61
    :cond_3f
    :try_start_3f
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    .line 63
    return-void
.end method

.method public static registrationComplete()V
    .registers 2

    .prologue
    .line 83
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 84
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mRegistrationComplete:Z

    .line 85
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V
    .registers 5
    .param p0, "chunk"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->nativeSendChunk(I[BII)V

    .line 97
    return-void
.end method

.method public static unregisterHandler(I)Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 71
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 72
    :try_start_3
    sget-object v0, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->mHandlerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
