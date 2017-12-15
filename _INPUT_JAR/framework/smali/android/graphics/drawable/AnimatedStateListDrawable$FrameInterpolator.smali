.class Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInterpolator"
.end annotation


# instance fields
.field private mFrameTimes:[I

.field private mFrames:I

.field private mTotalDuration:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I

    .line 612
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .prologue
    .line 640
    iget v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 641
    .local v1, "elapsed":I
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 642
    .local v0, "N":I
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 645
    .local v3, "frameTimes":[I
    move v5, v1

    .line 646
    .local v5, "remaining":I
    const/4 v4, 0x0

    .line 647
    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_1a

    aget v6, v3, v4

    if-lt v5, v6, :cond_1a

    .line 648
    aget v6, v3, v4

    sub-int/2addr v5, v6

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 654
    :cond_1a
    if-ge v4, v0, :cond_27

    .line 655
    int-to-float v6, v5

    iget v7, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 660
    .local v2, "frameElapsed":F
    :goto_22
    int-to-float v6, v4

    int-to-float v7, v0

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    return v6

    .line 657
    .end local v2    # "frameElapsed":F
    :cond_27
    const/4 v2, 0x0

    .restart local v2    # "frameElapsed":F
    goto :goto_22
.end method

.method public getTotalDuration()I
    .registers 2

    .prologue
    .line 635
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    return v0
.end method

.method public updateFrames(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 9
    .param p1, "d"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 616
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrames:I

    .line 618
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    array-length v5, v5

    if-ge v5, v0, :cond_13

    .line 619
    :cond_f
    new-array v5, v0, [I

    iput-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 622
    :cond_13
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mFrameTimes:[I

    .line 623
    .local v2, "frameTimes":[I
    const/4 v4, 0x0

    .line 624
    .local v4, "totalDuration":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_2b

    .line 625
    if-eqz p2, :cond_29

    sub-int v5, v0, v3

    add-int/lit8 v5, v5, -0x1

    :goto_1f
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    .line 626
    .local v1, "duration":I
    aput v1, v2, v3

    .line 627
    add-int/2addr v4, v1

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .end local v1    # "duration":I
    :cond_29
    move v5, v3

    .line 625
    goto :goto_1f

    .line 630
    :cond_2b
    iput v4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->mTotalDuration:I

    .line 631
    return v4
.end method
