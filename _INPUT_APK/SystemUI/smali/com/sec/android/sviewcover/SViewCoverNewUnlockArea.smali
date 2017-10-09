.class public Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverNewUnlockArea"


# instance fields
.field private final IN_ANIMATION_DURATION:I

.field private final MAKE_TARGET_DURATION:I

.field private final OUT_ANIMATION_DURATION:I

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private mArrowCamera:Landroid/widget/ImageView;

.field private mArrowNoti:Landroid/widget/ImageView;

.field private mArrowSetting:Landroid/widget/ImageView;

.field private mCameraBgPressed:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mCameraContainer:Landroid/widget/RelativeLayout;

.field private mCircleNotiNormal:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsMultiTouched:Z

.field private mNotiBgPressed:Landroid/widget/ImageView;

.field private mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mNotiMultiContainer:Landroid/widget/LinearLayout;

.field private mNotiMultiMissedCallCount:Landroid/widget/TextView;

.field private mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

.field private mNotiSingleContainer:Landroid/widget/LinearLayout;

.field private mNotiSingleEventCount:Landroid/widget/TextView;

.field private mNotiStartX:F

.field private mNotiStartY:F

.field private mPM:Landroid/os/PowerManager;

.field private mRatio:F

.field private mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

.field private mSecondBorder:D

.field private mSettingBgPressed:Landroid/widget/ImageView;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

.field private mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

.field private mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

.field private mSettingContainer:Landroid/widget/RelativeLayout;

.field private mShortcutStartX:F

.field private mShortcutStartY:F

.field private mTouchCorrectionArea:I

.field private mTouchedShortcut:Ljava/lang/String;

.field private mUnlockLayout:Landroid/view/View;

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 82
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->MAKE_TARGET_DURATION:I

    .line 95
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    .line 96
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    .line 98
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    .line 100
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->IN_ANIMATION_DURATION:I

    .line 101
    const/16 v0, 0x14d

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->OUT_ANIMATION_DURATION:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 104
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 105
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 106
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 116
    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 124
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    .line 125
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isUsimDownloadTopActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "x3"    # [Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchCorrectionArea:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "x2"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$3202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelAllAnimator()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAnimator(Landroid/animation/Animator;)V

    .line 962
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 965
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 967
    :cond_0
    return-void
.end method

.method private closeCircleEffect(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "outAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 918
    :cond_0
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->strokeAnimationValue:F

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->circleAnimationMax:F

    .line 919
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->dragAnimationValue:F

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->fillAnimationValueMax:F

    .line 920
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private initCircleEffect()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 740
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 741
    .local v10, "screenWidth":I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 743
    .local v9, "screenHeight":I
    if-ge v10, v9, :cond_0

    move v11, v10

    .line 744
    .local v11, "smallestWidth":I
    :goto_0
    int-to-float v0, v11

    const/high16 v1, 0x44870000    # 1080.0f

    div-float v8, v0, v1

    .line 746
    .local v8, "ratio":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 747
    .local v4, "outerStrokeWidth":I
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v8

    float-to-int v5, v0

    .line 749
    .local v5, "innerStrokeWidth":I
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v12

    double-to-int v2, v0

    .line 750
    .local v2, "circleMaxWidth":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v3, v0, v5

    .line 754
    .local v3, "circleMinWidth":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_circle_camera_point_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 757
    .local v6, "pointX":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_touch_correction:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchCorrectionArea:I

    .line 759
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "center is "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", maxwidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",  minWidth : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 764
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 766
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    .line 769
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v14}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 777
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAllAnimator()V

    .line 778
    return-void

    .end local v2    # "circleMaxWidth":I
    .end local v3    # "circleMinWidth":I
    .end local v4    # "outerStrokeWidth":I
    .end local v5    # "innerStrokeWidth":I
    .end local v6    # "pointX":I
    .end local v8    # "ratio":F
    .end local v11    # "smallestWidth":I
    :cond_0
    move v11, v9

    .line 743
    goto/16 :goto_0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 615
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 616
    const-string v0, "SViewCoverNewUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager.getCurrentUser() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsimDownloadTopActivity()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 982
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 984
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 985
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 986
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 987
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.UsimDownload"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 991
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private varargs playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    .locals 8
    .param p1, "isPlay"    # Z
    .param p2, "side"    # Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;
    .param p3, "otherViews"    # [Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    .line 668
    if-ne p1, v7, :cond_0

    .line 669
    move-object v0, p3

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 670
    .local v3, "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p3

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 674
    .restart local v3    # "view":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 678
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    if-ne p2, v6, :cond_3

    .line 679
    if-ne p1, v7, :cond_2

    :goto_2
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaRightSideButtons(F)V

    .line 687
    :goto_3
    return-void

    :cond_2
    move v4, v5

    .line 679
    goto :goto_2

    .line 683
    :cond_3
    if-ne p1, v7, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setAlphaLeftSideButtons(F)V

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4
.end method

.method private resetCircleAnimator()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x29a

    const-wide/16 v4, 0x14d

    const-wide/16 v2, 0x0

    .line 924
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 925
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 927
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 930
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 932
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 935
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 937
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 939
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 940
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 942
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 945
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 947
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 950
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 952
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 953
    return-void
.end method

.method private setAllAnimator()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 782
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 783
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 793
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 794
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$6;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 804
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    .line 805
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$7;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$7;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 816
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 817
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$8;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$9;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$9;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 846
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 847
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$10;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$10;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$11;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 876
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    .line 877
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$12;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$12;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$13;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$13;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    return-void

    .line 782
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 793
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 804
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 816
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 846
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 876
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/16 v0, 0x8

    .line 970
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :cond_1
    :goto_0
    return-void

    .line 975
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 976
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 977
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAlphaLeftSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 690
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 694
    :cond_1
    return-void
.end method

.method private setAlphaRightSideButtons(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 699
    :cond_0
    return-void
.end method

.method private updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    .locals 0
    .param p1, "circleEffect"    # Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    .param p2, "ratio"    # F

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->dragAnimationUpdate(F)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 659
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 664
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 665
    return-void
.end method

.method public handleHideIconsOnly()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 649
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 651
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z

    .line 652
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 653
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 654
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 655
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-direct {p0, v3, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 656
    return-void
.end method

.method public handleShowIconsOnly()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_0
    return-void
.end method

.method public handleUnlock(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;)V
    .locals 5
    .param p1, "moveToPage"    # Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 538
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0, p1, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 552
    :cond_3
    return-void
.end method

.method public hideNotiPageButton()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public hideSettingPageButton()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 636
    return-void
.end method

.method public initMultiTouched()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 995
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsMultiTouched:Z

    .line 996
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D

    .line 997
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraCircleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V

    .line 999
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 1000
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 531
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 532
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_thrid_level_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_thrid_level_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 135
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_missed_call_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_unread_message_count:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    .line 143
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_camera_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    .line 145
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCircleNotiNormal:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowCamera:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_thrid_level_left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;

    .line 151
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_setting:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;

    .line 152
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraBgPressed:Landroid/widget/ImageView;

    .line 154
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_noti_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_bg_pressed:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;

    .line 157
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->initCircleEffect()V

    .line 159
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_single_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    .line 260
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 343
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_third_level_multi_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    .line 346
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$3;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 513
    return-void
.end method

.method public setCameraContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 722
    :cond_0
    return-void
.end method

.method public setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 703
    return-void
.end method

.method public setNotiContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 727
    :cond_0
    return-void
.end method

.method public setPageNavigationVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 734
    :cond_0
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .line 556
    return-void
.end method

.method public setSViewPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V
    .locals 0
    .param p1, "sViewCoverPager"    # Lcom/sec/android/sviewcover/SViewCoverPager;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 560
    return-void
.end method

.method public setSettingContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 717
    :cond_0
    return-void
.end method

.method public setTTSMessage()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_settings_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCameraButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_camera_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mCircleNotiNormal:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_button_accessibiliy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 712
    return-void
.end method

.method public showNotiPageButton()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    :cond_0
    return-void
.end method

.method public showSettingPageButton()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 632
    :cond_0
    return-void
.end method

.method protected startCameraActivity()V
    .locals 4

    .prologue
    .line 516
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v2, "covermode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverNewUnlockArea"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateNotiArea(II)V
    .locals 5
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v1, 0x41500000    # 13.0f

    .line 568
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 569
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    if-le p1, v4, :cond_0

    .line 573
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 575
    :cond_0
    if-le p2, v4, :cond_1

    .line 576
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiMissedCallCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiUnreadMessageCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    .line 611
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->invalidate()V

    .line 612
    return-void

    .line 584
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiMultiContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    if-gtz p1, :cond_4

    if-lez p2, :cond_8

    .line 591
    :cond_4
    if-lez p1, :cond_6

    .line 592
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_missed_call:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 600
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showNotiPageButton()V

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    goto :goto_0

    .line 595
    :cond_6
    if-lez p2, :cond_5

    .line 596
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiSingleEventCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 603
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0

    .line 607
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0
.end method

.method public updateNotiPageButton(II)V
    .locals 2
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 563
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateNotiArea(II)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 565
    return-void
.end method
