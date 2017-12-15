.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "NetworkAgent.java"


# static fields
.field private static final BASE:I = 0x81000

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .registers 17
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I

    .prologue
    .line 130
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .registers 16
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "ni"    # Landroid/net/NetworkInfo;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "lp"    # Landroid/net/LinkProperties;
    .param p7, "score"    # I
    .param p8, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 136
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    .line 138
    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    if-nez p6, :cond_1a

    .line 139
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 143
    :cond_1a
    iget-object v1, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)V

    .line 147
    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v2, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 202
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_e

    .line 203
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 210
    :goto_c
    monitor-exit v2

    .line 211
    return-void

    .line 205
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 207
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 210
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .registers 3
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 250
    const v0, 0x81005

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method public explicitlySelected()V
    .registers 3

    .prologue
    .line 267
    const v0, 0x81008

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 268
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 151
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_82

    .line 198
    :cond_6
    :goto_6
    return-void

    .line 153
    :sswitch_7
    iget-object v3, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_11

    .line 154
    const-string v3, "Received new connection while already connected!"

    invoke-virtual {p0, v3}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 157
    :cond_11
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 158
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v4, p0, v3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 159
    const v3, 0x11002

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 161
    iget-object v4, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 162
    :try_start_25
    iput-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 163
    iget-object v3, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 164
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_2d

    .line 167
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Landroid/os/Message;
    :catchall_3d
    move-exception v3

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw v3

    .line 166
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_40
    :try_start_40
    iget-object v3, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 167
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_3d

    goto :goto_6

    .line 173
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    .end local v1    # "i$":Ljava/util/Iterator;
    :sswitch_47
    iget-object v3, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_6

    .line 177
    :sswitch_51
    const-string v3, "NetworkAgent channel lost"

    invoke-virtual {p0, v3}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    .line 180
    iget-object v4, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 181
    const/4 v3, 0x0

    :try_start_5d
    iput-object v3, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 182
    monitor-exit v4

    goto :goto_6

    :catchall_61
    move-exception v3

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v3

    .line 186
    :sswitch_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 194
    :sswitch_7b
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Landroid/net/NetworkAgent;->networkStatus(I)V

    goto :goto_6

    .line 151
    nop

    :sswitch_data_82
    .sparse-switch
        0x11001 -> :sswitch_7
        0x11003 -> :sswitch_47
        0x11004 -> :sswitch_51
        0x81000 -> :sswitch_64
        0x81007 -> :sswitch_7b
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method protected networkStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 294
    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .registers 3
    .param p1, "ranges"    # [Landroid/net/UidRange;

    .prologue
    .line 258
    const v0, 0x81006

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 217
    const v0, 0x81003

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 231
    const v0, 0x81002

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 233
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 224
    const v0, 0x81001

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 225
    return-void
.end method

.method public sendNetworkScore(I)V
    .registers 4
    .param p1, "score"    # I

    .prologue
    .line 239
    if-gez p1, :cond_a

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Score must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_a
    const v0, 0x81004

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method protected abstract unwanted()V
.end method
