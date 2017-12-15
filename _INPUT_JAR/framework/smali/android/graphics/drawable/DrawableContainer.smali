.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 582
    return-void
.end method

.method private needsMirroring()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method animate(Z)V
    .registers 14
    .param p1, "schedule"    # Z

    .prologue
    const-wide/16 v10, 0xff

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 500
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 503
    .local v2, "now":J
    const/4 v1, 0x0

    .line 504
    .local v1, "animating":Z
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6e

    .line 505
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2a

    .line 506
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_51

    .line 507
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 508
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 520
    :cond_2a
    :goto_2a
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8c

    .line 521
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_44

    .line 522
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_71

    .line 523
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 524
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 525
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 538
    :cond_44
    :goto_44
    if-eqz p1, :cond_50

    if-eqz v1, :cond_50

    .line 539
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x10

    add-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Landroid/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 541
    :cond_50
    return-void

    .line 510
    :cond_51
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int v0, v4, v5

    .line 513
    .local v0, "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    rsub-int v5, v0, 0xff

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 514
    const/4 v1, 0x1

    .line 515
    goto :goto_2a

    .line 518
    .end local v0    # "animAlpha":I
    :cond_6e
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_2a

    .line 527
    :cond_71
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int v0, v4, v5

    .line 530
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 531
    const/4 v1, 0x1

    .line 532
    goto :goto_44

    .line 535
    .end local v0    # "animAlpha":I
    :cond_8c
    iput-wide v8, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_44
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 550
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 551
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    :cond_12
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 561
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 562
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 564
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentIndex()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    :goto_9
    return-void

    .line 305
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 342
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 344
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 334
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 336
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 360
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 352
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, -0x2

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_d
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 125
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_a
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 133
    :cond_9
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 96
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v1, :cond_2a

    .line 99
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    or-int/2addr v4, v5

    if-eqz v4, :cond_28

    const/4 v2, 0x1

    .line 108
    .local v2, "result":Z
    :goto_19
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 109
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 110
    .local v0, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 111
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 112
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 114
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_27
    return v2

    .line 100
    .end local v2    # "result":Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_19

    .line 102
    :cond_2a
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_35

    .line 103
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_19

    .line 105
    .end local v2    # "result":Z
    :cond_35
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_19
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_11
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 256
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_10
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_28

    .line 261
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 262
    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_28

    .line 263
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    :cond_28
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    .line 267
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_31
    iget-wide v2, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3a

    .line 271
    iput-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 272
    const/4 v0, 0x1

    .line 274
    :cond_3a
    if-eqz v0, :cond_3f

    .line 275
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 277
    :cond_3f
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 570
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 573
    :cond_12
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    :cond_12
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 328
    :goto_a
    return v0

    .line 325
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_a

    .line 328
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 317
    :goto_a
    return v0

    .line 314
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_a

    .line 317
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 373
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 375
    :cond_11
    return-void
.end method

.method public selectDrawable(I)Z
    .registers 14
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 413
    iget v6, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v6, :cond_a

    .line 496
    :goto_9
    return v4

    .line 417
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 423
    .local v2, "now":J
    iget-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v6, v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v6, :cond_c5

    .line 424
    iget-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1d

    .line 425
    iget-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 427
    :cond_1d
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_bf

    .line 428
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 429
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 438
    :cond_2d
    :goto_2d
    if-ltz p1, :cond_f7

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v4, :cond_f7

    .line 439
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 442
    if-eqz v0, :cond_9f

    .line 443
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 444
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v4, :cond_d0

    .line 445
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 449
    :cond_52
    :goto_52
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v4, :cond_db

    .line 451
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 460
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v4

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 461
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 462
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 464
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 465
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 466
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 468
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 469
    .local v1, "hotspotBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_9f

    .line 470
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 479
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_9f
    :goto_9f
    iget-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v6, v10

    if-nez v4, :cond_ab

    iget-wide v6, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v6, v10

    if-eqz v4, :cond_b9

    .line 480
    :cond_ab
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_fd

    .line 481
    new-instance v4, Landroid/graphics/drawable/DrawableContainer$1;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/DrawableContainer$1;-><init>(Landroid/graphics/drawable/DrawableContainer;)V

    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 491
    :goto_b6
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 494
    :cond_b9
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    move v4, v5

    .line 496
    goto/16 :goto_9

    .line 431
    :cond_bf
    iput-object v8, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 432
    iput-wide v10, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto/16 :goto_2d

    .line 434
    :cond_c5
    iget-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2d

    .line 435
    iget-object v6, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto/16 :goto_2d

    .line 446
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d0
    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v4, :cond_52

    .line 447
    iget v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_52

    .line 453
    :cond_db
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v4, :cond_e8

    .line 454
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 456
    :cond_e8
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v4, :cond_5f

    .line 457
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v4, v4, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_5f

    .line 475
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_f7
    iput-object v8, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    const/4 v4, -0x1

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_9f

    .line 488
    :cond_fd
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_b6
.end method

.method public setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_22

    .line 138
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 139
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 140
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 141
    iget-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    :cond_22
    :goto_22
    return-void

    .line 144
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    goto :goto_22
.end method

.method public setAutoMirrored(Z)V
    .registers 4
    .param p1, "mirrored"    # Z

    .prologue
    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_1b

    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 245
    :cond_1b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 167
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_1e

    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_1e
    return-void

    .line 167
    :cond_1f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 2
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 1076
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1077
    return-void
.end method

.method public setCurrentIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 405
    return-void
.end method

.method public setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_1b

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    .line 160
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 163
    :cond_1b
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 211
    return-void
.end method

.method public setExitFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 220
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 281
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 284
    :cond_9
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_15

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 294
    :goto_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 295
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 297
    :cond_14
    return-void

    .line 291
    :cond_15
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1c

    .line 183
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 189
    :cond_1c
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 195
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_1c

    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 198
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 199
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 202
    :cond_1c
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 387
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 388
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 390
    :cond_d
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 391
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 393
    :cond_16
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 380
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 382
    :cond_11
    return-void
.end method
