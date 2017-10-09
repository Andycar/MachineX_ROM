.class public Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewZoomPanning.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$1;,
        Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;,
        Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mBottomArea:Landroid/view/View;

.field private mIsDoubleTapPuase:Z

.field private mIsForceUpdateMusicBitmap:Z

.field private mIsRemoveMusicBitmapByScreenOff:Z

.field private mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

.field private mMusicWallpaper:Landroid/graphics/Bitmap;

.field private mNotificationPanel:Landroid/view/View;

.field private mStrMusicBitmapId:Ljava/lang/String;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mUpdateDelayed:Z

.field private mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "KeyguardEffectViewZoom"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->TAG:Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    .line 83
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .line 94
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .line 110
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    .line 111
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 112
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 113
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 115
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->addView(Landroid/view/View;II)V

    .line 119
    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    return v0
.end method

.method private isSameBitmap()Z
    .locals 3

    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v2, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 485
    :goto_0
    return v2

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCurrentBitmapPath()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "currentBitmapPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "newBitmapPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 482
    .end local v1    # "newBitmapPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "newBitmapPath":Ljava/lang/String;
    goto :goto_1
.end method

.method private startAffordanceAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa6

    const v1, 0x3f99999a    # 1.2f

    const v5, 0x3f866666    # 1.05f

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startAffordanceAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 360
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleX(F)V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setScaleY(F)V

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x342

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    goto/16 :goto_0
.end method

.method private startResetTranlateAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 404
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startResetTranlateAnimation() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mWidgetReleaseInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private startWidgetTranslateAnimation(FF)V
    .locals 2
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 394
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "startWidgetTranslateAnimation() mNotificationStack is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 156
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "getUnlockDelay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 281
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v4, :cond_2

    .line 324
    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "mMovableImageView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v4, 0x0

    .line 328
    :goto_1
    return v4

    .line 283
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    .line 289
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    sub-float/2addr v4, v5

    mul-float v2, v4, v6

    .line 299
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    sub-float/2addr v4, v5

    mul-float v3, v4, v6

    .line 301
    .local v3, "translateY":F
    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startWidgetTranslateAnimation(FF)V

    goto :goto_0

    .line 304
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :pswitch_4
    const/4 v1, 0x0

    .local v1, "iIdx":I
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartX:F

    .line 310
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mTouchStartY:F

    goto :goto_0

    .line 315
    .end local v1    # "iIdx":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 317
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 264
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handleUnlock()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "playLockSound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return-void
.end method

.method public removeMusicWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "removeMusicWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 455
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void

    .line 459
    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 460
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 142
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startResetTranlateAnimation()V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_2

    .line 230
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    .line 236
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 237
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 238
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOff() running delayed update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->update()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "screenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->startAffordanceAnimation()V

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v0, :cond_1

    .line 215
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "mMovableImageView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContextualWallpaper() bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;

    .line 440
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z

    .line 442
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    if-ne v0, v3, :cond_1

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsRemoveMusicBitmapByScreenOff:Z

    .line 444
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->update()V

    .line 448
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setHidden()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    return-void
.end method

.method public setLayers(Landroid/view/View;)V
    .locals 2
    .param p1, "panelView"    # Landroid/view/View;

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setLayers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mNotificationPanel:Landroid/view/View;

    .line 422
    if-eqz p1, :cond_1

    .line 423
    sget v0, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mBottomArea:Landroid/view/View;

    .line 425
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    if-nez v1, :cond_2

    .line 172
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "mMovableImageView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->isUpdatableState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    if-nez v1, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->isSameBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 178
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : no need to update because of same bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 184
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "update() : is not updatable state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    goto :goto_0

    .line 190
    :cond_5
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mUpdateDelayed:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mIsForceUpdateMusicBitmap:Z

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->stopAnimation()Z

    move-result v0

    .line 195
    .local v0, "isSuccessStop":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    .line 202
    :cond_6
    if-ne v0, v3, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->mMovableImageView:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->startAnimation()Z

    goto :goto_0
.end method
