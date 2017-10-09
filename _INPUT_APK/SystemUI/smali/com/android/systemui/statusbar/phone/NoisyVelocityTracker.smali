.class public Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
.super Ljava/lang/Object;
.source "NoisyVelocityTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DECAY:F = 0.75f

.field private static final sNoisyPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_EVENTS:I

.field private mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field private mVX:F

.field private mVY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->MAX_EVENTS:I

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    .line 57
    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;

    .line 53
    .local v0, "instance":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    if-eqz v0, :cond_0

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    :goto_0
    return-object v0

    .restart local v0    # "instance":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 14
    .param p1, "units"    # I

    .prologue
    .line 70
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, "last":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
    const/4 v4, 0x0

    .line 73
    .local v4, "i":I
    const/4 v7, 0x0

    .line 74
    .local v7, "totalweight":F
    const/high16 v8, 0x41200000    # 10.0f

    .line 75
    .local v8, "weight":F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 76
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 77
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;

    .line 78
    .local v3, "event":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
    if-eqz v6, :cond_1

    .line 79
    iget-wide v10, v3, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    iget-wide v12, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    int-to-float v10, p1

    div-float v0, v9, v10

    .line 80
    .local v0, "dt":F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    sub-float v1, v9, v10

    .line 81
    .local v1, "dx":F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    sub-float v2, v9, v10

    .line 91
    .local v2, "dy":F
    iget-wide v10, v3, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    iget-wide v12, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    .line 96
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    mul-float v10, v8, v1

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    .line 97
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    mul-float v10, v8, v2

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    .line 98
    add-float/2addr v7, v8

    .line 99
    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    .line 101
    .end local v0    # "dt":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_1
    move-object v6, v3

    .line 102
    add-int/lit8 v4, v4, 0x1

    .line 103
    goto :goto_0

    .line 104
    .end local v3    # "event":Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
    :cond_2
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    .line 105
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    .line 106
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    .line 115
    :goto_1
    return-void

    .line 109
    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    goto :goto_1
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    .line 128
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 133
    sget-object v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method
