.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldCounter"
.end annotation


# instance fields
.field count:I

.field final tid:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    return-void
.end method
