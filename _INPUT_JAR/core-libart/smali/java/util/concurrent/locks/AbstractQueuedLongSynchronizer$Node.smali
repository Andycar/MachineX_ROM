.class final Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final CANCELLED:I = 0x1

.field static final CONDITION:I = -0x2

.field static final EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field static final PROPAGATE:I = -0x3

.field static final SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field static final SIGNAL:I = -0x1


# instance fields
.field volatile next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile thread:Ljava/lang/Thread;

.field volatile waitStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;I)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "waitStatus"    # I

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    .line 261
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 262
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 256
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 257
    return-void
.end method


# virtual methods
.method final isShared()Z
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    .line 245
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    if-nez v0, :cond_a

    .line 246
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 248
    :cond_a
    return-object v0
.end method
