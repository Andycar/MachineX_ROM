.class final Ljava/nio/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SelectorImpl$UnaddableSet;
    }
.end annotation


# instance fields
.field final keysLock:Ljava/lang/Object;

.field private final mutableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/SelectionKeyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pollFds:Ljava/util/UnsafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/UnsafeArrayList",
            "<",
            "Landroid/system/StructPollfd;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeupIn:Ljava/io/FileDescriptor;

.field private final wakeupOut:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 8
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    .line 67
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    .line 70
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    .line 76
    new-instance v2, Ljava/nio/SelectorImpl$UnaddableSet;

    iget-object v3, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/nio/SelectorImpl$UnaddableSet;-><init>(Ljava/util/Set;)V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 86
    new-instance v2, Ljava/util/UnsafeArrayList;

    const-class v3, Landroid/system/StructPollfd;

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Ljava/util/UnsafeArrayList;-><init>(Ljava/lang/Class;I)V

    iput-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    .line 97
    :try_start_34
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 98
    .local v1, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    .line 99
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    .line 100
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 101
    iget-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    new-instance v3, Landroid/system/StructPollfd;

    invoke-direct {v3}, Landroid/system/StructPollfd;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->POLLIN:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_5d
    .catch Landroid/system/ErrnoException; {:try_start_34 .. :try_end_5d} :catch_5e

    .line 106
    return-void

    .line 103
    .end local v1    # "pipeFds":[Ljava/io/FileDescriptor;
    :catch_5e
    move-exception v0

    .line 104
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private checkClosed()V
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 149
    :cond_c
    return-void
.end method

.method private doCancel()I
    .registers 7

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 308
    .local v3, "deselected":I
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v1

    .line 309
    .local v1, "cancelledKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v1

    .line 310
    :try_start_6
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_36

    .line 311
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 312
    .local v2, "currentKey":Ljava/nio/channels/SelectionKey;
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    move-object v0, v2

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    move-object v5, v0

    invoke-virtual {p0, v5}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 314
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 318
    .end local v2    # "currentKey":Ljava/nio/channels/SelectionKey;
    :cond_33
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 320
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_36
    monitor-exit v1

    .line 322
    return v3

    .line 320
    :catchall_38
    move-exception v5

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_38

    throw v5
.end method

.method private ensurePollFdsCapacity()V
    .registers 3

    .prologue
    .line 230
    :goto_0
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v0}, Ljava/util/UnsafeArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1b

    .line 231
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    new-instance v1, Landroid/system/StructPollfd;

    invoke-direct {v1}, Landroid/system/StructPollfd;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1b
    return-void
.end method

.method private preparePollFds()V
    .registers 8

    .prologue
    .line 212
    const/4 v1, 0x1

    .line 213
    .local v1, "i":I
    iget-object v6, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/SelectionKeyImpl;

    .line 214
    .local v5, "key":Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v5}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v4

    .line 215
    .local v4, "interestOps":I
    const/4 v0, 0x0

    .line 216
    .local v0, "eventMask":S
    and-int/lit8 v6, v4, 0x11

    if-eqz v6, :cond_20

    .line 217
    sget v6, Landroid/system/OsConstants;->POLLIN:I

    or-int/2addr v6, v0

    int-to-short v0, v6

    .line 219
    :cond_20
    and-int/lit8 v6, v4, 0xc

    if-eqz v6, :cond_28

    .line 220
    sget v6, Landroid/system/OsConstants;->POLLOUT:I

    or-int/2addr v6, v0

    int-to-short v0, v6

    .line 222
    :cond_28
    if-eqz v0, :cond_7

    .line 223
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v5}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/FileDescriptorChannel;

    invoke-interface {v6}, Ljava/nio/FileDescriptorChannel;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {p0, v1, v6, v0, v5}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_7

    .line 226
    .end local v0    # "eventMask":S
    .end local v4    # "interestOps":I
    .end local v5    # "key":Ljava/nio/SelectionKeyImpl;
    :cond_3b
    return-void
.end method

.method private processPollFds()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 239
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8, v10}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/system/StructPollfd;

    iget-short v8, v8, Landroid/system/StructPollfd;->revents:S

    sget v9, Landroid/system/OsConstants;->POLLIN:I

    if-ne v8, v9, :cond_1d

    .line 241
    const/16 v8, 0x8

    new-array v0, v8, [B

    .line 242
    .local v0, "buffer":[B
    :cond_14
    iget-object v8, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    const/4 v9, 0x1

    invoke-static {v8, v0, v10, v9}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v8

    if-gtz v8, :cond_14

    .line 246
    .end local v0    # "buffer":[B
    :cond_1d
    const/4 v5, 0x0

    .line 247
    .local v5, "readyKeyCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1f
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8}, Ljava/util/UnsafeArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3a

    .line 248
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v8, v1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/system/StructPollfd;

    .line 249
    .local v4, "pollFd":Landroid/system/StructPollfd;
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    if-nez v8, :cond_36

    .line 247
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 252
    :cond_36
    iget-object v8, v4, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    if-nez v8, :cond_3b

    .line 292
    .end local v4    # "pollFd":Landroid/system/StructPollfd;
    :cond_3a
    return v5

    .line 256
    .restart local v4    # "pollFd":Landroid/system/StructPollfd;
    :cond_3b
    iget-object v2, v4, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    check-cast v2, Ljava/nio/SelectionKeyImpl;

    .line 258
    .local v2, "key":Ljava/nio/SelectionKeyImpl;
    iput-object v11, v4, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 259
    iput-object v11, v4, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 261
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    move-result v3

    .line 262
    .local v3, "ops":I
    const/4 v6, 0x0

    .line 263
    .local v6, "selectedOps":I
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    sget v9, Landroid/system/OsConstants;->POLLHUP:I

    and-int/2addr v8, v9

    if-nez v8, :cond_56

    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    sget v9, Landroid/system/OsConstants;->POLLERR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_57

    .line 266
    :cond_56
    or-int/2addr v6, v3

    .line 268
    :cond_57
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    sget v9, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_61

    .line 269
    and-int/lit8 v8, v3, 0x11

    or-int/2addr v6, v8

    .line 271
    :cond_61
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    sget v9, Landroid/system/OsConstants;->POLLOUT:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_71

    .line 272
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 273
    and-int/lit8 v8, v3, 0x4

    or-int/2addr v6, v8

    .line 279
    :cond_71
    :goto_71
    if-eqz v6, :cond_33

    .line 280
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 281
    .local v7, "wasSelected":Z
    if-eqz v7, :cond_90

    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v8

    if-eq v8, v6, :cond_90

    .line 282
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    move-result v8

    or-int/2addr v8, v6

    invoke-virtual {v2, v8}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 283
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 275
    .end local v7    # "wasSelected":Z
    :cond_8c
    and-int/lit8 v8, v3, 0x8

    or-int/2addr v6, v8

    goto :goto_71

    .line 284
    .restart local v7    # "wasSelected":Z
    :cond_90
    if-nez v7, :cond_33

    .line 285
    invoke-virtual {v2, v6}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    .line 286
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_33
.end method

.method private selectInternal(J)I
    .registers 14
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 170
    monitor-enter p0

    .line 171
    :try_start_5
    iget-object v5, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v5
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_50

    .line 172
    :try_start_8
    iget-object v6, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v6
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4d

    .line 173
    :try_start_b
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 174
    const-wide/16 v8, 0x0

    cmp-long v4, p1, v8

    if-eqz v4, :cond_45

    const/4 v1, 0x1

    .line 175
    .local v1, "isBlocking":Z
    :goto_15
    iget-object v7, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4a

    .line 176
    :try_start_18
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->preparePollFds()V

    .line 177
    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_47

    .line 178
    const/4 v2, -0x1

    .line 180
    .local v2, "rc":I
    if-eqz v1, :cond_22

    .line 181
    :try_start_1f
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->begin()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5f

    .line 184
    :cond_22
    :try_start_22
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v4}, Ljava/util/UnsafeArrayList;->array()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/system/StructPollfd;

    long-to-int v8, p1

    invoke-interface {v7, v4, v8}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_30} :catch_53
    .catchall {:try_start_22 .. :try_end_30} :catchall_5f

    move-result v2

    .line 191
    :cond_31
    if-eqz v1, :cond_36

    .line 192
    :try_start_33
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    .line 196
    :cond_36
    if-lez v2, :cond_3c

    invoke-direct {p0}, Ljava/nio/SelectorImpl;->processPollFds()I

    move-result v3

    .line 197
    .local v3, "readyCount":I
    :cond_3c
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    move-result v4

    sub-int/2addr v3, v4

    .line 198
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_4a

    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4d

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_50

    return v3

    .end local v1    # "isBlocking":Z
    .end local v2    # "rc":I
    .end local v3    # "readyCount":I
    :cond_45
    move v1, v3

    .line 174
    goto :goto_15

    .line 177
    .restart local v1    # "isBlocking":Z
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v4

    .line 199
    .end local v1    # "isBlocking":Z
    :catchall_4a
    move-exception v4

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v4

    .line 200
    :catchall_4d
    move-exception v4

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v4

    .line 201
    :catchall_50
    move-exception v4

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v4

    .line 185
    .restart local v1    # "isBlocking":Z
    .restart local v2    # "rc":I
    :catch_53
    move-exception v0

    .line 186
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_54
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EINTR:I

    if-eq v4, v7, :cond_31

    .line 187
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5f

    .line 191
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_5f
    move-exception v4

    if-eqz v1, :cond_65

    .line 192
    :try_start_62
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    :cond_65
    throw v4
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_4a
.end method

.method private setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "events"    # I
    .param p4, "object"    # Ljava/lang/Object;

    .prologue
    .line 205
    iget-object v1, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    invoke-virtual {v1, p1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/StructPollfd;

    .line 206
    .local v0, "pollFd":Landroid/system/StructPollfd;
    iput-object p2, v0, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 207
    int-to-short v1, p3

    iput-short v1, v0, Landroid/system/StructPollfd;->events:S

    .line 208
    iput-object p4, v0, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 209
    return-void
.end method


# virtual methods
.method protected implCloseSelector()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_4
    iget-object v3, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_35

    .line 112
    :try_start_7
    iget-object v4, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_32

    .line 113
    :try_start_a
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 114
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    .line 115
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    .line 116
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 117
    .local v1, "sk":Ljava/nio/channels/SelectionKey;
    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    .end local v1    # "sk":Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v1}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    goto :goto_1d

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v2

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2

    .line 120
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 121
    :catchall_35
    move-exception v2

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2

    .line 119
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_2f

    .line 120
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_32

    .line 121
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_35

    .line 122
    return-void
.end method

.method public declared-synchronized keys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 142
    iget-object v0, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .param p1, "channel"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "operations"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 127
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 129
    :cond_14
    monitor-enter p0

    .line 130
    :try_start_15
    iget-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2b

    .line 131
    :try_start_18
    new-instance v0, Ljava/nio/SelectionKeyImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Ljava/nio/SelectionKeyImpl;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V

    .line 133
    .local v0, "selectionKey":Ljava/nio/SelectionKeyImpl;
    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->ensurePollFdsCapacity()V

    .line 135
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_28

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    return-object v0

    .line 136
    .end local v0    # "selectionKey":Ljava/nio/SelectionKeyImpl;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1

    .line 137
    :catchall_2b
    move-exception v1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public select()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .registers 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 157
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1f
    cmp-long v0, p1, v2

    if-nez v0, :cond_25

    const-wide/16 p1, -0x1

    .end local p1    # "timeout":J
    :cond_25
    invoke-direct {p0, p1, p2}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public selectNow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized selectedKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    .line 297
    iget-object v0, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 296
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .registers 6

    .prologue
    .line 327
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 331
    :goto_10
    return-object p0

    .line 329
    :catch_11
    move-exception v0

    goto :goto_10

    .line 328
    :catch_13
    move-exception v0

    goto :goto_10
.end method
