.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 61
    return-void
.end method


# virtual methods
.method animateValue(F)V
    .registers 2
    .param p1, "fraction"    # F

    .prologue
    .line 45
    return-void
.end method

.method animationFrame(J)Z
    .registers 10
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 23
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_18

    .line 24
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    .line 25
    .local v2, "totalTime":J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1a

    .line 26
    .local v4, "deltaTime":J
    :goto_10
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 27
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .line 29
    .end local v2    # "totalTime":J
    .end local v4    # "deltaTime":J
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 25
    .restart local v2    # "totalTime":J
    :cond_1a
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_10
.end method

.method initAnimation()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/animation/TimeAnimator$TimeListener;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 40
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    .line 18
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    return-void
.end method
