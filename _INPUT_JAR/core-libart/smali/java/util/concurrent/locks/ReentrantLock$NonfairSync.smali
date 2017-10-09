.class final Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x658832e7537bbf0bL


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method final lock()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 181
    :goto_f
    return-void

    .line 180
    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->acquire(I)V

    goto :goto_f
.end method

.method protected final tryAcquire(I)Z
    .registers 3
    .param p1, "acquires"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method
