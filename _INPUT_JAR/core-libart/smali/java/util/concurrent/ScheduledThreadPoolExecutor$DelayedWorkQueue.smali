.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.super Ljava/util/AbstractQueue;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedWorkQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/BlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private queue:[Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 803
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    .line 805
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 830
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 1222
    return-void
.end method

.method private finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1018
    .local p1, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 1019
    .local v0, "s":I
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v2, v0

    .line 1020
    .local v1, "x":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1021
    if-eqz v0, :cond_15

    .line 1022
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    .line 1023
    :cond_15
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1024
    return-object p1
.end method

.method private grow()V
    .registers 4

    .prologue
    .line 884
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v2

    .line 885
    .local v1, "oldCapacity":I
    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    .line 886
    .local v0, "newCapacity":I
    if-gez v0, :cond_c

    .line 887
    const v0, 0x7fffffff

    .line 888
    :cond_c
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/concurrent/RunnableScheduledFuture;

    iput-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    .line 889
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 895
    if-eqz p1, :cond_2a

    .line 896
    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v1, :cond_18

    move-object v1, p1

    .line 897
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    iget v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 900
    .local v0, "i":I
    if-ltz v0, :cond_2a

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2a

    .line 908
    .end local v0    # "i":I
    :cond_17
    :goto_17
    return v0

    .line 903
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_19
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v1, :cond_2a

    .line 904
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 908
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1141
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_13

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_14

    :cond_13
    const/4 v0, 0x0

    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_14
    return-object v0
.end method

.method private setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V
    .registers 4
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p1, "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    if-eqz v0, :cond_8

    .line 837
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1    # "f":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iput p2, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;->heapIndex:I

    .line 838
    :cond_8
    return-void
.end method

.method private siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .registers 8
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    ushr-int/lit8 v2, v4, 0x1

    .line 864
    .local v2, "half":I
    :goto_4
    if-ge p1, v2, :cond_29

    .line 865
    shl-int/lit8 v4, p1, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 866
    .local v1, "child":I
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v4, v1

    .line 867
    .local v0, "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    add-int/lit8 v3, v1, 0x1

    .line 868
    .local v3, "right":I
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v3, v4, :cond_23

    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_23

    .line 869
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    move v1, v3

    aget-object v0, v4, v3

    .line 870
    :cond_23
    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_31

    .line 876
    .end local v0    # "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_29
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v4, p1

    .line 877
    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 878
    return-void

    .line 872
    .restart local v0    # "c":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v1    # "child":I
    .restart local v3    # "right":I
    :cond_31
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v4, p1

    .line 873
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 874
    move p1, v1

    .line 875
    goto :goto_4
.end method

.method private siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    .registers 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p2, "key":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :goto_0
    if-lez p1, :cond_10

    .line 846
    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v1, v2, 0x1

    .line 847
    .local v1, "parent":I
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v0, v2, v1

    .line 848
    .local v0, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    invoke-interface {p2, v0}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_18

    .line 854
    .end local v0    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v1    # "parent":I
    :cond_10
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object p2, v2, p1

    .line 855
    invoke-direct {p0, p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 856
    return-void

    .line 850
    .restart local v0    # "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v1    # "parent":I
    :cond_18
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aput-object v0, v2, p1

    .line 851
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 852
    move p1, v1

    .line 853
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->add(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "e"    # Ljava/lang/Runnable;

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 6

    .prologue
    .line 1118
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1119
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    :try_start_6
    iget v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v0, v3, :cond_1c

    .line 1122
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v3, v0

    .line 1123
    .local v2, "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v2, :cond_19

    .line 1124
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 1125
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 1121
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1128
    .end local v2    # "t":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_1c
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    .line 1130
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1132
    return-void

    .line 1130
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 912
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 913
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 915
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    .line 917
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 915
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 917
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    if-nez p1, :cond_8

    .line 1147
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1148
    :cond_8
    if-ne p1, p0, :cond_10

    .line 1149
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1150
    :cond_10
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1151
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1154
    const/4 v2, 0x0

    .line 1155
    .local v2, "n":I
    :goto_16
    :try_start_16
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_25

    .line 1156
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1157
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_29

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1162
    :cond_25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    if-nez p1, :cond_8

    .line 1168
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1169
    :cond_8
    if-ne p1, p0, :cond_10

    .line 1170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1171
    :cond_10
    if-gtz p2, :cond_14

    .line 1172
    const/4 v2, 0x0

    .line 1185
    :goto_13
    return v2

    .line 1173
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1174
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1177
    const/4 v2, 0x0

    .line 1178
    .local v2, "n":I
    :goto_1a
    if-ge v2, p2, :cond_2b

    :try_start_1c
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peekExpired()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_2b

    .line 1179
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2f

    .line 1181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1185
    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_13

    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 955
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;

    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-direct {v1, p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .registers 7
    .param p1, "x"    # Ljava/lang/Runnable;

    .prologue
    .line 973
    if-nez p1, :cond_8

    .line 974
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_8
    move-object v0, p1

    .line 975
    check-cast v0, Ljava/util/concurrent/RunnableScheduledFuture;

    .line 976
    .local v0, "e":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 977
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 979
    :try_start_10
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 980
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v3, v3

    if-lt v1, v3, :cond_1a

    .line 981
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->grow()V

    .line 982
    :cond_1a
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 983
    if-nez v1, :cond_3d

    .line 984
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 985
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 989
    :goto_29
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-ne v3, v0, :cond_38

    .line 990
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    .line 991
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_41

    .line 994
    :cond_38
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 996
    const/4 v3, 0x1

    return v3

    .line 987
    :cond_3d
    :try_start_3d
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_29

    .line 994
    .end local v1    # "i":I
    :catchall_41
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 776
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peek()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 964
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 966
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    .line 968
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 776
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1029
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1031
    :try_start_5
    iget-object v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1032
    .local v0, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-eqz v0, :cond_18

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_25

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    .line 1033
    :cond_18
    const/4 v2, 0x0

    .line 1037
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1c
    return-object v2

    .line 1035
    :cond_1d
    :try_start_1d
    invoke-direct {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25

    move-result-object v2

    .line 1037
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1c

    .end local v0    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1077
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 1078
    .local v8, "nanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1079
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1082
    :cond_f
    :goto_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v14, 0x0

    aget-object v6, v11, v14
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c4

    .line 1083
    .local v6, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-nez v6, :cond_42

    .line 1084
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_39

    .line 1085
    const/4 v11, 0x0

    .line 1111
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_35

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_35

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1113
    :cond_35
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_38
    return-object v11

    .line 1087
    :cond_39
    :try_start_39
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    goto :goto_f

    .line 1089
    :cond_42
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v11}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 1090
    .local v4, "delay":J
    const-wide/16 v14, 0x0

    cmp-long v11, v4, v14

    if-gtz v11, :cond_6e

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_c4

    move-result-object v11

    .line 1111
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_6a

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_6a

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1113
    :cond_6a
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_38

    .line 1092
    :cond_6e
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_8f

    .line 1093
    const/4 v11, 0x0

    .line 1111
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_8b

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_8b

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1113
    :cond_8b
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_38

    .line 1094
    :cond_8f
    const/4 v6, 0x0

    .line 1095
    cmp-long v11, v8, v4

    if-ltz v11, :cond_9a

    :try_start_94
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v11, :cond_a4

    .line 1096
    :cond_9a
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    goto/16 :goto_f

    .line 1098
    :cond_a4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    .line 1099
    .local v10, "thisThread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_ac
    .catchall {:try_start_94 .. :try_end_ac} :catchall_c4

    .line 1101
    :try_start_ac
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_df

    move-result-wide v12

    .line 1102
    .local v12, "timeLeft":J
    sub-long v14, v4, v12

    sub-long/2addr v8, v14

    .line 1104
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v11, v10, :cond_f

    .line 1105
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c4

    goto/16 :goto_f

    .line 1111
    .end local v4    # "delay":J
    .end local v6    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v10    # "thisThread":Ljava/lang/Thread;
    .end local v12    # "timeLeft":J
    :catchall_c4
    move-exception v11

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_db

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_db

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1113
    :cond_db
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v11

    .line 1104
    .restart local v4    # "delay":J
    .restart local v6    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .restart local v10    # "thisThread":Ljava/lang/Thread;
    :catchall_df
    move-exception v11

    :try_start_e0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v14, v10, :cond_eb

    .line 1105
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    :cond_eb
    throw v11
    :try_end_ec
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_c4
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 776
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->put(Ljava/lang/Runnable;)V

    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Runnable;

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 959
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 922
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 923
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 925
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3a

    move-result v0

    .line 926
    .local v0, "i":I
    if-gez v0, :cond_10

    .line 927
    const/4 v4, 0x0

    .line 940
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_f
    return v4

    .line 929
    :cond_10
    :try_start_10
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->setIndex(Ljava/util/concurrent/RunnableScheduledFuture;I)V

    .line 930
    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    add-int/lit8 v3, v4, -0x1

    iput v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    .line 931
    .local v3, "s":I
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v2, v4, v3

    .line 932
    .local v2, "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 933
    if-eq v3, v0, :cond_35

    .line 934
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftDown(ILjava/util/concurrent/RunnableScheduledFuture;)V

    .line 935
    iget-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v4, v4, v0

    if-ne v4, v2, :cond_35

    .line 936
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->siftUp(ILjava/util/concurrent/RunnableScheduledFuture;)V
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_3a

    .line 938
    :cond_35
    const/4 v4, 0x1

    .line 940
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .end local v0    # "i":I
    .end local v2    # "replacement":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    .end local v3    # "s":I
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public size()I
    .registers 3

    .prologue
    .line 945
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 946
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 948
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 950
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->take()Ljava/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/util/concurrent/RunnableScheduledFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1042
    iget-object v3, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1043
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1046
    :cond_6
    :goto_6
    :try_start_6
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 1047
    .local v2, "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    if-nez v2, :cond_27

    .line 1048
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_6

    .line 1069
    .end local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :catchall_13
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_23

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v8

    if-eqz v6, :cond_23

    .line 1070
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1071
    :cond_23
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 1050
    .restart local v2    # "first":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    :cond_27
    :try_start_27
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 1051
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_4a

    .line 1052
    invoke-direct {p0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->finishPoll(Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_13

    move-result-object v5

    .line 1069
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_46

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    aget-object v6, v6, v8

    if-eqz v6, :cond_46

    .line 1070
    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1071
    :cond_46
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    .line 1053
    :cond_4a
    const/4 v2, 0x0

    .line 1054
    :try_start_4b
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-eqz v5, :cond_55

    .line 1055
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_6

    .line 1057
    :cond_55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 1058
    .local v4, "thisThread":Ljava/lang/Thread;
    iput-object v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_13

    .line 1060
    :try_start_5b
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_68

    .line 1062
    :try_start_60
    iget-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v5, v4, :cond_6

    .line 1063
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    goto :goto_6

    .line 1062
    :catchall_68
    move-exception v5

    iget-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    if-ne v6, v4, :cond_70

    .line 1063
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->leader:Ljava/lang/Thread;

    :cond_70
    throw v5
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_13
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1190
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1191
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1193
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    move-result-object v1

    .line 1195
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1202
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1204
    :try_start_5
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-ge v1, v2, :cond_1c

    .line 1205
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_34

    .line 1211
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1b
    return-object v1

    .line 1206
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->queue:[Ljava/util/concurrent/RunnableScheduledFuture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    array-length v1, p1

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    if-le v1, v2, :cond_2f

    .line 1208
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_34

    .line 1211
    :cond_2f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, p1

    goto :goto_1b

    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
