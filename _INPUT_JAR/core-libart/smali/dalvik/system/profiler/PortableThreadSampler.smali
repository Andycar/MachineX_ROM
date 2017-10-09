.class Ldalvik/system/profiler/PortableThreadSampler;
.super Ljava/lang/Object;
.source "PortableThreadSampler.java"

# interfaces
.implements Ldalvik/system/profiler/ThreadSampler;


# instance fields
.field private depth:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .registers 5
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 35
    .local v0, "stackFrames":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    if-nez v1, :cond_9

    .line 36
    const/4 v1, 0x0

    .line 41
    :goto_8
    return-object v1

    .line 38
    :cond_9
    array-length v1, v0

    iget v2, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    if-le v1, v2, :cond_17

    .line 39
    const/4 v1, 0x0

    iget v2, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "stackFrames":[Ljava/lang/StackTraceElement;
    check-cast v0, [Ljava/lang/StackTraceElement;

    .restart local v0    # "stackFrames":[Ljava/lang/StackTraceElement;
    :cond_17
    move-object v1, v0

    .line 41
    goto :goto_8
.end method

.method public setDepth(I)V
    .registers 2
    .param p1, "depth"    # I

    .prologue
    .line 30
    iput p1, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    .line 31
    return-void
.end method
