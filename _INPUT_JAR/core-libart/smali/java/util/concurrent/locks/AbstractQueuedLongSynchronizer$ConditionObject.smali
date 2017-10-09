.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .registers 2

    .prologue
    .line 1589
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 1598
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1600
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v1, :cond_e

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_e

    .line 1601
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1602
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1604
    :cond_e
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>(Ljava/lang/Thread;I)V

    .line 1605
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v1, :cond_1e

    .line 1606
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1609
    :goto_1b
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1610
    return-object v0

    .line 1608
    :cond_1e
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_1b
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I
    .registers 3
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 1751
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 4
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v1, 0x0

    .line 1621
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_9

    .line 1622
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1623
    :cond_9
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1624
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez p1, :cond_1

    .line 1626
    :cond_17
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 5
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1633
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1635
    :cond_5
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1636
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1637
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1638
    move-object p1, v0

    .line 1639
    if-nez p1, :cond_5

    .line 1640
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .registers 3
    .param p1, "interruptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1762
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 1763
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1764
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 1765
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1766
    :cond_f
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .registers 6

    .prologue
    .line 1657
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1658
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    const/4 v2, 0x0

    .line 1659
    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_3
    if-eqz v1, :cond_1e

    .line 1660
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1661
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1c

    .line 1662
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1663
    if-nez v2, :cond_19

    .line 1664
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1667
    :goto_13
    if-nez v0, :cond_17

    .line 1668
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1672
    :cond_17
    :goto_17
    move-object v1, v0

    .line 1673
    goto :goto_3

    .line 1666
    :cond_19
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_13

    .line 1671
    :cond_1c
    move-object v2, v1

    goto :goto_17

    .line 1674
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :cond_1e
    return-void
.end method


# virtual methods
.method public final await()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1782
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1783
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1784
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1785
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1786
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1787
    .local v0, "interruptMode":I
    :cond_17
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1788
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1789
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1792
    :cond_28
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, -0x1

    if-eq v0, v4, :cond_34

    .line 1793
    const/4 v0, 0x1

    .line 1794
    :cond_34
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v4, :cond_3b

    .line 1795
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1796
    :cond_3b
    if-eqz v0, :cond_40

    .line 1797
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1798
    :cond_40
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 21
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1898
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 1899
    .local v8, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1900
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13

    .line 1901
    :cond_14
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v7

    .line 1902
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v10

    .line 1903
    .local v10, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 1904
    .local v4, "deadline":J
    const/4 v12, 0x0

    .line 1905
    .local v12, "timedout":Z
    const/4 v6, 0x0

    .line 1906
    .local v6, "interruptMode":I
    :goto_28
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v13

    if-nez v13, :cond_40

    .line 1907
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gtz v13, :cond_60

    .line 1908
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v12

    .line 1917
    :cond_40
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7, v10, v11}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v13

    if-eqz v13, :cond_4e

    const/4 v13, -0x1

    if-eq v6, v13, :cond_4e

    .line 1918
    const/4 v6, 0x1

    .line 1919
    :cond_4e
    iget-object v13, v7, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v13, :cond_55

    .line 1920
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1921
    :cond_55
    if-eqz v6, :cond_5c

    .line 1922
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1923
    :cond_5c
    if-nez v12, :cond_7a

    const/4 v13, 0x1

    :goto_5f
    return v13

    .line 1911
    :cond_60
    const-wide/16 v14, 0x3e8

    cmp-long v13, v8, v14

    if-ltz v13, :cond_6b

    .line 1912
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1913
    :cond_6b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v6

    if-nez v6, :cond_40

    .line 1915
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v8, v4, v14

    goto :goto_28

    .line 1923
    :cond_7a
    const/4 v13, 0x0

    goto :goto_5f
.end method

.method public final awaitNanos(J)J
    .registers 12
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1816
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 1817
    :cond_c
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1818
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v4

    .line 1819
    .local v4, "savedState":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p1

    .line 1820
    .local v0, "deadline":J
    const/4 v2, 0x0

    .line 1821
    .local v2, "interruptMode":I
    :goto_1d
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 1822
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_4f

    .line 1823
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    .line 1832
    :cond_30
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v6, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3c

    .line 1833
    const/4 v2, 0x1

    .line 1834
    :cond_3c
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v6, :cond_43

    .line 1835
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1836
    :cond_43
    if-eqz v2, :cond_48

    .line 1837
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1838
    :cond_48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v0, v6

    return-wide v6

    .line 1826
    :cond_4f
    const-wide/16 v6, 0x3e8

    cmp-long v6, p1, v6

    if-ltz v6, :cond_58

    .line 1827
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1828
    :cond_58
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-nez v2, :cond_30

    .line 1830
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p1, v0, v6

    goto :goto_1d
.end method

.method public final awaitUninterruptibly()V
    .registers 6

    .prologue
    .line 1721
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v1

    .line 1722
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v2

    .line 1723
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1724
    .local v0, "interrupted":Z
    :cond_b
    :goto_b
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1725
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1726
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1727
    const/4 v0, 0x1

    goto :goto_b

    .line 1729
    :cond_1e
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v4

    if-nez v4, :cond_28

    if-eqz v0, :cond_2b

    .line 1730
    :cond_28
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1731
    :cond_2b
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .registers 12
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1857
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1858
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1859
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1860
    :cond_10
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    move-result-object v3

    .line 1861
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)J

    move-result-wide v4

    .line 1862
    .local v4, "savedState":J
    const/4 v6, 0x0

    .line 1863
    .local v6, "timedout":Z
    const/4 v2, 0x0

    .line 1864
    .local v2, "interruptMode":I
    :cond_1c
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 1865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-lez v7, :cond_4e

    .line 1866
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)Z

    move-result v6

    .line 1873
    :cond_32
    :goto_32
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;J)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3e

    .line 1874
    const/4 v2, 0x1

    .line 1875
    :cond_3e
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-eqz v7, :cond_45

    .line 1876
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1877
    :cond_45
    if-eqz v2, :cond_4a

    .line 1878
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1879
    :cond_4a
    if-nez v6, :cond_58

    const/4 v7, 0x1

    :goto_4d
    return v7

    .line 1869
    :cond_4e
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1870
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_32

    .line 1879
    :cond_58
    const/4 v7, 0x0

    goto :goto_4d
.end method

.method protected final getWaitQueueLength()I
    .registers 5

    .prologue
    .line 1966
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1967
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 1968
    :cond_e
    const/4 v0, 0x0

    .line 1969
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_11
    if-eqz v1, :cond_1d

    .line 1970
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1a

    .line 1971
    add-int/lit8 v0, v0, 0x1

    .line 1969
    :cond_1a
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_11

    .line 1973
    :cond_1d
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1986
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1987
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 1988
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1989
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_15
    if-eqz v2, :cond_26

    .line 1990
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_23

    .line 1991
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1992
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_23

    .line 1993
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_23
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_15

    .line 1996
    :cond_26
    return-object v0
.end method

.method protected final hasWaiters()Z
    .registers 4

    .prologue
    .line 1947
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1948
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1949
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    :goto_10
    if-eqz v0, :cond_1c

    .line 1950
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_19

    .line 1951
    const/4 v1, 0x1

    .line 1953
    :goto_18
    return v1

    .line 1949
    :cond_19
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    goto :goto_10

    .line 1953
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .registers 3
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .prologue
    .line 1935
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final signal()V
    .registers 3

    .prologue
    .line 1687
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1688
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1689
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1690
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_15

    .line 1691
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1692
    :cond_15
    return-void
.end method

.method public final signalAll()V
    .registers 3

    .prologue
    .line 1702
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1703
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1704
    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 1705
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-eqz v0, :cond_15

    .line 1706
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V

    .line 1707
    :cond_15
    return-void
.end method
