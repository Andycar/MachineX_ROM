.class Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
.super Landroid/view/View;
.source "KeyguardEffectViewZoomPanning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingImageView"
.end annotation


# static fields
.field private static final BASIC_IMAGE_SIZE:F = 2560.0f

.field private static final CATEGORY_CODE_PET:Ljava/lang/String; = "BGA"

.field private static final DEFAULT_ANIMATION_FRAME:I = 0x3e8

.field private static final DEFAULT_CAMERA_ZOOM:F = 1.5f

.field private static final DEFAULT_CAMERA_ZOOM_FOR_PET:F = 1.2f

.field private static final DOUBLE_TAP_ANIMATION_FRAME:I = 0x8

.field private static final FACE_ZOOMIN_ANIMATION_FRAME:I = 0x258

.field private static final KEY_WALLPAPER_INFO_CATEGORY_CODE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_category_code"

.field private static final MAXIMUM_CAMERA_ZOOM:F = 2.5f

.field private static final MAXIMUM_CAMERA_ZOOM_FOR_PET:F = 1.5f

.field private static final MAX_GOAL_POINT:I = 0x2

.field private static final OVERLAP_ANIMATION_FRAME:I = 0x28

.field public static final RANDOM:I = -0x1

.field private static final REVERT_ANIMATION_FRAME:I = 0x8

.field private static final THRESHOLD_CAMERA_ZOOM:F = 1.2f

.field private static final TOUCH_MOVE_COE:F = 0.5f


# instance fields
.field private SECOND_BORDER:I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraCenterPosX:F

.field private mCameraCenterPosY:F

.field private mCameraZoomIn:F

.field private mCurrentAnimationFrame:I

.field private mCurrentBitmapPath:Ljava/lang/String;

.field private mCurrentCategoryCode:Ljava/lang/String;

.field private mDefaultCameraHeight:I

.field private mDefaultCameraWidth:I

.field private mDefaultOverlapCameraHeight:I

.field private mDefaultOverlapCameraWidth:I

.field private mDistance:F

.field private mDoubleTapCheckHandler:Landroid/os/Handler;

.field private mGoalAnimationFrame:I

.field private mIsAnimating:Z

.field private mIsDoubleTapWaiting:Z

.field private mIsOverlap:Z

.field private mIsPetImage:Z

.field private mLastPinchDistance:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMovingCoe:F

.field private mNowGoalIndex:I

.field private mOverlapBitmap:Landroid/graphics/Bitmap;

.field private mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

.field private mOverlapBitmapHeight:I

.field private mOverlapBitmapWidth:I

.field private mOverlapCameraCenterPosX:F

.field private mOverlapCameraCenterPosY:F

.field private mOverlapCameraZoomIn:F

.field private mPanningGoalIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanningGoalX:F

.field private mPanningGoalY:F

.field private mPanningInterpolator:Landroid/view/animation/Interpolator;

.field private mPanningRandom:Z

.field private mPanningStartX:F

.field private mPanningStartY:F

.field private mPinchZoomPivotX:F

.field private mPinchZoomPivotY:F

.field private mPinchZoomStartMinThreshold:I

.field private mSavedCurrentAnimationFrame:I

.field private mSavedGoalAnimationFrame:I

.field private mSavedPanningGoalX:F

.field private mSavedPanningGoalY:F

.field private mSavedPanningStartX:F

.field private mSavedPanningStartY:F

.field private mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

.field private mSavedZoomStart:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

.field private mThresholdCameraZoom:F

.field private mTouchDownCameraPosX:F

.field private mTouchDownCameraPosY:F

.field private mTouchDownCameraZoom:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchMoveStartMinThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mZoomingStart:F

.field private onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 645
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 647
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    .line 648
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 536
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    .line 600
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 601
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 603
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 604
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 605
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 606
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 607
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 609
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 610
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    .line 611
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    .line 612
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    .line 613
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    .line 615
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    .line 616
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    .line 617
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    .line 618
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    .line 619
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    .line 620
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    .line 621
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    .line 622
    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 626
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    .line 628
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 631
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    .line 632
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    .line 633
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    .line 635
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    .line 636
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    .line 1450
    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    .line 1673
    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    .line 1679
    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 650
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 651
    .local v1, "displaymetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    .line 652
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    .line 654
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 658
    const/high16 v0, 0x43200000    # 160.0f

    .line 659
    .local v0, "cocktailBarSize":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    .line 661
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cocktailBarSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v0    # "cocktailBarSize":F
    :cond_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    .line 666
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    .line 668
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    .line 674
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    .line 675
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 676
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    .line 677
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 679
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 681
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWindowWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWindowHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 685
    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 686
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    .line 687
    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 688
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovingImageView() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    .line 692
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    .line 694
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    .line 695
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    .line 697
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 698
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->overlapAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;
    .param p1, "x1"    # F

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V

    return-void
.end method

.method private calculateAnimationFrame(FFFF)I
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 1733
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v1

    .line 1734
    .local v1, "distance":F
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1736
    .local v0, "animationFrame":I
    return v0
.end method

.method private calculateDistance(FFFF)F
    .locals 4
    .param p1, "firstX"    # F
    .param p2, "firstY"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .prologue
    .line 1726
    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1727
    .local v0, "diffX":F
    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1729
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private findNearestFaceIndexFromCurrentCameraPos()I
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 995
    .local v0, "findIndex":I
    return v0
.end method

.method private getCanvasScale(Z)F
    .locals 3
    .param p1, "isOverlapCamera"    # Z

    .prologue
    .line 1791
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1792
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float v0, v1, v2

    .line 1797
    .local v0, "cameraWidth":F
    :goto_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1

    .line 1794
    .end local v0    # "cameraWidth":F
    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float v0, v1, v2

    .restart local v0    # "cameraWidth":F
    goto :goto_0
.end method

.method private getCanvasTranslate(ZZ)F
    .locals 11
    .param p1, "isOverlapCamera"    # Z
    .param p2, "isX"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 1741
    if-ne p2, v6, :cond_3

    .line 1746
    if-ne p1, v6, :cond_1

    .line 1747
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    .line 1748
    .local v3, "cameraHalfWidth":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    sub-float v4, v6, v3

    .line 1749
    .local v4, "canvasTranslateX":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v1, v6

    .line 1756
    .local v1, "bitmapWidth":F
    :goto_0
    cmpg-float v6, v4, v10

    if-gez v6, :cond_2

    .line 1757
    const/4 v4, 0x0

    .line 1784
    .end local v1    # "bitmapWidth":F
    .end local v3    # "cameraHalfWidth":F
    .end local v4    # "canvasTranslateX":F
    :cond_0
    :goto_1
    return v4

    .line 1751
    :cond_1
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v3, v6, v8

    .line 1752
    .restart local v3    # "cameraHalfWidth":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float v4, v6, v3

    .line 1753
    .restart local v4    # "canvasTranslateX":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v6

    .restart local v1    # "bitmapWidth":F
    goto :goto_0

    .line 1758
    :cond_2
    mul-float v6, v3, v9

    sub-float v6, v1, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    .line 1759
    mul-float v6, v3, v9

    sub-float v4, v1, v6

    goto :goto_1

    .line 1768
    .end local v1    # "bitmapWidth":F
    .end local v3    # "cameraHalfWidth":F
    .end local v4    # "canvasTranslateX":F
    :cond_3
    if-ne p1, v6, :cond_5

    .line 1769
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    .line 1770
    .local v2, "cameraHalfHeight":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    sub-float v5, v6, v2

    .line 1771
    .local v5, "canvasTranslateY":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v0, v6

    .line 1778
    .local v0, "bitmapHeight":F
    :goto_2
    cmpg-float v6, v5, v10

    if-gez v6, :cond_6

    .line 1779
    const/4 v5, 0x0

    :cond_4
    :goto_3
    move v4, v5

    .line 1784
    goto :goto_1

    .line 1773
    .end local v0    # "bitmapHeight":F
    .end local v2    # "cameraHalfHeight":F
    .end local v5    # "canvasTranslateY":F
    :cond_5
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v6, v7

    mul-float v2, v6, v8

    .line 1774
    .restart local v2    # "cameraHalfHeight":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float v5, v6, v2

    .line 1775
    .restart local v5    # "canvasTranslateY":F
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v6

    .restart local v0    # "bitmapHeight":F
    goto :goto_2

    .line 1780
    :cond_6
    mul-float v6, v2, v9

    sub-float v6, v0, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    .line 1781
    mul-float v6, v2, v9

    sub-float v5, v0, v6

    goto :goto_3
.end method

.method private getDefaultCameraZoomByCategory()F
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    .line 1221
    const v0, 0x3f99999a    # 1.2f

    .line 1223
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0
.end method

.method private getMaximumCameraZoomByCategory()F
    .locals 1

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-eqz v0, :cond_0

    .line 1228
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1230
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_0
.end method

.method private getRandom(FF)I
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 1722
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleDoubleTap()V
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Z)Z

    .line 1179
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1181
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 1189
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    const-string v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTap() mIsAnimating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsDoubleTapPuase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Z)Z

    .line 1185
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1186
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    goto :goto_0
.end method

.method private handlePinchZoom(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    .line 1425
    .local v0, "distance":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 1426
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    .line 1429
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1433
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1435
    .local v1, "scaleFactor":F
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByRate(F)V

    .line 1437
    cmpl-float v2, v1, v6

    if-lez v2, :cond_3

    .line 1438
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1439
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1442
    :cond_3
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_0
.end method

.method private makeRandomPanningPoint()Landroid/graphics/Point;
    .locals 14

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .line 1000
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    move v5, v9

    .line 1002
    .local v5, "isLeftSide":Z
    :goto_0
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1005
    .local v1, "cameraZoom":F
    :goto_1
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v6, v10, v13

    .line 1006
    .local v6, "leftBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    sub-float v7, v10, v6

    .line 1007
    .local v7, "rightBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    div-float/2addr v10, v1

    mul-float v8, v10, v13

    .line 1008
    .local v8, "topBorder":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v10, v10

    sub-float v0, v10, v8

    .line 1010
    .local v0, "bottomBorder":F
    if-ne v5, v9, :cond_3

    .line 1011
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v6, v10

    .line 1016
    :goto_2
    cmpg-float v10, v7, v6

    if-gez v10, :cond_0

    .line 1017
    if-ne v5, v9, :cond_4

    .line 1018
    move v6, v7

    .line 1024
    :cond_0
    :goto_3
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v3

    .line 1025
    .local v3, "goalX":I
    invoke-direct {p0, v8, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    .line 1027
    .local v4, "goalY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1029
    .local v2, "goalPoint":Landroid/graphics/Point;
    return-object v2

    .line 1000
    .end local v0    # "bottomBorder":F
    .end local v1    # "cameraZoom":F
    .end local v2    # "goalPoint":Landroid/graphics/Point;
    .end local v3    # "goalX":I
    .end local v4    # "goalY":I
    .end local v5    # "isLeftSide":Z
    .end local v6    # "leftBorder":F
    .end local v7    # "rightBorder":F
    .end local v8    # "topBorder":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1002
    .restart local v5    # "isLeftSide":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v1

    goto :goto_1

    .line 1013
    .restart local v0    # "bottomBorder":F
    .restart local v1    # "cameraZoom":F
    .restart local v6    # "leftBorder":F
    .restart local v7    # "rightBorder":F
    .restart local v8    # "topBorder":F
    :cond_3
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    sub-float/2addr v7, v10

    goto :goto_2

    .line 1020
    :cond_4
    move v7, v6

    goto :goto_3
.end method

.method private overlapAnimation()V
    .locals 5

    .prologue
    .line 1070
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1075
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1076
    return-void
.end method

.method private panningAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1079
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    if-lt v1, v2, :cond_4

    .line 1080
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    .line 1081
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1086
    .local v0, "prevState":Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$1;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewZoomPanning$CameraState:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1114
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1117
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_2

    .line 1119
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1122
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_3

    .line 1123
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1126
    :cond_3
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panningAnimation() state change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .end local v0    # "prevState":Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    :cond_4
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1130
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1134
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1139
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1141
    :goto_1
    return-void

    .line 1088
    .restart local v0    # "prevState":Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1089
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_1

    .line 1091
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    goto :goto_1

    .line 1095
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1098
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1101
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1104
    :pswitch_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1107
    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 1108
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1110
    :cond_6
    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto/16 :goto_0

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private replaceBitmapAndCameraData()V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "replaceBitmapAndCameraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1244
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    .line 1245
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    .line 1246
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    .line 1247
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    .line 1249
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    .line 1250
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    .line 1251
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    .line 1253
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1255
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1256
    return-void
.end method

.method private restoreAnimationInformation()V
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1209
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1210
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1211
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1212
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1213
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1214
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1216
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1217
    return-void
.end method

.method private revertBitmapToOverlapBitmap()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "revertBitmapToOverlapBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 1263
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 1264
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 1265
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 1267
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1268
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1269
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1271
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1276
    return-void
.end method

.method private saveCurrentAnimationInformation()V
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    .line 1197
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    .line 1198
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    .line 1199
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    .line 1200
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    .line 1201
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    .line 1202
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    .line 1204
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1205
    return-void
.end method

.method private setGoalOfDoubleTabPause()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfDoubleTabPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1356
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1357
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1359
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1360
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1362
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    .line 1364
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1365
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1366
    return-void
.end method

.method private setGoalOfOverlap()V
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfOverlap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1344
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1345
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1347
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1348
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1349
    return-void
.end method

.method private setGoalOfPanning()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1279
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1281
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1283
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1284
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1286
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1291
    .local v2, "faceGoalIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->makeRandomPanningPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 1292
    .local v3, "goalPoint":Landroid/graphics/Point;
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1293
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    .line 1307
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1308
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1310
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1311
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGoalOfPanning() faceGoalIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", go to ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v1, v4, v7

    .line 1316
    .local v1, "defaultCameraHalfWidth":F
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v0, v4, v7

    .line 1319
    .local v0, "defaultCameraHalfHeight":F
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_4

    .line 1320
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1325
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_5

    .line 1326
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1331
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 1333
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 1334
    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 1336
    :cond_3
    return-void

    .line 1321
    :cond_4
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 1322
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    goto :goto_0

    .line 1327
    :cond_5
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 1328
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    goto :goto_1
.end method

.method private setGoalOfTouchRelease()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const-string v0, "KeyguardEffectViewZoom"

    const-string v1, "setGoalOfTouchRelease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    .line 1373
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    .line 1374
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    .line 1376
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    .line 1377
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    .line 1379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    .line 1380
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    .line 1381
    return-void
.end method

.method private sortFaceListClockwise()V
    .locals 0

    .prologue
    .line 947
    return-void
.end method

.method private updateFaceList()V
    .locals 4

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 893
    .local v0, "faceNum":I
    if-nez v0, :cond_0

    .line 894
    const-string v1, "KeyguardEffectViewZoom"

    const-string v2, "face is not detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFaceLis() face detected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->sortFaceListClockwise()V

    goto :goto_0
.end method

.method private updateGoalList()V
    .locals 3

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 959
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "iIdx":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->findNearestFaceIndexFromCurrentCameraPos()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    .line 964
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_1

    .line 965
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfOverlap()V

    .line 971
    :goto_1
    return-void

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 967
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_1

    .line 969
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    goto :goto_1
.end method

.method private zoomAnimation(F)V
    .locals 5
    .param p1, "goalZoom"    # F

    .prologue
    .line 1144
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1149
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1150
    return-void
.end method

.method private zoomAnimationByRate(F)V
    .locals 3
    .param p1, "zoomRate"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1165
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float v1, v2, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1167
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1168
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1173
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1174
    return-void

    .line 1169
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1170
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method

.method private zoomAnimationByValue(F)V
    .locals 3
    .param p1, "zoomValue"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1153
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1155
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1156
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 1161
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    .line 1162
    return-void

    .line 1157
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1158
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1828
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    .line 1829
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$302(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1830
    return-void
.end method

.method public correctCameraLocation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1384
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 1385
    .local v1, "cameraHalfWidth":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 1387
    .local v0, "cameraHalfHeight":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1388
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1393
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1394
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1398
    :cond_1
    :goto_1
    return-void

    .line 1389
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1390
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_0

    .line 1395
    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1396
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1
.end method

.method public correctOverlapCameraLocation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1401
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v1, v2, v4

    .line 1402
    .local v1, "overlapCameraHalfWidth":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 1404
    .local v0, "overlapCameraHalfHeight":F
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1405
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    .line 1410
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1411
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    .line 1415
    :cond_1
    :goto_1
    return-void

    .line 1406
    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1407
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    goto :goto_0

    .line 1412
    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1413
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    goto :goto_1
.end method

.method public getCurrentBitmapPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1515
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_1

    .line 1517
    :cond_0
    const/4 v10, 0x1

    .line 1635
    :goto_0
    return v10

    .line 1520
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2

    .line 1521
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1524
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 1525
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1633
    :cond_3
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->invalidate()V

    .line 1635
    const/4 v10, 0x1

    goto :goto_0

    .line 1527
    :pswitch_1
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 1528
    .local v8, "widthFact":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 1530
    .local v6, "heightFact":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v2, v10, v11

    .line 1531
    .local v2, "cameraHalfWidth":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v1, v10, v11

    .line 1533
    .local v1, "cameraHalfHeight":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v8

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v2

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    .line 1535
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v6

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v1

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    .line 1538
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_1

    .line 1541
    .end local v1    # "cameraHalfHeight":F
    .end local v2    # "cameraHalfWidth":F
    .end local v6    # "heightFact":F
    .end local v8    # "widthFact":F
    :pswitch_2
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_4

    .line 1542
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->saveCurrentAnimationInformation()V

    .line 1544
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    .line 1545
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    .line 1546
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    .line 1547
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    .line 1550
    :cond_4
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1551
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1556
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 1557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    .line 1559
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    goto/16 :goto_1

    .line 1553
    :cond_5
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    .line 1563
    :pswitch_3
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v10, v11, :cond_6

    .line 1564
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handlePinchZoom(Landroid/view/MotionEvent;)V

    .line 1567
    :cond_6
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v3, v10

    .line 1568
    .local v3, "diffX":I
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v4, v10

    .line 1570
    .local v4, "diffY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    .line 1571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    .line 1573
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iget v13, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v5

    .line 1576
    .local v5, "distance":F
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_3

    .line 1580
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1581
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1583
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    int-to-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 1584
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    int-to-float v11, v4

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 1586
    iget v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    sub-float v10, v5, v10

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iget v12, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    sub-float/2addr v11, v12

    mul-float v9, v10, v11

    .line 1589
    .local v9, "zoomValue":F
    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByValue(F)V

    .line 1591
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    .line 1593
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    goto/16 :goto_1

    .line 1596
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    .end local v5    # "distance":F
    .end local v9    # "zoomValue":F
    :pswitch_4
    const/4 v7, 0x0

    .local v7, "iIdx":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 1597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    if-ne v7, v10, :cond_7

    .line 1596
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1601
    :cond_7
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    .line 1602
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    goto/16 :goto_1

    .line 1608
    .end local v7    # "iIdx":I
    :pswitch_5
    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1610
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 1611
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 1617
    :cond_8
    :goto_4
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-nez v10, :cond_3

    .line 1618
    iget-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 1619
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1620
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1622
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->handleDoubleTap()V

    goto/16 :goto_1

    .line 1612
    :cond_9
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v11, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v10, v11, :cond_8

    .line 1614
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfTouchRelease()V

    goto :goto_4

    .line 1624
    :cond_a
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    .line 1626
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1627
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleUnlock()V
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_0

    .line 1823
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 1825
    :cond_0
    return-void
.end method

.method public initBitmap()Z
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    const-string v4, "KeyguardEffectViewZoom"

    const-string v5, "MovingImageView initBitmap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 713
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 714
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$400(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "newBitmapPath":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_3

    .line 724
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : same bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    const/4 v0, 0x0

    .line 808
    :goto_1
    return v2

    .line 716
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "newBitmapPath":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 719
    .restart local v1    # "newBitmapPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 732
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 733
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 734
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : revert bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->revertBitmapToOverlapBitmap()V

    .line 738
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 739
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 740
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    .line 742
    const/4 v0, 0x0

    .line 744
    goto :goto_1

    .line 747
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 748
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentBitmapPath() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newBitmapPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    .line 762
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 763
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    .line 785
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_c

    .line 786
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 787
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 789
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 790
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBitmapWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBitmapHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "keyguard_wu_wallpaper_info_category_code"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    .line 802
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "BGA"

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 804
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    :goto_3
    move v2, v3

    .line 808
    goto/16 :goto_1

    .line 766
    :cond_8
    if-nez v0, :cond_9

    .line 767
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "initBitmap() : new bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 770
    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 771
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBitmap() : overlap bitmap, mIsAnimating = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    .line 774
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->replaceBitmapAndCameraData()V

    .line 776
    :cond_b
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 778
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 780
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    .line 782
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 793
    :cond_c
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    .line 794
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    .line 796
    const-string v3, "KeyguardEffectViewZoom"

    const-string v4, "mBitmap is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 806
    :cond_d
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    goto :goto_3
.end method

.method public initCamera()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 812
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 813
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MovingImageView initCamera() : mIsOverlap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsDoubleTapPuase : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 818
    .local v3, "windowAspectRatio":F
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 820
    .local v0, "bitmapAspectRation":F
    cmpg-float v4, v0, v3

    if-gtz v4, :cond_4

    .line 821
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 822
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 829
    :goto_0
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    if-le v4, v5, :cond_1

    .line 830
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 831
    .local v2, "swapTemp":I
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    .line 832
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 835
    .end local v2    # "swapTemp":I
    :cond_1
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x45200000    # 2560.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    .line 837
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 838
    const-string v4, "KeyguardEffectViewZoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDefaultCameraWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDefaultCameraHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v4

    if-ne v4, v9, :cond_5

    .line 842
    :cond_3
    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 844
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 846
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 847
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    .line 872
    :goto_1
    return-void

    .line 824
    :cond_4
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    .line 825
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    goto :goto_0

    .line 849
    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    if-ne v4, v9, :cond_7

    .line 850
    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 851
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    .line 853
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    .line 859
    :goto_2
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    sub-int v1, v4, v5

    .line 860
    .local v1, "diffHeight":I
    if-gez v1, :cond_6

    .line 861
    const/4 v1, 0x0

    .line 864
    :cond_6
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v4

    if-nez v4, :cond_8

    .line 866
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    .line 871
    :goto_3
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1

    .line 855
    .end local v1    # "diffHeight":I
    :cond_7
    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    .line 856
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_2

    .line 869
    .restart local v1    # "diffHeight":I
    :cond_8
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_3
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method public isUpdatableState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1806
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_0

    .line 1818
    :goto_0
    return v0

    .line 1810
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1818
    .local v0, "isUpdatableStates":Z
    :cond_2
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1641
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v4

    .line 1646
    .local v4, "canvasScaleFact":F
    invoke-direct {p0, v10, v11}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v5

    .line 1647
    .local v5, "canvasTranslateX":F
    invoke-direct {p0, v10, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v6

    .line 1649
    .local v6, "canvasTranslateY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1650
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1651
    neg-float v7, v5

    neg-float v8, v6

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1652
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1655
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 1656
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 1659
    .local v0, "alpha":I
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1661
    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v1

    .line 1662
    .local v1, "canvasOverlapScaleFact":F
    invoke-direct {p0, v11, v11}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    .line 1663
    .local v2, "canvasOverlapTranslateX":F
    invoke-direct {p0, v11, v10}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v3

    .line 1665
    .local v3, "canvasOverlapTranslateY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1666
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1667
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1668
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1038
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    const-string v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAnimation() mIsAnimating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> true, mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-ne v2, v1, :cond_1

    .line 1051
    :goto_0
    return v0

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 1049
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 1051
    goto :goto_0
.end method

.method public stopAnimation()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1055
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    const-string v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAnimation() mIsAnimating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> false, mState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-nez v1, :cond_1

    .line 1066
    :goto_0
    return v0

    .line 1063
    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    .line 1064
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    const/4 v0, 0x1

    goto :goto_0
.end method
