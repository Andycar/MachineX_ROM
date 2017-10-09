.class public abstract Lcom/sec/android/sviewcover/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/sec/android/sviewcover/PagedView$SavedState;,
        Lcom/sec/android/sviewcover/PagedView$ScrollInterpolator;,
        Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_WARP:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_SLOP_SCALE:F = 1.0f

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_READY:I = 0x5

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final WARP_ANIMATE_AMOUNT:F = -75.0f

.field private static final WARP_PEEK_ANIMATION_DURATION:I = 0x96

.field private static final WARP_SNAP_DURATION:I = 0xa0

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 285
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mFirstLayout:Z

    .line 113
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    .line 127
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastScreenCenter:I

    .line 143
    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 153
    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mCellCountX:I

    .line 154
    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mCellCountY:I

    .line 155
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mAllowOverScroll:Z

    .line 157
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    .line 166
    iput v5, p0, Lcom/sec/android/sviewcover/PagedView;->mLayoutScale:F

    .line 170
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    .line 177
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mContentIsRefreshable:Z

    .line 180
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mFadeInAdjacentScreens:Z

    .line 184
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mUsePagingTouchSlop:Z

    .line 188
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferScrollUpdate:Z

    .line 190
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mIsDataReady:Z

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicator:Z

    .line 201
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 213
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 214
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 215
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 216
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 217
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 218
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 219
    iput v5, p0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    .line 223
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverIndex:I

    .line 225
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mReorderingStarted:Z

    .line 230
    iput v4, p0, Lcom/sec/android/sviewcover/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 236
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDownEventOnEdge:Z

    .line 237
    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mEdgeSwipeRegionSize:I

    .line 240
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 241
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    .line 242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 246
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 247
    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 249
    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 250
    const/16 v0, -0x578

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 252
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    .line 253
    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 254
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 260
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 263
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    .line 264
    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    .line 2028
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/PagedView$2;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2692
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$13;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/PagedView$13;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2702
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/PagedView$14;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->init()V

    .line 302
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/sviewcover/PagedView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/sec/android/sviewcover/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/sviewcover/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/PagedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/PagedView;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/sviewcover/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/PagedView;

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1722
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1725
    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    .line 2759
    return-void
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2743
    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "abortAnimation"    # Z

    .prologue
    .line 2723
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2430
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/sviewcover/PagedView$9;-><init>(Lcom/sec/android/sviewcover/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private getPageSnapDuration()I
    .locals 1

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2372
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2374
    iget-object v4, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2376
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2378
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2379
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2381
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2385
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2579
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2580
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2581
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2582
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2583
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2585
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2586
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2587
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2589
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1076
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1077
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1080
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1082
    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2595
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    .line 2597
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2598
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2601
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2602
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2603
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2604
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2607
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2610
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2611
    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2613
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    invoke-direct {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2620
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2621
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2622
    iget v8, p0, Lcom/sec/android/sviewcover/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2623
    new-instance v8, Lcom/sec/android/sviewcover/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/sviewcover/PagedView$12;-><init>(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2628
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2630
    iput-boolean v11, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    .line 2631
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2229
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2230
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2235
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1737
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1738
    .local v1, "pointerId":I
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1742
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1743
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 1744
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    .line 1745
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    .line 1746
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    .line 1747
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1748
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1751
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1742
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1311
    sub-float/2addr p1, v1

    .line 1312
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1732
    :cond_0
    return-void
.end method

.method private resetPageWarp()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 521
    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    .line 522
    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    .line 523
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1682
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->releaseVelocityTracker()V

    .line 1683
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->endReordering()V

    .line 1684
    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    .line 1685
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    .line 1686
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDownEventOnEdge:Z

    .line 1687
    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    .line 1221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionY:F

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownScrollX:F

    .line 1223
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1224
    .local v1, "p":[F
    aget v3, v1, v6

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    .line 1225
    aget v3, v1, v7

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    .line 1226
    iput v5, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    .line 1227
    iput v5, p0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    .line 1228
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/sec/android/sviewcover/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    .line 1232
    .local v0, "leftEdgeBoundary":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/sviewcover/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    .line 1233
    .local v2, "rightEdgeBoundary":I
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1234
    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/sviewcover/PagedView;->mDownEventOnEdge:Z

    .line 1236
    :cond_1
    return-void
.end method

.method private setTouchState(I)V
    .locals 1
    .param p1, "touchState"    # I

    .prologue
    .line 1201
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_0

    .line 1203
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->onTouchStateChanged(I)V

    .line 1204
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    .line 1206
    :cond_0
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1269
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1270
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1273
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    .line 1274
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    .line 1275
    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 1276
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    .line 1277
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchX:F

    .line 1278
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/sviewcover/PagedView;->mSmoothingTime:F

    .line 1279
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->pageBeginMoving()V

    goto :goto_0
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2116
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2117
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->updateScrollingIndicatorPosition()V

    .line 2119
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2120
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2125
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v6

    .line 2128
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v8

    .line 2129
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2130
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2131
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2132
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2135
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2136
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2137
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2138
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2139
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2140
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2141
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2147
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2144
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2145
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1316
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v2

    .line 1320
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1322
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1326
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1329
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1330
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1331
    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    .line 1332
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1337
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    goto :goto_0

    .line 1334
    :cond_2
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    .line 1335
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1012
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1014
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1015
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1016
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1023
    :cond_1
    :goto_0
    return-void

    .line 1018
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1019
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1020
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2152
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2154
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2155
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2158
    new-instance v1, Lcom/sec/android/sviewcover/PagedView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/PagedView$4;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2164
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2166
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method beginCameraEvent()V
    .locals 1

    .prologue
    .line 2685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    .line 2686
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 875
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2068
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->computeScrollHelper()Z

    .line 618
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 589
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->scrollTo(II)V

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    .line 612
    :goto_0
    return v0

    .line 598
    :cond_2
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    .line 599
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .line 600
    iput v4, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->notifyPageSwitched()V

    .line 605
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->pageEndMoving()V

    .line 609
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 612
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1341
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v2

    .line 1343
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1345
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1346
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1349
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1350
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1353
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1354
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1355
    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    .line 1356
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1361
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    goto :goto_0

    .line 1358
    :cond_2
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    .line 1359
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1244
    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1245
    .local v0, "pointerIndex":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return v10

    .line 1248
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1249
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1250
    .local v6, "y":F
    float-to-int v11, v2

    float-to-int v12, v6

    invoke-direct {p0, v11, v12}, Lcom/sec/android/sviewcover/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1254
    iget-boolean v11, p0, Lcom/sec/android/sviewcover/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/sviewcover/PagedView;->mDownEventOnEdge:Z

    if-eqz v11, :cond_0

    .line 1256
    :cond_2
    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    sub-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v3, v11

    .line 1257
    .local v3, "xDiff":I
    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 1259
    .local v7, "yDiff":I
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchSlop:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1260
    .local v1, "touchSlop":I
    iget v11, p0, Lcom/sec/android/sviewcover/PagedView;->mPagingTouchSlop:I

    if-le v3, v11, :cond_5

    move v5, v9

    .line 1261
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1262
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_7

    move v8, v9

    .line 1264
    .local v8, "yMoved":Z
    :goto_3
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_9

    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/sviewcover/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_8

    if-eqz v5, :cond_9

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v10

    .line 1260
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v10

    .line 1261
    goto :goto_2

    .restart local v4    # "xMoved":Z
    :cond_7
    move v8, v10

    .line 1262
    goto :goto_3

    .line 1264
    .restart local v8    # "yMoved":Z
    :cond_8
    if-nez v4, :cond_4

    :cond_9
    move v9, v10

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 925
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 927
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 930
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 931
    invoke-virtual {p0, v7}, Lcom/sec/android/sviewcover/PagedView;->screenScrolled(I)V

    .line 932
    iput v7, p0, Lcom/sec/android/sviewcover/PagedView;->mLastScreenCenter:I

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v5

    .line 937
    .local v5, "pageCount":I
    if-lez v5, :cond_7

    .line 938
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/sec/android/sviewcover/PagedView;->getVisiblePages([I)V

    .line 939
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 940
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 941
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    .line 942
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 944
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 945
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 949
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 950
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 951
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 949
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 952
    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 954
    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 958
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 959
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 962
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 966
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 995
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    .line 1006
    :goto_0
    return v0

    .line 1000
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1006
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1842
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1843
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1844
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endCameraEvent()V
    .locals 1

    .prologue
    .line 2689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    .line 2690
    return-void
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2290
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2291
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mReorderingStarted:Z

    .line 2295
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/PagedView$6;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    .line 2301
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2302
    new-instance v1, Lcom/sec/android/sviewcover/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/sviewcover/PagedView$7;-><init>(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2308
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2311
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(II)V

    .line 2313
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2037
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->showScrollingIndicator(Z)V

    .line 2038
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2039
    return-void

    .line 2037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1034
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1037
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1038
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1048
    :cond_0
    return-void

    .line 1041
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1044
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1045
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1046
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1289
    .local v0, "halfScreenSize":I
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1290
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1292
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .param p1, "relativeOffset"    # I

    .prologue
    .line 1763
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    .line 1766
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1767
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1768
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1769
    .local v3, "right":I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1773
    .end local v1    # "i":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :goto_1
    return v1

    .line 1766
    .restart local v1    # "i":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1773
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 826
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v2

    .line 828
    :cond_1
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsets:[I

    .line 831
    .local v0, "childOffsets":[I
    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 832
    aget v2, v0, p1

    goto :goto_0

    .line 828
    .end local v0    # "childOffsets":[I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    .line 834
    .restart local v0    # "childOffsets":[I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 838
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 839
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 841
    :cond_4
    if-eqz v0, :cond_0

    .line 842
    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1779
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1780
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMinimumWidth:I

    .line 1781
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1283
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1977
    const/4 v2, -0x1

    .line 1978
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 1979
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1980
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    .line 1981
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1982
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1987
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1981
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1987
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1797
    const v7, 0x7fffffff

    .line 1798
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1799
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1800
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v1

    .line 1801
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1802
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1803
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1804
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1805
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1806
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1807
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1808
    move v7, v3

    .line 1809
    move v8, v5

    .line 1801
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1812
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method getPageNearestToPoint(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 1785
    const/4 v1, 0x0

    .line 1786
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1787
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1793
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 1790
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1793
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method protected getPageWarpIndex()I
    .locals 1

    .prologue
    .line 2783
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 849
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 860
    :cond_1
    :goto_0
    return v0

    .line 851
    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 852
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    .line 854
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 855
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int v0, v2, v3

    .line 857
    .local v0, "offset":I
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 868
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mMinimumWidth:I

    .line 869
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 870
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/sviewcover/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .line 869
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1298
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1299
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1302
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1303
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1304
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1305
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 879
    aput v0, p1, v0

    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 914
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2108
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2071
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2075
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2077
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->updateScrollingIndicatorPosition()V

    .line 2078
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2079
    if-eqz p1, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2081
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2083
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2084
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2085
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/PagedView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/PagedView$3;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2098
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 434
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 309
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 310
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/android/sviewcover/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/sec/android/sviewcover/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 314
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchSlop:I

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPagingTouchSlop:I

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMaximumVelocity:I

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    .line 318
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000    # -75.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mWarpPeekAmount:F

    .line 321
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 323
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mFlingThresholdVelocity:I

    .line 324
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMinFlingVelocity:I

    .line 325
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMinSnapVelocity:I

    .line 326
    invoke-virtual {p0, p0}, Lcom/sec/android/sviewcover/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 327
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    .line 808
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 809
    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsets:[I

    .line 810
    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    .line 811
    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 823
    :cond_0
    return-void

    .line 815
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsets:[I

    .line 816
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    .line 817
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 818
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 819
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 820
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 821
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2281
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsReordering:Z

    .line 2282
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2283
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2285
    :cond_0
    return v0

    .line 2283
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2025
    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 2

    .prologue
    .line 1957
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 344
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 346
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 336
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 339
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 340
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1371
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1372
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/sviewcover/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1373
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitched()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 488
    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 482
    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidateCachedOffsets()V

    .line 797
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidateCachedOffsets()V

    .line 804
    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2238
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2239
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2240
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2247
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/PagedView;->mIsReordering:Z

    .line 2250
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getVisiblePages([I)V

    .line 2251
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/sviewcover/PagedView;->boundByReorderablePages(Z[I)V

    .line 2252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2253
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-le v0, v1, :cond_2

    .line 2254
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2257
    :cond_3
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 2522
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2529
    .local v4, "startTime":J
    new-instance v9, Lcom/sec/android/sviewcover/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/sec/android/sviewcover/PagedView$10;-><init>(Lcom/sec/android/sviewcover/PagedView;J)V

    .line 2550
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2551
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    .line 2552
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2553
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2554
    new-instance v0, Lcom/sec/android/sviewcover/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2560
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2563
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2564
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2565
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2566
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2567
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2568
    new-instance v2, Lcom/sec/android/sviewcover/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/sviewcover/PagedView$11;-><init>(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2573
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2574
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    .line 2575
    return-void

    .line 2566
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1717
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1699
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1700
    const/4 v1, 0x0

    .line 1701
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1706
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1707
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->scrollRight()V

    .line 1712
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1703
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1704
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1710
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2681
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2648
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2649
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2650
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2651
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2652
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2653
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2655
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2637
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2638
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2639
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2641
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2642
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2644
    :cond_1
    return-void

    .line 2637
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1096
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1099
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1197
    :cond_0
    :goto_0
    return v3

    .line 1106
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1107
    .local v0, "action":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    if-eq v5, v3, :cond_0

    .line 1112
    :cond_2
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1197
    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1118
    :pswitch_1
    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1119
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1120
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1134
    :pswitch_2
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    if-eqz v5, :cond_5

    .line 1135
    const-string v5, "interceptTouch(): DOWN"

    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    .line 1138
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1145
    iget-object v5, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1146
    .local v2, "xDist":I
    iget-object v5, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchSlop:I

    if-ge v2, v5, :cond_7

    :cond_6
    move v1, v3

    .line 1147
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 1148
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    .line 1149
    iget-object v5, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_7
    move v1, v4

    .line 1146
    goto :goto_2

    .line 1151
    .restart local v1    # "finishedScrolling":Z
    :cond_8
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/sviewcover/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1153
    :cond_9
    invoke-direct {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1155
    :cond_a
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    goto :goto_1

    .line 1180
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "xDist":I
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->resetTouchState()V

    .line 1182
    iget v5, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/sviewcover/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 1188
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1189
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 746
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v1

    .line 753
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 754
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 757
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 759
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 760
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 761
    invoke-virtual {p0, v6}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 762
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 763
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 764
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 765
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 768
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 770
    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 760
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 775
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/sviewcover/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->updateCurrentPageScroll()V

    .line 777
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/sviewcover/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 778
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/sviewcover/PagedView;->mFirstLayout:Z

    .line 781
    :cond_4
    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 783
    iget v9, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    iget v10, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/sviewcover/PagedView;->swapPages(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_1

    .line 627
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 737
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 634
    .local v18, "parent":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 635
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 636
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 637
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 640
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 641
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 642
    .local v16, "maxSize":I
    const/high16 v27, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 643
    .local v20, "parentWidthSize":I
    move/from16 v19, v16

    .line 644
    .local v19, "parentHeightSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 645
    .local v22, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 646
    .local v21, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 648
    if-eqz v25, :cond_2

    if-nez v11, :cond_3

    .line 649
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 654
    :cond_3
    if-lez v26, :cond_4

    if-gtz v12, :cond_5

    .line 655
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 664
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 665
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 674
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v5

    .line 675
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v5, :cond_8

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 678
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 681
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 682
    const/high16 v9, -0x80000000

    .line 688
    .local v9, "childWidthMode":I
    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 689
    const/high16 v7, -0x80000000

    .line 694
    .local v7, "childHeightMode":I
    :goto_3
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 696
    .local v8, "childWidthMeasureSpec":I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 699
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 675
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 684
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "childWidthMode":I
    goto :goto_2

    .line 691
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childHeightMode":I
    goto :goto_3

    .line 701
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->setMeasuredDimension(II)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->invalidateCachedOffsets()V

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->setCurrentPage(I)V

    .line 711
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mChildCountOnLastMeasure:I

    .line 713
    if-lez v5, :cond_a

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 723
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 724
    .local v17, "offset":I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 726
    .local v23, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->setPageSpacing(I)V

    .line 730
    .end local v17    # "offset":I
    .end local v23    # "spacing":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->updateScrollingIndicatorPosition()V

    .line 732
    if-lez v5, :cond_b

    .line 733
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 735
    :cond_b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    .prologue
    .line 2793
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    .prologue
    .line 2797
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 981
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 982
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    .line 986
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 987
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 988
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 990
    :goto_1
    return v2

    .line 984
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 990
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2210
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    .line 2211
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/PagedView;->mIsReordering:Z

    .line 2214
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getVisiblePages([I)V

    .line 2215
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/sviewcover/PagedView;->boundByReorderablePages(Z[I)V

    .line 2216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2217
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_1

    .line 2218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2224
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    .line 2225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v28

    if-gtz v28, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v28

    .line 1673
    :goto_0
    return v28

    .line 1385
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1387
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1389
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    .line 1673
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v28, 0x1

    goto :goto_0

    .line 1395
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-nez v28, :cond_2

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1400
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->pageBeginMoving()V

    .line 1408
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1409
    const-string v28, "onTouch(): DOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 1405
    :cond_3
    const/16 v28, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->setTouchState(I)V

    goto :goto_2

    .line 1414
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1418
    .local v21, "pointerIndex":I
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    goto :goto_0

    .line 1420
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    .line 1421
    .local v27, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    move/from16 v29, v0

    add-float v28, v28, v29

    sub-float v7, v28, v27

    .line 1423
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    .line 1428
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_7

    .line 1429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchX:F

    move/from16 v28, v0

    add-float v28, v28, v7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mTouchX:F

    .line 1430
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x4e6e6b28    # 1.0E9f

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mSmoothingTime:F

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1440
    :goto_3
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 1441
    float-to-int v0, v7

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v7, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1434
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mDeferScrollUpdate:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 1435
    float-to-int v0, v7

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->scrollBy(II)V

    goto :goto_3

    .line 1438
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    goto :goto_3

    .line 1443
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1445
    .end local v7    # "deltaX":F
    .end local v21    # "pointerIndex":I
    .end local v27    # "x":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 1448
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1453
    .local v22, "pt":[F
    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    .line 1454
    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1459
    .local v8, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v6, v0

    .line 1461
    .local v6, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v15, v0

    .line 1463
    .local v15, "leftBufferEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1467
    .local v24, "rightBufferEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1469
    .local v13, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/sec/android/sviewcover/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    move/from16 v20, v0

    .line 1479
    .local v20, "parentX":F
    const/16 v17, -0x1

    .line 1480
    .local v17, "pageIndexToSnapTo":I
    int-to-float v0, v15

    move/from16 v28, v0

    cmpg-float v28, v20, v28

    if-gez v28, :cond_a

    if-lez v8, :cond_a

    .line 1481
    add-int/lit8 v17, v8, -0x1

    .line 1486
    :cond_9
    :goto_4
    move/from16 v18, v17

    .line 1487
    .local v18, "pageUnderPointIndex":I
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    if-nez v13, :cond_b

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v28, v29

    .line 1490
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->boundByReorderablePages(Z[I)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v0, v18

    move/from16 v1, v28

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverIndex:I

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1494
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverIndex:I

    .line 1495
    new-instance v28, Lcom/sec/android/sviewcover/PagedView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/sviewcover/PagedView$1;-><init>(Lcom/sec/android/sviewcover/PagedView;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1482
    .end local v18    # "pageUnderPointIndex":I
    :cond_a
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v20, v28

    if-lez v28, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v8, v0, :cond_9

    .line 1483
    add-int/lit8 v17, v8, 0x1

    goto/16 :goto_4

    .line 1548
    .restart local v18    # "pageUnderPointIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1549
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1551
    .end local v6    # "bufferSize":I
    .end local v8    # "dragViewIndex":I
    .end local v13    # "isHoveringOverDelete":Z
    .end local v15    # "leftBufferEdge":I
    .end local v17    # "pageIndexToSnapTo":I
    .end local v18    # "pageUnderPointIndex":I
    .end local v20    # "parentX":F
    .end local v22    # "pt":[F
    .end local v24    # "rightBufferEdge":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1552
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1557
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1558
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/sviewcover/PagedView;->mActivePointerId:I

    .line 1559
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1561
    .restart local v21    # "pointerIndex":I
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1563
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    .line 1564
    .restart local v27    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 1565
    .local v25, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1566
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1567
    .local v26, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    move/from16 v28, v0

    sub-float v28, v27, v28

    move/from16 v0, v28

    float-to-int v7, v0

    .line 1568
    .local v7, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v19

    .line 1569
    .local v19, "pageWidth":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ecccccd    # 0.4f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_14

    const/4 v14, 0x1

    .line 1572
    .local v14, "isSignificantMove":Z
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionXRemainder:F

    move/from16 v30, v0

    add-float v29, v29, v30

    sub-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    .line 1574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    const/high16 v29, 0x41c80000    # 25.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_15

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mFlingThresholdVelocity:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    const/4 v12, 0x1

    .line 1580
    .local v12, "isFling":Z
    :goto_6
    const/16 v23, 0x0

    .line 1581
    .local v23, "returnToOriginalPage":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ea8f5c3    # 0.33f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_f

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->signum(F)F

    move-result v28

    int-to-float v0, v7

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->signum(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_f

    if-eqz v12, :cond_f

    .line 1583
    const/16 v23, 0x1

    .line 1590
    :cond_f
    if-eqz v14, :cond_10

    if-lez v7, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    if-eqz v12, :cond_17

    if-lez v26, :cond_17

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    if-lez v28, :cond_17

    .line 1592
    if-nez v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_16

    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .line 1594
    .local v9, "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPageWithVelocity(II)V

    .line 1656
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v9    # "finalPage":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v26    # "velocityX":I
    .end local v27    # "x":F
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1658
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1569
    .restart local v5    # "activePointerId":I
    .restart local v7    # "deltaX":I
    .restart local v19    # "pageWidth":I
    .restart local v21    # "pointerIndex":I
    .restart local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v26    # "velocityX":I
    .restart local v27    # "x":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 1574
    .restart local v14    # "isSignificantMove":Z
    :cond_15
    const/4 v12, 0x0

    goto :goto_6

    .line 1592
    .restart local v12    # "isFling":Z
    .restart local v23    # "returnToOriginalPage":Z
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, -0x1

    goto :goto_7

    .line 1595
    :cond_17
    if-eqz v14, :cond_18

    if-gez v7, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    if-eqz v12, :cond_1b

    if-gez v26, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    .line 1598
    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .line 1599
    .restart local v9    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1598
    .end local v9    # "finalPage":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, 0x1

    goto :goto_9

    .line 1601
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1603
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v19    # "pageWidth":I
    .end local v21    # "pointerIndex":I
    .end local v23    # "returnToOriginalPage":Z
    .end local v25    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v26    # "velocityX":I
    .end local v27    # "x":F
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    .line 1607
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1608
    .local v16, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    .line 1609
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1611
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1613
    .end local v16    # "nextPage":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1618
    .restart local v16    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    .line 1619
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 1621
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 1623
    .end local v16    # "nextPage":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 1626
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    .line 1630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    .line 1631
    .restart local v22    # "pt":[F
    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    .line 1632
    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1634
    const/4 v11, 0x0

    .line 1637
    .local v11, "handledFling":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1638
    .local v10, "flingToDeleteVector":Landroid/graphics/PointF;
    if-eqz v10, :cond_21

    .line 1639
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/sviewcover/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1640
    const/4 v11, 0x1

    .line 1643
    :cond_21
    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1645
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->onDropToDelete()V

    goto/16 :goto_8

    .line 1649
    .end local v10    # "flingToDeleteVector":Landroid/graphics/PointF;
    .end local v11    # "handledFling":Z
    .end local v22    # "pt":[F
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/sviewcover/PagedView;->mWarpPageExposed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->isAnimatingWarpPage()Z

    move-result v28

    if-nez v28, :cond_23

    .line 1650
    const-string v28, "unhandled tap"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    .line 1652
    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1662
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->snapToDestination()V

    .line 1665
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sviewcover/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1669
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/sviewcover/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 0
    .param p1, "newTouchState"    # I

    .prologue
    .line 1212
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1689
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1365
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->dampedOverScroll(F)V

    .line 1366
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onPageBeginWarp()V

    .line 496
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 497
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->swapPages(II)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onPageBeginMoving()V

    .line 502
    :cond_1
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsPageMoving:Z

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 510
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->swapPages(II)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onPageEndWarp()V

    .line 513
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->resetPageWarp()V

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onPageEndMoving()V

    .line 517
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2659
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2676
    :goto_0
    return v0

    .line 2662
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2676
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2664
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2665
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->scrollRight()V

    goto :goto_0

    .line 2670
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2671
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2662
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1755
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1756
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->indexToPage(I)I

    move-result v0

    .line 1757
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1758
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    .line 1760
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->indexToPage(I)I

    move-result v0

    .line 971
    .local v0, "page":I
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 972
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    .line 973
    const/4 v1, 0x1

    .line 975
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 788
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 553
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->scrollTo(II)V

    .line 554
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1962
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 558
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mUnboundedScrollX:I

    .line 560
    if-gez p1, :cond_2

    .line 561
    invoke-super {p0, v4, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 562
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 563
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->overScroll(F)V

    .line 575
    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mTouchX:F

    .line 576
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mSmoothingTime:F

    .line 579
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 581
    .local v0, "p":[F
    aget v1, v0, v4

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 582
    aget v1, v0, v5

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    .line 583
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 585
    .end local v0    # "p":[F
    :cond_1
    return-void

    .line 565
    :cond_2
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    .line 566
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 567
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    .line 568
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->overScroll(F)V

    goto :goto_0

    .line 571
    :cond_3
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mOverScrollX:I

    .line 572
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->notifyPageSwitching(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    .line 467
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->updateCurrentPageScroll()V

    .line 469
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->updateScrollingIndicator()V

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->notifyPageSwitched()V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mIsDataReady:Z

    .line 406
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 331
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->requestLayout()V

    .line 362
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v0

    .line 546
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 547
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 476
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2592
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 740
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSpacing:I

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidateCachedOffsets()V

    .line 742
    return-void
.end method

.method public setPageSwitchListener(Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    .line 395
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwitchListener:Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 398
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 366
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 367
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/sviewcover/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 369
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    .line 370
    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 373
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2042
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicator:Z

    .line 2043
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2044
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/PagedView;->mShouldShowScrollIndicator:Z

    .line 2048
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2049
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2051
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->updateScrollingIndicatorPosition()V

    .line 2052
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2053
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2054
    if-eqz p1, :cond_2

    .line 2055
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2057
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2058
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2059
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 3

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 1817
    .local v0, "newPage":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1818
    const-string v2, "snapToDestination"

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sec/android/sviewcover/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1820
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(II)V

    .line 1821
    return-void

    .line 1818
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(II)V

    .line 1890
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(IIZ)V

    .line 1897
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1911
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(IIIZ)V

    .line 1912
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1915
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    if-ne p1, v0, :cond_5

    .line 1916
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    .line 1922
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onPageEndWarp()V

    .line 1924
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->resetPageWarp()V

    .line 1927
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->notifyPageSwitching(I)V

    .line 1928
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1929
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1

    .line 1931
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1934
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->pageBeginMoving()V

    .line 1935
    invoke-virtual {p0, p3}, Lcom/sec/android/sviewcover/PagedView;->awakenScrollBars(I)Z

    .line 1936
    if-eqz p4, :cond_6

    .line 1937
    const/4 p3, 0x0

    .line 1942
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1943
    :cond_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/sviewcover/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1945
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->notifyPageSwitched()V

    .line 1948
    if-eqz p4, :cond_4

    .line 1949
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->computeScroll()V

    .line 1952
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/PagedView;->mForceScreenScrolled:Z

    .line 1953
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->invalidate()V

    .line 1954
    return-void

    .line 1919
    .end local v6    # "focusedChild":Landroid/view/View;
    :cond_5
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mNextPage:I

    goto :goto_0

    .line 1938
    .restart local v6    # "focusedChild":Landroid/view/View;
    :cond_6
    if-nez p3, :cond_2

    .line 1939
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_1
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1899
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1904
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1905
    .local v1, "newX":I
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mUnboundedScrollX:I

    .line 1906
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1907
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(IIIZ)V

    .line 1908
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 1892
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(IIZ)V

    .line 1893
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1848
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getViewportWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 1851
    .local v4, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->isWarping()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1852
    const-string v7, "snapToPageWithVelocity"

    iget v8, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    if-eq v8, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v7, v6}, Lcom/sec/android/sviewcover/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1858
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1859
    .local v5, "newX":I
    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1860
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1862
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/sviewcover/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    .line 1865
    invoke-direct {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageSnapDuration()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(II)V

    .line 1886
    :goto_0
    return-void

    .line 1873
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1874
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1877
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1878
    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1883
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1885
    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/android/sviewcover/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startPageWarp(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 2776
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2777
    iget v0, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/PagedView;->mPageSwapIndex:I

    .line 2779
    :cond_0
    iput p1, p0, Lcom/sec/android/sviewcover/PagedView;->mPageWarpIndex:I

    .line 2780
    return-void
.end method

.method public startReordering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2260
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2261
    .local v0, "dragViewIndex":I
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2262
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2263
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/sviewcover/PagedView;->boundByReorderablePages(Z[I)V

    .line 2264
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/PagedView;->mReorderingStarted:Z

    .line 2267
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_1

    .line 2269
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2271
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    .line 2273
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->onStartReordering()V

    .line 2277
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public stopPageWarp()V
    .locals 0

    .prologue
    .line 2789
    return-void
.end method

.method swapPages(II)V
    .locals 5
    .param p1, "indexA"    # I
    .param p2, "indexB"    # I

    .prologue
    .line 2765
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2766
    .local v1, "viewA":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/sviewcover/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2767
    .local v2, "viewB":Landroid/view/View;
    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2768
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    .line 2769
    .local v0, "deltaX":I
    neg-int v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2770
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2772
    .end local v0    # "deltaX":I
    :cond_0
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 443
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->getChildOffset(I)I

    move-result v1

    .line 444
    .local v1, "offset":I
    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 445
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 446
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/sviewcover/PagedView;->scrollTo(II)V

    .line 447
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 448
    iget-object v3, p0, Lcom/sec/android/sviewcover/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 449
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    .prologue
    .line 351
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 352
    .local v0, "x":F
    iget v2, p0, Lcom/sec/android/sviewcover/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 353
    .local v1, "y":F
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 354
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2321
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2322
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    .line 2325
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2326
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2327
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2330
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/sviewcover/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/sviewcover/PagedView$8;-><init>(Lcom/sec/android/sviewcover/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2357
    iget-object v0, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2364
    :cond_2
    :goto_0
    return v0

    .line 2360
    :cond_3
    if-eqz p1, :cond_2

    .line 2361
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected zoomOut()Z
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2170
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2171
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 2175
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2176
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/sec/android/sviewcover/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2177
    iget-object v2, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/sec/android/sviewcover/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2180
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/sviewcover/PagedView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/PagedView$5;-><init>(Lcom/sec/android/sviewcover/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2197
    iget-object v1, p0, Lcom/sec/android/sviewcover/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2200
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
