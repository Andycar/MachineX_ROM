.class final Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UEventThread"
.end annotation


# instance fields
.field private final mKeysAndObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempObserversToSignal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 174
    const-string v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .registers 10
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v6, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v6

    .line 194
    :try_start_3
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 195
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_2c

    .line 196
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 198
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    .line 200
    .local v4, "observer":Landroid/os/UEventObserver;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v4    # "observer":Landroid/os/UEventObserver;
    :cond_29
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 203
    .end local v3    # "key":Ljava/lang/String;
    :cond_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_51

    .line 205
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    .line 206
    new-instance v1, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v1, p1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "event":Landroid/os/UEventObserver$UEvent;
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    const/4 v2, 0x0

    :goto_41
    if-ge v2, v0, :cond_54

    .line 209
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UEventObserver;

    .line 210
    .restart local v4    # "observer":Landroid/os/UEventObserver;
    invoke-virtual {v4, v1}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 203
    .end local v0    # "N":I
    .end local v1    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v2    # "i":I
    .end local v4    # "observer":Landroid/os/UEventObserver;
    :catchall_51
    move-exception v5

    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v5

    .line 212
    .restart local v0    # "N":I
    .restart local v1    # "event":Landroid/os/UEventObserver$UEvent;
    .restart local v2    # "i":I
    :cond_54
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mTempObserversToSignal:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 214
    .end local v1    # "event":Landroid/os/UEventObserver$UEvent;
    :cond_59
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .registers 5
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/UEventObserver;

    .prologue
    .line 217
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 218
    :try_start_3
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    # invokes: Landroid/os/UEventObserver;->nativeAddMatch(Ljava/lang/String;)V
    invoke-static {p1}, Landroid/os/UEventObserver;->access$200(Ljava/lang/String;)V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .registers 7
    .param p1, "observer"    # Landroid/os/UEventObserver;

    .prologue
    .line 226
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 228
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2c

    .line 229
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mKeysAndObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, "match":Ljava/lang/String;
    # invokes: Landroid/os/UEventObserver;->nativeRemoveMatch(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/os/UEventObserver;->access$300(Ljava/lang/String;)V

    goto :goto_4

    .line 236
    .end local v1    # "match":Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v2

    .line 233
    :cond_2c
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 236
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_29

    .line 237
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 179
    # invokes: Landroid/os/UEventObserver;->nativeSetup()V
    invoke-static {}, Landroid/os/UEventObserver;->access$000()V

    .line 182
    :cond_3
    :goto_3
    # invokes: Landroid/os/UEventObserver;->nativeWaitForNextEvent()Ljava/lang/String;
    invoke-static {}, Landroid/os/UEventObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 187
    invoke-direct {p0, v0}, Landroid/os/UEventObserver$UEventThread;->sendEvent(Ljava/lang/String;)V

    goto :goto_3
.end method
