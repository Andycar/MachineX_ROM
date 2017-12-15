.class Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    .line 402
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    .line 403
    return-void
.end method

.method private scheduleCallback()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 415
    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_d

    .line 416
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 417
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 419
    :cond_d
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 406
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 408
    return-void
.end method

.method public removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 411
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 423
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    .line 424
    .local v2, "frameTimeMs":J
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 428
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator;

    .line 429
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    # invokes: Landroid/view/RenderNodeAnimator;->processDelayed(J)Z
    invoke-static {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->access$000(Landroid/view/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 430
    if-eq v1, v4, :cond_28

    .line 431
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 427
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 436
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    :cond_2d
    :goto_2d
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_43

    .line 437
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    .line 440
    :cond_43
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4e

    .line 441
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 443
    :cond_4e
    return-void
.end method
