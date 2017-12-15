.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:J

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    .line 91
    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static native nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(JI)F
.end method

.method private static native nativeGetYVelocity(JI)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)J
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 2

    .prologue
    .line 58
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    .line 59
    .local v0, "instance":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_b

    .end local v0    # "instance":Landroid/view/VelocityTracker;
    :goto_a
    return-object v0

    .restart local v0    # "instance":Landroid/view/VelocityTracker;
    :cond_b
    new-instance v0, Landroid/view/VelocityTracker;

    .end local v0    # "instance":Landroid/view/VelocityTracker;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "strategy"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p0, :cond_7

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    .line 75
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    if-nez p1, :cond_a

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    .line 127
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    .line 111
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 5
    .param p1, "units"    # I

    .prologue
    .line 136
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 137
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 5
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 153
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 154
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 97
    :try_start_2
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 98
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    .line 102
    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void

    .line 102
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "outEstimator"    # Landroid/view/VelocityTracker$Estimator;

    .prologue
    .line 213
    if-nez p2, :cond_b

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_b
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0
.end method

.method public getXVelocity()F
    .registers 4

    .prologue
    .line 163
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 184
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .registers 4

    .prologue
    .line 173
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 195
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 84
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 85
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 87
    :cond_c
    return-void
.end method
