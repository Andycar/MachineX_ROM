.class Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingAlongVectorAnimatorUpdateListener"
.end annotation


# instance fields
.field private final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragView:Landroid/view/View;

.field private mFriction:F

.field private mFrom:Landroid/graphics/Rect;

.field private mPrevTime:J

.field private mVelocity:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V
    .locals 2
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "vel"    # Landroid/graphics/PointF;
    .param p3, "from"    # Landroid/graphics/Rect;
    .param p4, "startTime"    # J
    .param p6, "friction"    # F

    .prologue
    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2417
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 2421
    iput-object p1, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    .line 2422
    iput-object p2, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    .line 2423
    iput-object p3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    .line 2424
    iput-wide p4, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 2425
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    .line 2426
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 2430
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2431
    .local v2, "t":F
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2433
    .local v0, "curTime":J
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-wide v6, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2434
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-wide v6, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2436
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 2437
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2438
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mDragView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2440
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 2441
    iget-object v3, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 2442
    iput-wide v0, p0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 2443
    return-void
.end method
