.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field final parent:Ljava/lang/ThreadGroup;

.field private final threadRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    .line 69
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 112
    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 6
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-static {v0, v2}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    .line 93
    if-nez p1, :cond_2a

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2a
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 98
    if-eqz p1, :cond_43

    .line 99
    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    .line 105
    :cond_43
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .registers 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v1

    .line 164
    :try_start_3
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_10

    .line 165
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 168
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 167
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    .line 169
    return-void
.end method

.method private destroyIfEmptyDaemon()V
    .registers 4

    .prologue
    .line 244
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 246
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2b

    .line 247
    :try_start_1a
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 248
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 250
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_28

    .line 252
    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2b

    .line 253
    return-void

    .line 250
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0

    .line 252
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .registers 12
    .param p1, "enumeration"    # [Ljava/lang/Object;
    .param p2, "recurse"    # Z
    .param p3, "enumerationIndex"    # I
    .param p4, "enumeratingThreads"    # Z

    .prologue
    .line 338
    if-eqz p4, :cond_56

    .line 339
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 341
    :try_start_5
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_53

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    move v0, p3

    .end local p3    # "enumerationIndex":I
    .local v0, "enumerationIndex":I
    :goto_e
    if-ltz v2, :cond_34

    .line 342
    :try_start_10
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 343
    .local v4, "thread":Ljava/lang/Thread;
    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 344
    array-length v5, p1

    if-lt v0, v5, :cond_2c

    .line 345
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_8c

    move p3, v0

    .line 373
    .end local v0    # "enumerationIndex":I
    .end local v4    # "thread":Ljava/lang/Thread;
    :goto_2b
    return v0

    .line 347
    .restart local v0    # "enumerationIndex":I
    .restart local v4    # "thread":Ljava/lang/Thread;
    :cond_2c
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_2e
    aput-object v4, p1, v0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_53

    .line 341
    :goto_30
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_e

    .line 350
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_34
    :try_start_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_8c

    move p3, v0

    .line 362
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :goto_36
    if-eqz p2, :cond_84

    .line 363
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 364
    :try_start_3b
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 365
    .local v1, "group":Ljava/lang/ThreadGroup;
    array-length v5, p1

    if-lt p3, v5, :cond_7e

    .line 366
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_86

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_2b

    .line 350
    .end local v0    # "enumerationIndex":I
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local p3    # "enumerationIndex":I
    :catchall_53
    move-exception v5

    :goto_54
    :try_start_54
    monitor-exit v6
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v5

    .line 352
    :cond_56
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 353
    :try_start_59
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_7b

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :goto_62
    if-ltz v2, :cond_78

    .line 354
    :try_start_64
    array-length v5, p1

    if-lt v0, v5, :cond_6a

    .line 355
    monitor-exit v6
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_89

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_2b

    .line 357
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :cond_6a
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_6c
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_7b

    .line 353
    add-int/lit8 v2, v2, -0x1

    move v0, p3

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_62

    .line 359
    :cond_78
    :try_start_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_89

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_36

    .end local v2    # "i":I
    :catchall_7b
    move-exception v5

    :goto_7c
    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v5

    .line 368
    .restart local v1    # "group":Ljava/lang/ThreadGroup;
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7e
    :try_start_7e
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result p3

    .line 370
    goto :goto_41

    .line 371
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_83
    monitor-exit v6

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_84
    move v0, p3

    .line 373
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_2b

    .line 371
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :catchall_86
    move-exception v5

    monitor-exit v6
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_86

    throw v5

    .line 359
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_89
    move-exception v5

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_7c

    .line 350
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_8c
    move-exception v5

    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_54

    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    .restart local v4    # "thread":Ljava/lang/Thread;
    :cond_8f
    move p3, v0

    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_30
.end method

.method private indent(I)V
    .registers 5
    .param p1, "levels"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_d

    .line 487
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_d
    return-void
.end method

.method private list(I)V
    .registers 7
    .param p1, "levels"    # I

    .prologue
    .line 468
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 469
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    add-int/lit8 p1, p1, 0x1

    .line 472
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 473
    :try_start_11
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 474
    .local v2, "thread":Ljava/lang/Thread;
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    .line 475
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_17

    .line 477
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2c

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 478
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 479
    :try_start_33
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 480
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v0, p1}, Ljava/lang/ThreadGroup;->list(I)V

    goto :goto_39

    .line 482
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_49

    throw v3

    :cond_4c
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 483
    return-void
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .registers 6
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 517
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v3

    .line 518
    :try_start_3
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 520
    .local v1, "threadGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 525
    .end local v1    # "threadGroup":Ljava/lang/ThreadGroup;
    :cond_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 526
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 527
    return-void

    .line 525
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private stopHelper()Z
    .registers 8

    .prologue
    .line 615
    const/4 v3, 0x0

    .line 616
    .local v3, "stopCurrent":Z
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 617
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 618
    .local v0, "current":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 619
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_1e

    .line 620
    const/4 v3, 0x1

    goto :goto_e

    .line 622
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    goto :goto_e

    .line 625
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_22
    move-exception v5

    monitor-exit v6
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v5

    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 626
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 627
    :try_start_29
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 628
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v5

    or-int/2addr v3, v5

    .line 629
    goto :goto_2f

    .line 630
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_41
    monitor-exit v6

    .line 631
    return v3

    .line 630
    :catchall_43
    move-exception v5

    monitor-exit v6
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw v5
.end method

.method private suspendHelper()Z
    .registers 8

    .prologue
    .line 653
    const/4 v3, 0x0

    .line 654
    .local v3, "suspendCurrent":Z
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v6

    .line 655
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 656
    .local v0, "current":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 657
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_1e

    .line 658
    const/4 v3, 0x1

    goto :goto_e

    .line 660
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_e

    .line 663
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_22
    move-exception v5

    monitor-exit v6
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v5

    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_25
    :try_start_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 664
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v6

    .line 665
    :try_start_29
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 666
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v5

    or-int/2addr v3, v5

    .line 667
    goto :goto_2f

    .line 668
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_41
    monitor-exit v6

    .line 669
    return v3

    .line 668
    :catchall_43
    move-exception v5

    monitor-exit v6
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw v5
.end method


# virtual methods
.method public activeCount()I
    .registers 7

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "count":I
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v5

    .line 125
    :try_start_4
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 126
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 130
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_3b

    .line 131
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v5

    .line 132
    :try_start_23
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 133
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_40

    move-result v4

    add-int/2addr v0, v4

    .line 134
    goto :goto_29

    .line 130
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_3b
    move-exception v4

    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v4

    .line 135
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    monitor-exit v5

    .line 136
    return v0

    .line 135
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v4
.end method

.method public activeGroupCount()I
    .registers 6

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "count":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 148
    :try_start_4
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 150
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 151
    goto :goto_a

    .line 152
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_1e
    monitor-exit v4

    .line 153
    return v0

    .line 152
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_20
    move-exception v3

    monitor-exit v4
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v3
.end method

.method final addThread(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 705
    :try_start_3
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_10

    .line 706
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 709
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    .line 708
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_d

    .line 710
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .registers 3
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

.method public final destroy()V
    .registers 6

    .prologue
    .line 204
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v1

    .line 205
    :try_start_3
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    .line 206
    :try_start_6
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v0, :cond_32

    .line 207
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group was already destroyed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0

    .line 231
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v0

    .line 207
    :cond_2f
    :try_start_2f
    const-string v0, "n/a"

    goto :goto_1d

    .line 211
    :cond_32
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 212
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread group still contains threads: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    const-string v0, "n/a"

    goto :goto_51

    .line 217
    :cond_60
    :goto_60
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 221
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V

    goto :goto_60

    .line 224
    :cond_75
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_7e

    .line 225
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 229
    :cond_7e
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    .line 230
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_2f .. :try_end_82} :catchall_29

    .line 231
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_2c

    .line 232
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .registers 3
    .param p1, "threads"    # [Ljava/lang/Thread;

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .registers 5
    .param p1, "threads"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .registers 3
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .registers 6

    .prologue
    .line 413
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 414
    :try_start_3
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 415
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9

    .line 417
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_19
    move-exception v3

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 418
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 419
    :try_start_20
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 420
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    goto :goto_26

    .line 422
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw v3

    :cond_39
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 423
    return-void
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 434
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .registers 2

    .prologue
    .line 455
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    .line 457
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 499
    :goto_0
    if-eqz p1, :cond_9

    .line 500
    if-ne p0, p1, :cond_6

    .line 501
    const/4 v0, 0x1

    .line 505
    :goto_5
    return v0

    .line 503
    :cond_6
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    .line 505
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final removeThread(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 716
    iget-object v2, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v2

    .line 717
    :try_start_3
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 723
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 724
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 725
    return-void

    .line 723
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final resume()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    monitor-enter v4

    .line 542
    :try_start_3
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 543
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V

    goto :goto_9

    .line 545
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_19
    move-exception v3

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 546
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 547
    :try_start_20
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 548
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->resume()V

    goto :goto_26

    .line 550
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw v3

    :cond_39
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 551
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 2
    .param p1, "isDaemon"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    .line 563
    return-void
.end method

.method public final setMaxPriority(I)V
    .registers 7
    .param p1, "newMax"    # I

    .prologue
    .line 581
    iget v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    if-gt p1, v3, :cond_37

    .line 582
    const/4 v3, 0x1

    if-ge p1, v3, :cond_8

    .line 583
    const/4 p1, 0x1

    .line 586
    :cond_8
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v3, :cond_2d

    move v2, p1

    .line 587
    .local v2, "parentPriority":I
    :goto_d
    if-gt v2, p1, :cond_34

    .end local v2    # "parentPriority":I
    :goto_f
    iput v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 588
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    monitor-enter v4

    .line 589
    :try_start_14
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    .line 590
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    goto :goto_1a

    .line 592
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw v3

    .line 586
    :cond_2d
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    goto :goto_d

    .restart local v2    # "parentPriority":I
    :cond_34
    move v2, p1

    .line 587
    goto :goto_f

    .line 592
    .end local v2    # "parentPriority":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2a

    .line 594
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_37
    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 611
    :cond_d
    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 649
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 689
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_a

    .line 690
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 698
    :cond_9
    :goto_9
    return-void

    .line 691
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 693
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 694
    :cond_18
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_9

    .line 696
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_9
.end method
