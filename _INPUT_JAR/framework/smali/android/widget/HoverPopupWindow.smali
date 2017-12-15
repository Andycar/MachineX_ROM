.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$QuintEaseOut;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 8
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 104
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 112
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 114
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 164
    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 165
    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 166
    iput v4, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 184
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 186
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 188
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 190
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 192
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 194
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 196
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 198
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 204
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 208
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    .line 233
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    .line 236
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    .line 238
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 240
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 242
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 244
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    .line 246
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 252
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 254
    iput v1, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    .line 256
    iput v3, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    .line 258
    iput v4, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    .line 260
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 262
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 264
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    .line 266
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 268
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    .line 270
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    .line 272
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    .line 274
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    .line 276
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 278
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 284
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 304
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 306
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 308
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 309
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 311
    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 390
    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 404
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HoverPopupWindow;F)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 78
    iput p1, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HoverPopupWindow;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/HoverPopupWindow;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/HoverPopupWindow;F)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 78
    iput p1, p0, Landroid/widget/HoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HoverPopupWindow;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HoverPopupWindow;II)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 28
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1710
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1711
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1712
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 1713
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 1715
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1716
    .local v7, "posX":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1722
    .local v8, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v5, v0, 0xf0f

    .line 1723
    .local v5, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    const v21, 0xf0f0

    and-int v14, v20, v21

    .line 1725
    .local v14, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501fb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1727
    .local v13, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v20, v0

    if-nez v20, :cond_256

    .line 1729
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_23e

    .line 1730
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v7, v20, v21

    .line 1731
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v8, v20, v21

    .line 1816
    :cond_78
    :goto_78
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2f6

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1818
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1819
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .local v16, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    .line 1820
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1821
    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_2f3

    const/4 v6, 0x1

    .line 1823
    .local v6, "isSystemUiVisible":Z
    :goto_bd
    const/4 v12, 0x0

    .line 1825
    .local v12, "statusBarHeight":I
    if-eqz v6, :cond_d1

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1828
    :cond_d1
    add-int v20, v8, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_101

    .line 1830
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_101

    .line 1831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_101

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1833
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    .line 1861
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_101
    :goto_101
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-nez v20, :cond_475

    .line 1863
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_39a

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1865
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez v7, :cond_380

    .line 1866
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1869
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1870
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    .line 1955
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_158
    :goto_158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7b0

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1957
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1958
    .restart local v10    # "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    .line 1959
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1960
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_651

    const/4 v6, 0x1

    .line 1962
    .restart local v6    # "isSystemUiVisible":Z
    :goto_19d
    const/4 v12, 0x0

    .line 1964
    .restart local v12    # "statusBarHeight":I
    if-eqz v6, :cond_1b1

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1967
    :cond_1b1
    if-ge v8, v12, :cond_6d8

    .line 1970
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_6ac

    .line 1971
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_654

    .line 1972
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1973
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    .line 1974
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2114
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e6
    :goto_1e6
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 2115
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isScaleWindow()Z

    move-result v20

    if-eqz v20, :cond_23d

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 2120
    .local v18, "wm":Landroid/view/WindowManager;
    if-eqz v18, :cond_23d

    .line 2121
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2122
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .line 2124
    .local v19, "yOffset":I
    if-lez v19, :cond_23d

    .line 2125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 2131
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v18    # "wm":Landroid/view/WindowManager;
    .end local v19    # "yOffset":I
    :cond_23d
    return-void

    .line 1732
    :cond_23e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_78

    .line 1733
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1734
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_78

    .line 1738
    :cond_256
    sparse-switch v5, :sswitch_data_af2

    .line 1776
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1781
    :goto_25d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    .line 1785
    sparse-switch v14, :sswitch_data_b18

    .line 1803
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1808
    :goto_26c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    goto/16 :goto_78

    .line 1740
    :sswitch_276
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    .line 1741
    goto :goto_25d

    .line 1744
    :sswitch_27f
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1745
    goto :goto_25d

    .line 1748
    :sswitch_284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    sub-int v20, v20, p3

    add-int v7, v20, v13

    .line 1749
    goto :goto_25d

    .line 1752
    :sswitch_28d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1753
    goto :goto_25d

    .line 1756
    :sswitch_296
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 1757
    goto :goto_25d

    .line 1760
    :sswitch_29b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    .line 1761
    goto :goto_25d

    .line 1764
    :sswitch_2a4
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 1765
    goto :goto_25d

    .line 1768
    :sswitch_2a9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1769
    goto :goto_25d

    .line 1772
    :sswitch_2b2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    move/from16 v20, v0

    div-int/lit8 v21, p3, 0x2

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 1773
    goto :goto_25d

    .line 1787
    :sswitch_2c5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1788
    goto :goto_26c

    .line 1790
    :sswitch_2ce
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 1791
    goto :goto_26c

    .line 1793
    :sswitch_2d3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v20

    div-int/lit8 v21, p4, 0x2

    sub-int v8, v20, v21

    .line 1794
    goto :goto_26c

    .line 1796
    :sswitch_2dc
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1797
    goto :goto_26c

    .line 1799
    :sswitch_2e5
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1800
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_26c

    .line 1821
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v10    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2f3
    const/4 v6, 0x0

    goto/16 :goto_bd

    .line 1837
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "root":Landroid/view/View;
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2f6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_101

    .line 1838
    add-int v20, v8, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_101

    .line 1839
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_101

    .line 1840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_101

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1842
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_35a

    .line 1843
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1844
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    goto/16 :goto_101

    .line 1847
    :cond_35a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int v20, v20, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_101

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    div-int/lit8 v21, p3, 0x2

    sub-int v7, v20, v21

    .line 1849
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v20, v0

    add-int v7, v7, v20

    goto/16 :goto_101

    .line 1872
    :cond_380
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1873
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_158

    .line 1875
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_39a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1877
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    if-gtz v20, :cond_42b

    .line 1878
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1880
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1883
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1885
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1886
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_158

    .line 1888
    :cond_42b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v7

    add-int v20, v20, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_455

    .line 1889
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_158

    .line 1891
    :cond_455
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    if-lez v20, :cond_158

    .line 1892
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_158

    .line 1904
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_475
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_518

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1906
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4d1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1907
    .local v3, "anchorView":Landroid/view/View;
    :goto_49d
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1908
    .local v15, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_158

    .line 1909
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .line 1911
    .local v11, "scaleFactor":Landroid/graphics/PointF;
    if-gez v7, :cond_4d6

    .line 1912
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1915
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1916
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_158

    .line 1906
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4d1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_49d

    .line 1918
    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4d6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1919
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_158

    .line 1922
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_518
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1924
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5a7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1925
    .restart local v3    # "anchorView":Landroid/view/View;
    :goto_540
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1926
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_158

    .line 1927
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    .line 1929
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    if-gez v20, :cond_5ac

    .line 1930
    const/4 v7, 0x0

    .line 1933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1934
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1935
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_158

    .line 1924
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_5a7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_540

    .line 1938
    .restart local v3    # "anchorView":Landroid/view/View;
    .restart local v11    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_5ac
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v21, v7, p3

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5f6

    .line 1939
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v20, v20, p3

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto/16 :goto_158

    .line 1940
    :cond_5f6
    if-gez v7, :cond_63d

    .line 1941
    const/4 v7, 0x0

    .line 1943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_158

    .line 1944
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p3

    const/high16 v21, 0x41000000    # 8.0f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1945
    const/high16 v20, 0x41000000    # 8.0f

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v20

    add-int v7, v7, v20

    goto/16 :goto_158

    .line 1948
    :cond_63d
    add-int v20, v7, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_158

    .line 1949
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    sub-int v7, v20, p3

    goto/16 :goto_158

    .line 1960
    .end local v3    # "anchorView":Landroid/view/View;
    .end local v11    # "scaleFactor":Landroid/graphics/PointF;
    .end local v15    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v10    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_651
    const/4 v6, 0x0

    goto/16 :goto_19d

    .line 1976
    .restart local v6    # "isSystemUiVisible":Z
    .restart local v12    # "statusBarHeight":I
    :cond_654
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_683

    .line 1977
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1979
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_1e6

    .line 1983
    :cond_683
    move v8, v12

    .line 1984
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 1985
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 1990
    :cond_6ac
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_1e6

    .line 1993
    :cond_6d8
    add-int v20, v8, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_782

    .line 1995
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_75a

    .line 1996
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_1e6

    .line 1997
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 2000
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 2002
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2003
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 2007
    :cond_75a
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    goto/16 :goto_1e6

    .line 2012
    :cond_782
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_1e6

    .line 2013
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2014
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 2017
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v12    # "statusBarHeight":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7b0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 2022
    .restart local v10    # "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v17, v16

    .line 2023
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 2024
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x404

    move/from16 v20, v0

    if-nez v20, :cond_87e

    const/4 v6, 0x1

    .line 2026
    .restart local v6    # "isSystemUiVisible":Z
    :goto_7e7
    const/4 v12, 0x0

    .line 2028
    .restart local v12    # "statusBarHeight":I
    if-eqz v6, :cond_7fb

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2031
    :cond_7fb
    move v9, v12

    .line 2032
    .local v9, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2033
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v12, :cond_815

    .line 2034
    const/4 v12, 0x0

    .line 2036
    :cond_815
    if-gez v8, :cond_956

    .line 2038
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_92e

    .line 2039
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_881

    .line 2040
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2041
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_86d

    .line 2042
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    add-int v8, v8, v20

    .line 2044
    :cond_86d
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_1e6

    .line 2024
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "isSystemUiVisible":Z
    .end local v9    # "realStatusBarHeight":I
    .end local v12    # "statusBarHeight":I
    :cond_87e
    const/4 v6, 0x0

    goto/16 :goto_7e7

    .line 2046
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "isSystemUiVisible":Z
    .restart local v9    # "realStatusBarHeight":I
    .restart local v12    # "statusBarHeight":I
    :cond_881
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8ba

    .line 2047
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2049
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_1e6

    .line 2052
    :cond_8ba
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v20, v20, p4

    sub-int v20, v20, v9

    if-lez v20, :cond_8d8

    .line 2054
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_1e6

    .line 2055
    :cond_8d8
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    if-lez v20, :cond_905

    .line 2057
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2058
    const-string v20, "HoverPopupWindow"

    const-string v21, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_1e6

    .line 2061
    :cond_905
    move v8, v12

    .line 2062
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2063
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 2067
    :cond_92e
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_1e6

    .line 2070
    :cond_956
    add-int v20, v8, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a9e

    .line 2071
    const/16 v20, 0x5050

    move/from16 v0, v20

    if-ne v14, v0, :cond_a68

    .line 2072
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p4

    if-lt v0, v1, :cond_9e2

    .line 2073
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 2074
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 2076
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 2078
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2079
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 2083
    :cond_9e2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v8

    add-int v20, v20, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1e6

    .line 2084
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8ac

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 2085
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v20, p4

    .line 2086
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v20, v0

    sub-int v8, v8, v20

    .line 2087
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e6

    .line 2089
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2090
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 2096
    :cond_a68
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, p4

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto/16 :goto_1e6

    .line 2100
    :cond_a9e
    const/16 v20, 0x3030

    move/from16 v0, v20

    if-ne v14, v0, :cond_1e6

    .line 2101
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2102
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2103
    if-ge v8, v12, :cond_ad2

    .line 2104
    add-int v20, v8, p4

    add-int v20, v20, v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_ad2

    .line 2105
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 2106
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2109
    :cond_ad2
    const-string v20, "HoverPopupWindow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e6

    .line 1738
    :sswitch_data_af2
    .sparse-switch
        0x1 -> :sswitch_28d
        0x3 -> :sswitch_27f
        0x5 -> :sswitch_29b
        0x101 -> :sswitch_2a9
        0x103 -> :sswitch_284
        0x105 -> :sswitch_296
        0x201 -> :sswitch_2b2
        0x303 -> :sswitch_276
        0x505 -> :sswitch_2a4
    .end sparse-switch

    .line 1785
    :sswitch_data_b18
    .sparse-switch
        0x10 -> :sswitch_2d3
        0x30 -> :sswitch_2ce
        0x50 -> :sswitch_2dc
        0x3030 -> :sswitch_2c5
        0x5050 -> :sswitch_2e5
    .end sparse-switch
.end method

.method private dismissPopup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2648
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 2651
    :cond_d
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2652
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2653
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 2654
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 2655
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 2658
    :cond_22
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    .line 2661
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2662
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 2664
    :cond_2d
    return-void
.end method

.method private getStateHashCode()I
    .registers 5

    .prologue
    .line 2715
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 2716
    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_50

    .line 2718
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2725
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2726
    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2727
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2730
    .end local v1    # "location":[I
    :cond_50
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 983
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 987
    :goto_a
    return-object v0

    .line 984
    :cond_b
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 985
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 987
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private initCoverManager()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 471
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 472
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 473
    const-string v0, "HoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1c
    return-void
.end method

.method private isViewCoverClose()Z
    .registers 5

    .prologue
    .line 711
    const/4 v1, 0x1

    .line 713
    .local v1, "isCoverOpen":Z
    :try_start_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v2, :cond_f

    .line 714
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    .line 718
    :cond_f
    :goto_f
    if-nez v1, :cond_1c

    const/4 v2, 0x1

    :goto_12
    return v2

    .line 715
    :catch_13
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HoverPopupWindow"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 718
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private makeToolTipContentView()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 1218
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1220
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1222
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1233
    :goto_10
    return-void

    .line 1225
    :cond_11
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_37

    .line 1226
    :cond_1d
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1227
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090061

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1228
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1229
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 1231
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_37
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method private playSoundAndHapticFeedback()V
    .registers 4

    .prologue
    .line 994
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 995
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 996
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 997
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 999
    :cond_20
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .registers 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2696
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3a

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private resetTimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2734
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    .line 2735
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2736
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2742
    :cond_12
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2744
    :cond_1f
    return-void
.end method

.method private setAnimator(II)V
    .registers 8
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 493
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_c

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_35

    .line 494
    :cond_c
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 501
    :goto_19
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/HoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 502
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 524
    return-void

    .line 495
    :cond_35
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_3d

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_4b

    .line 496
    :cond_3d
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_19

    .line 498
    :cond_4b
    new-array v0, v1, [F

    fill-array-data v0, :array_58

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_19

    nop

    :array_58
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1170
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_3c

    .line 1194
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1199
    :cond_8
    :goto_8
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_13

    .line 1200
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 1203
    :cond_13
    return-void

    .line 1172
    :pswitch_14
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_8

    .line 1175
    :pswitch_17
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_8

    .line 1178
    :pswitch_1b
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_8

    .line 1181
    :pswitch_1f
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_8

    .line 1182
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_8

    .line 1183
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1185
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :try_start_2d
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1186
    .local v2, "v":Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_36
    .catch Landroid/view/InflateException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_8

    .line 1187
    .end local v2    # "v":Landroid/view/View;
    :catch_37
    move-exception v0

    .line 1188
    .local v0, "ie":Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_8

    .line 1170
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method private showPopup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1104
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 1107
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1126
    :goto_c
    return-void

    .line 1109
    :cond_d
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-ne v0, v2, :cond_19

    .line 1110
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_c

    .line 1113
    :cond_19
    invoke-virtual {p0, v2}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1116
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_25

    .line 1117
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1120
    :cond_25
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 1121
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 1122
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_c
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .registers 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v5, 0x0

    .line 2149
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_6

    .line 2202
    :cond_5
    :goto_5
    return-void

    .line 2155
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 2157
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_11

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-eqz v1, :cond_5

    .line 2163
    :cond_11
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_3e

    .line 2164
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2179
    :goto_20
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2185
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2186
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 2165
    :cond_3e
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v1, :cond_4e

    .line 2166
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_20

    .line 2168
    :cond_4e
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_65

    .line 2170
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2171
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_65

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_65

    .line 2172
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2176
    :cond_65
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_20

    .line 2189
    :cond_6d
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_8c

    .line 2192
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_5

    .line 2195
    :cond_8c
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .registers 56
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_7

    .line 1699
    :cond_6
    :goto_6
    return-void

    .line 1249
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1250
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 1251
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1252
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1254
    if-eqz p1, :cond_41c

    move-object/from16 v14, p1

    .line 1255
    .local v14, "anchorView":Landroid/view/View;
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 1258
    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 1259
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 1260
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 1261
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1262
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1265
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 1267
    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v40

    .line 1271
    .local v40, "rootview":Landroid/view/View;
    const/16 v34, 0x0

    .line 1272
    .local v34, "isRootViewFullScreen":Z
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getWidth()I

    move-result v42

    .line 1273
    .local v42, "rootviewWidth":I
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getHeight()I

    move-result v41

    .line 1275
    .local v41, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v42

    if-ne v0, v4, :cond_6a

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v41

    if-ne v0, v4, :cond_6a

    .line 1277
    const/16 v34, 0x1

    .line 1281
    :cond_6a
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_422

    .line 1285
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1286
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1287
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1289
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1317
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_aa
    :goto_aa
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_112

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_112

    .line 1318
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v39

    .line 1319
    .local v39, "root":Landroid/view/View;
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    .line 1321
    .local v48, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v48

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_112

    move-object/from16 v50, v48

    .line 1322
    check-cast v50, Landroid/view/WindowManager$LayoutParams;

    .line 1323
    .local v50, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v50

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_474

    const/16 v35, 0x1

    .line 1325
    .local v35, "isSystemUiVisible":Z
    :goto_db
    const/16 v46, 0x0

    .line 1327
    .local v46, "statusBarHeight":I
    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f7

    if-eqz v35, :cond_f7

    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    .line 1332
    :cond_f7
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1333
    move/from16 v0, v46

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1334
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1335
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1341
    .end local v35    # "isSystemUiVisible":Z
    .end local v39    # "root":Landroid/view/View;
    .end local v46    # "statusBarHeight":I
    .end local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_112
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1342
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1344
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 1345
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    .line 1346
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    .line 1360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_478

    .line 1361
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .line 1363
    .local v49, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 1383
    .local v30, "heightMeasureSpec":I
    :goto_163
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1384
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 1386
    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 1388
    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1392
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1394
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 1399
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v37, v0

    .line 1400
    .local v37, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v38, v0

    .line 1401
    .local v38, "posY":I
    const/4 v15, 0x0

    .line 1409
    .local v15, "canDraw":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b9

    .line 1410
    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1db

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_1db

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v38

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_1dc

    .line 1412
    :cond_1db
    const/4 v15, 0x1

    .line 1420
    :cond_1dc
    :goto_1dc
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_1e8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_770

    :cond_1e8
    if-eqz v15, :cond_770

    .line 1421
    const/16 v33, 0x1

    .line 1423
    .local v33, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v36

    .line 1426
    .local v36, "marginForHoverRing":I
    const/16 v16, 0x0

    .line 1427
    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .line 1428
    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4cf

    .line 1429
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1431
    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1441
    :cond_21e
    :goto_21e
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    .line 1444
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v38

    if-le v0, v4, :cond_4fe

    .line 1445
    const/16 v33, 0x0

    .line 1451
    :goto_22e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_261

    .line 1452
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 1454
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1459
    :cond_261
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_282

    .line 1460
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_273

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_502

    .line 1461
    :cond_273
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 1470
    :cond_282
    :goto_282
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1471
    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_513

    .line 1472
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    :goto_29c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_2c0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c0

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1485
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2d5

    .line 1486
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 1489
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1493
    sub-int v4, v16, v37

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 1494
    .local v18, "containerPaddingLeft":I
    add-int v4, v37, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1495
    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .line 1496
    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .line 1497
    .local v17, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_533

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_533

    .line 1498
    if-eqz v33, :cond_521

    .line 1499
    move/from16 v17, v36

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 1530
    :goto_315
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_589

    .line 1531
    if-eqz v33, :cond_585

    .line 1532
    move/from16 v37, v16

    .line 1548
    :cond_320
    :goto_320
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v31, v4, v5

    .line 1549
    .local v31, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v32, v4, v5

    .line 1560
    .local v32, "hoverPointYonContainer":I
    if-eqz v33, :cond_63e

    .line 1563
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    .line 1564
    .local v47, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v47, :cond_3c9

    .line 1565
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    .line 1566
    .local v43, "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1567
    .local v29, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_361

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5fe

    .line 1568
    :cond_361
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_59c

    .line 1569
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1570
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1576
    :goto_3a5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5d8

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 1600
    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    :cond_3c9
    :goto_3c9
    div-int/lit8 v4, v24, 0x2

    add-int v44, v18, v4

    .line 1601
    .local v44, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v45, v22, v4

    .line 1602
    .local v45, "starty":I
    move/from16 v27, v31

    .line 1603
    .local v27, "endx":I
    move/from16 v28, v32

    .line 1605
    .local v28, "endy":I
    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_3dd

    .line 1677
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "endx":I
    .end local v28    # "endy":I
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v33    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v44    # "startx":I
    .end local v45    # "starty":I
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_3dd
    :goto_3dd
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1678
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1685
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_3f5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_7fd

    .line 1687
    :cond_3f5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x10304e6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1693
    :goto_3ff
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_6

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_6

    .line 1695
    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_6

    .line 1254
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v30    # "heightMeasureSpec":I
    .end local v34    # "isRootViewFullScreen":Z
    .end local v37    # "posX":I
    .end local v38    # "posY":I
    .end local v40    # "rootview":Landroid/view/View;
    .end local v41    # "rootviewHeight":I
    .end local v42    # "rootviewWidth":I
    .end local v49    # "widthMeasureSpec":I
    :cond_41c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_23

    .line 1295
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v34    # "isRootViewFullScreen":Z
    .restart local v40    # "rootview":Landroid/view/View;
    .restart local v41    # "rootviewHeight":I
    .restart local v42    # "rootviewWidth":I
    :cond_422
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1296
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1299
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1307
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_aa

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_aa

    .line 1308
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1309
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1310
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1311
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_aa

    .line 1323
    .restart local v39    # "root":Landroid/view/View;
    .restart local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_474
    const/16 v35, 0x0

    goto/16 :goto_db

    .line 1366
    .end local v39    # "root":Landroid/view/View;
    .end local v48    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v50    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_478
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_4a2

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .line 1374
    .restart local v49    # "widthMeasureSpec":I
    :goto_48c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_4ad

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_163

    .line 1370
    .end local v30    # "heightMeasureSpec":I
    .end local v49    # "widthMeasureSpec":I
    :cond_4a2
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    .restart local v49    # "widthMeasureSpec":I
    goto :goto_48c

    .line 1378
    :cond_4ad
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30    # "heightMeasureSpec":I
    goto/16 :goto_163

    .line 1414
    .restart local v15    # "canDraw":Z
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v37    # "posX":I
    .restart local v38    # "posY":I
    :cond_4b9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1dc

    .line 1415
    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_4cc

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_1dc

    .line 1416
    :cond_4cc
    const/4 v15, 0x1

    goto/16 :goto_1dc

    .line 1434
    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v33    # "isPopupAboveHorizontal":Z
    .restart local v36    # "marginForHoverRing":I
    :cond_4cf
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21e

    .line 1435
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1437
    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_21e

    .line 1447
    :cond_4fe
    const/16 v33, 0x1

    goto/16 :goto_22e

    .line 1464
    :cond_502
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_282

    .line 1475
    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_513
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1476
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_29c

    .line 1503
    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_521
    move/from16 v20, v36

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_315

    .line 1508
    :cond_533
    if-eqz v33, :cond_55e

    .line 1509
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_54e

    .line 1510
    move/from16 v17, v36

    .line 1515
    :cond_53e
    :goto_53e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_315

    .line 1511
    :cond_54e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_53e

    .line 1512
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v36

    add-int v5, v38, v22

    sub-int v17, v4, v5

    goto :goto_53e

    .line 1518
    :cond_55e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_577

    .line 1519
    move/from16 v20, v36

    .line 1523
    :cond_567
    :goto_567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_315

    .line 1520
    :cond_577
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_567

    .line 1521
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v36

    sub-int v20, v38, v4

    goto :goto_567

    .line 1535
    :cond_585
    move/from16 v37, v16

    .line 1536
    goto/16 :goto_320

    .line 1538
    :cond_589
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_320

    .line 1539
    if-eqz v33, :cond_596

    .line 1540
    move/from16 v37, v16

    .line 1541
    goto/16 :goto_320

    .line 1543
    :cond_596
    move/from16 v37, v16

    .line 1544
    sub-int v38, v38, v20

    goto/16 :goto_320

    .line 1572
    .restart local v29    # "fPos":Landroid/graphics/PointF;
    .restart local v31    # "hoverPointXonContainer":I
    .restart local v32    # "hoverPointYonContainer":I
    .restart local v43    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_59c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1573
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3a5

    .line 1580
    :cond_5d8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c9

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3c9

    .line 1587
    :cond_5fe
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_61e

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3c9

    .line 1592
    :cond_61e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c9

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3c9

    .line 1616
    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_63e
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    .line 1617
    .restart local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v47, :cond_3dd

    .line 1618
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    .line 1619
    .restart local v43    # "scaleFactor":Landroid/graphics/PointF;
    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1620
    .restart local v29    # "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_665

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_730

    .line 1621
    :cond_665
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_6cf

    .line 1622
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1623
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1629
    :goto_6a9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_70a

    .line 1630
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3dd

    .line 1625
    :cond_6cf
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1626
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_6a9

    .line 1632
    :cond_70a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3dd

    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3dd

    .line 1637
    :cond_730
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_750

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3dd

    .line 1641
    :cond_750
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3dd

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_3dd

    .line 1652
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v29    # "fPos":Landroid/graphics/PointF;
    .end local v31    # "hoverPointXonContainer":I
    .end local v32    # "hoverPointYonContainer":I
    .end local v33    # "isPopupAboveHorizontal":Z
    .end local v36    # "marginForHoverRing":I
    .end local v43    # "scaleFactor":Landroid/graphics/PointF;
    .end local v47    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_770
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_7e9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_7e9

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_791

    .line 1654
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 1656
    :cond_791
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_7c3

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    .line 1665
    :cond_7a6
    :goto_7a6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_3dd

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3dd

    .line 1666
    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_3dd

    .line 1658
    :cond_7c3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a6

    .line 1659
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_7a6

    .line 1670
    :cond_7e9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_3dd

    .line 1672
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1673
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_3dd

    .line 1690
    :cond_7fd
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x10304e5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_3ff
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2708
    if-nez p2, :cond_c

    .line 2709
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2711
    :cond_c
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 1136
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_5b

    .line 1137
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1138
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1139
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1140
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1141
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1142
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1146
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_5e

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1147
    .local v0, "anchorView":Landroid/view/View;
    :goto_3c
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_54

    .line 1148
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-nez v1, :cond_54

    .line 1149
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1155
    :cond_54
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1157
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_5b
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    .line 1146
    :cond_5e
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_3c
.end method

.method public dismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 2635
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 2637
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 2638
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 2639
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 2640
    return-void
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 849
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .registers 2

    .prologue
    .line 2389
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .registers 2

    .prologue
    .line 2380
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .registers 2

    .prologue
    .line 2398
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 968
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 969
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 973
    :goto_a
    return-object v0

    .line 970
    :cond_b
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 971
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 973
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected initInstance()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 412
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 413
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 414
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 416
    const/16 v1, 0x3031

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 417
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 418
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 419
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 420
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 421
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 422
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 423
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 424
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 425
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 426
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 427
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 428
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 430
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 431
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 432
    const v1, 0x10304e4

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 434
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 436
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 438
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 439
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 441
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 442
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 443
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 444
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 445
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 446
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 447
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 448
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 449
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 450
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 452
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 453
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 454
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 455
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 456
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 457
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 458
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 459
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 460
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 462
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 463
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x182

    const v2, 0x10803fd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 464
    const/16 v1, 0x181

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 465
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->initCoverManager()V

    .line 467
    return-void
.end method

.method public isDialer()Z
    .registers 2

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 626
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_39

    move v0, v2

    .line 628
    .local v0, "isFingerHoveringOn":Z
    :goto_12
    if-eqz v0, :cond_38

    .line 629
    if-eq p1, v2, :cond_38

    .line 631
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_53

    .line 633
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 659
    :cond_38
    :goto_38
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_39
    move v0, v1

    .line 626
    goto :goto_12

    .line 638
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_3b
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4b

    move v1, v2

    .line 640
    goto :goto_38

    .line 642
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_38

    move v1, v2

    .line 643
    goto :goto_38

    .line 648
    :cond_53
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_69

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_69

    move v1, v2

    .line 650
    goto :goto_38

    .line 652
    :cond_69
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_38

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_38

    move v1, v2

    .line 654
    goto :goto_38
.end method

.method public isHoverPopupPossible()Z
    .registers 4

    .prologue
    .line 532
    const/4 v0, 0x1

    .line 534
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_7

    .line 535
    const/4 v0, 0x0

    .line 545
    :cond_6
    :goto_6
    return v0

    .line 536
    :cond_7
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 537
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    .line 540
    :cond_1c
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 541
    const/4 v0, 0x0

    goto :goto_6

    .line 542
    :cond_23
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 543
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected isHoveringSettingEnabled(I)Z
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 592
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 593
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 599
    :cond_a
    :goto_a
    return v0

    .line 595
    :cond_b
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 596
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_a
.end method

.method public isLockScreenMode()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 684
    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 685
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 686
    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 688
    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 689
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 690
    .local v0, "isCoverOpen":Z
    if-eqz v5, :cond_23

    .line 698
    :cond_23
    const/4 v1, 0x0

    .line 699
    .local v1, "isDayNoteRunning":Z
    iget-object v8, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "is_cover_note_running"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_33

    .line 700
    const/4 v1, 0x1

    .line 702
    :cond_33
    const/4 v2, 0x0

    .line 703
    .local v2, "isLockScreenAndExceptionalCase":Z
    if-eqz v3, :cond_3c

    if-eqz v0, :cond_3c

    if-nez v1, :cond_3c

    move v2, v6

    .line 705
    :goto_3b
    return v2

    :cond_3c
    move v2, v7

    .line 703
    goto :goto_3b
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .registers 2

    .prologue
    .line 568
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 606
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_27

    move v0, v1

    .line 607
    .local v0, "isSPenHoveringOn":Z
    :goto_13
    if-eqz v0, :cond_40

    .line 608
    if-ne p1, v1, :cond_29

    .line 609
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_40

    .line 619
    :cond_26
    :goto_26
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_27
    move v0, v2

    .line 606
    goto :goto_13

    .line 611
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_29
    const/4 v3, 0x3

    if-eq p1, v3, :cond_2f

    const/4 v3, 0x2

    if-ne p1, v3, :cond_40

    .line 612
    :cond_2f
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v1, :cond_26

    move v1, v2

    .line 615
    goto :goto_26

    :cond_40
    move v1, v2

    .line 619
    goto :goto_26
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 859
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 861
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected makeDefaultContentView()V
    .registers 1

    .prologue
    .line 1211
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 1212
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2409
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 2410
    .local v19, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 2415
    .local v20, "y":F
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_4d

    .line 2417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2418
    .local v16, "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_25

    .line 2420
    const/16 v21, 0x1

    .line 2611
    .end local v16    # "timeDealy":J
    :goto_24
    return v21

    .line 2424
    .restart local v16    # "timeDealy":J
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_41

    .line 2425
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2427
    .local v11, "isPointInValidHoverArea":Z
    if-eqz v11, :cond_44

    .line 2428
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2611
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_41
    :goto_41
    const/16 v21, 0x0

    goto :goto_24

    .line 2430
    .restart local v11    # "isPointInValidHoverArea":Z
    .restart local v16    # "timeDealy":J
    :cond_44
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_41

    .line 2433
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_4d
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_2c5

    .line 2434
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 2435
    .local v13, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 2438
    .local v14, "rawY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 2439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 2442
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 2444
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_dc

    .line 2445
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2447
    .restart local v11    # "isPointInValidHoverArea":Z
    if-eqz v11, :cond_bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-nez v21, :cond_bb

    .line 2451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2452
    .restart local v16    # "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_ac

    .line 2454
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2455
    const/16 v21, 0x1

    goto/16 :goto_24

    .line 2460
    :cond_ac
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2461
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 2462
    const/16 v21, 0x1

    goto/16 :goto_24

    .line 2463
    .end local v16    # "timeDealy":J
    :cond_bb
    if-nez v11, :cond_dc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_dc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-nez v21, :cond_dc

    .line 2467
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 2469
    const/16 v21, 0x1

    goto/16 :goto_24

    .line 2474
    .end local v11    # "isPointInValidHoverArea":Z
    :cond_dc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_ec

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_201

    :cond_ec
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_201

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 2477
    .local v12, "popupView":Landroid/view/View;
    instance-of v0, v12, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_201

    move-object v6, v12

    .line 2478
    check-cast v6, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 2483
    .local v6, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_136

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_136

    .line 2485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingLeft()I

    move-result v9

    .line 2486
    .local v9, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v10, v21, v9

    .line 2502
    .local v10, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .line 2520
    .end local v9    # "infopickerLeftLimit":I
    .end local v10    # "infopickerRightLimit":I
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_216

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2521
    .local v5, "anchorView":Landroid/view/View;
    :goto_142
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    .line 2522
    .local v18, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v18, :cond_1f2

    .line 2523
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v15

    .line 2524
    .local v15, "scaleFactor":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2525
    .local v8, "fPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_16d

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_278

    .line 2526
    :cond_16d
    invoke-virtual {v5}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_21c

    .line 2527
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2528
    .local v7, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2530
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 2531
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 2537
    .end local v7    # "displayFrame":Landroid/graphics/Rect;
    :goto_1d9
    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 2545
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_1f2
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_2a1

    .line 2551
    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 2574
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_201
    :goto_201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_212

    .line 2575
    invoke-direct/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->resetTimeout()V

    .line 2580
    :cond_212
    const/16 v21, 0x1

    goto/16 :goto_24

    .line 2520
    .restart local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .restart local v12    # "popupView":Landroid/view/View;
    :cond_216
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_142

    .line 2533
    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v8    # "fPos":Landroid/graphics/PointF;
    .restart local v15    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_21c
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 2534
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1d9

    .line 2540
    :cond_278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_1f2

    .line 2559
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_2a1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_2b1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_201

    .line 2563
    :cond_2b1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2c0

    .line 2564
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 2566
    :cond_2c0
    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_201

    .line 2581
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v13    # "rawX":I
    .end local v14    # "rawY":I
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2c5
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_41

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2de

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    .line 2593
    :cond_2de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_41

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_307

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_307

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 2602
    :cond_307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_41

    .line 2603
    const/16 v21, 0x1

    goto/16 :goto_24
.end method

.method protected postDismiss(I)V
    .registers 6
    .param p1, "ms"    # I

    .prologue
    .line 2619
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$6;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$6;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2626
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 913
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 4
    .param p1, "aniStyle"    # I

    .prologue
    .line 2211
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 2212
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    .line 2213
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2215
    :cond_d
    return-void
.end method

.method public setContent(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 806
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 808
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 816
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    return-void

    .line 816
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 827
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 828
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 830
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 839
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 841
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .registers 2
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 729
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 730
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 755
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 756
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2288
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 2289
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 2290
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2296
    if-ne p2, v1, :cond_6

    .line 2297
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 2306
    :cond_5
    :goto_5
    return-void

    .line 2300
    :cond_6
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_5

    .line 2303
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_5
.end method

.method public setFHGuideLineEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2245
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 2246
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 2247
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2253
    if-ne p2, v1, :cond_14

    .line 2254
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2256
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_d

    .line 2257
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2280
    :cond_c
    :goto_c
    return-void

    .line 2260
    :cond_d
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_c

    .line 2261
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_c

    .line 2265
    :cond_14
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_c

    .line 2268
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2270
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_21

    .line 2271
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_c

    .line 2274
    :cond_21
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_c

    .line 2275
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_c
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2350
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 2351
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2236
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2237
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 2360
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 2361
    return-void
.end method

.method public setGuideLineStyle(II)V
    .registers 3
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 2370
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 2371
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 2372
    return-void
.end method

.method public setHoverDetectTime(I)V
    .registers 2
    .param p1, "ms"    # I

    .prologue
    .line 871
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 872
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 884
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 885
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 886
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 887
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 889
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_18

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_18

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_18

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1b

    .line 891
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 893
    :cond_1b
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 785
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 786
    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 795
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .line 796
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 675
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 676
    return-void
.end method

.method public setHoveringPoint(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 962
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 963
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 964
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2341
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 2342
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2314
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 2315
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 2317
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2323
    if-ne p2, v1, :cond_6

    .line 2324
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 2333
    :cond_5
    :goto_5
    return-void

    .line 2327
    :cond_6
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_5

    .line 2330
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_5
.end method

.method protected setInstanceByType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 483
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 484
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 485
    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 486
    const v0, 0x10304e4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 488
    :cond_10
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 562
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 578
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 950
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_9

    .line 951
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    .line 953
    :cond_9
    return-void
.end method

.method public setPickerXOffset(I)V
    .registers 2
    .param p1, "xOffset"    # I

    .prologue
    .line 941
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    .line 942
    return-void
.end method

.method public setPopupGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 921
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 922
    return-void
.end method

.method public setPopupPosOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 931
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 932
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 933
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .registers 2
    .param p1, "always"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 902
    return-void
.end method

.method public setTouchablePopup(Z)V
    .registers 4
    .param p1, "isTouchable"    # Z

    .prologue
    .line 2224
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 2225
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    .line 2226
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2228
    :cond_d
    return-void
.end method

.method public show()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1009
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 1010
    return-void
.end method

.method public show(I)V
    .registers 9
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    .line 1023
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v2, :cond_a

    .line 1024
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 1025
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 1029
    :cond_a
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_17

    .line 1030
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v2}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1096
    :cond_16
    :goto_16
    return-void

    .line 1036
    :cond_17
    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_16

    if-eqz p1, :cond_16

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v2, :cond_16

    :cond_29
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->isViewCoverClose()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1044
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1045
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1046
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_5f

    .line 1047
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1055
    .end local v1    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5f
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v2

    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    .line 1058
    invoke-virtual {p0, v6}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1062
    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v2, :cond_82

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v2, v6, :cond_82

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_82

    .line 1065
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 1069
    :cond_82
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v2, v6, :cond_8d

    .line 1070
    new-instance v2, Landroid/widget/HoverPopupWindow$4;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$4;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1077
    :cond_8d
    new-instance v2, Landroid/widget/HoverPopupWindow$5;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$5;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1086
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1087
    iput-boolean v6, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto/16 :goto_16
.end method

.method protected showPenPointEffect(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2670
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2671
    if-ne p1, v2, :cond_11

    .line 2675
    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_b
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_21

    .line 2680
    :goto_e
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 2693
    :cond_10
    :goto_10
    return-void

    .line 2681
    :cond_11
    if-nez p1, :cond_10

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_10

    .line 2685
    const/16 v0, 0x14

    const/4 v1, -0x1

    :try_start_1a
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_23

    .line 2690
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_10

    .line 2676
    :catch_21
    move-exception v0

    goto :goto_e

    .line 2686
    :catch_23
    move-exception v0

    goto :goto_1d
.end method

.method public updateHoverPopup()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 2137
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_26

    .line 2138
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2139
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2143
    :goto_25
    return-void

    .line 2141
    :cond_26
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_2c
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_25

    :cond_36
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_2c
.end method
