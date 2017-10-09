.class public Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverUnlockArea.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverUnlockArea"


# instance fields
.field private final MAKE_TARGET_DURATION:I

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field private mCameraBgPressed:Landroid/widget/ImageView;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCircleLeft:Landroid/widget/ImageView;

.field private mCircleRight:Landroid/widget/ImageView;

.field private mDistance:D

.field private mIsFirstNoti:Z

.field private mIsFirstShortCut:Z

.field private mIsShowingNoti:Z

.field private mIsTouchNoti:Z

.field private mIsTouchShortcut:Z

.field private mNotiBgPressed:Landroid/widget/ImageView;

.field private mNotiButton:Landroid/widget/ImageView;

.field private mNotiContainer:Landroid/widget/RelativeLayout;

.field private mNotiStartX:F

.field private mNotiStartY:F

.field private mPM:Landroid/os/PowerManager;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

.field private mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

.field private mSecondBorder:D

.field private mShortCutButton:Landroid/widget/ImageView;

.field private mShortcutStartX:F

.field private mShortcutStartY:F

.field private mThirdLevalUnlockView:Landroid/view/View;

.field private mTwoLevalUnlockView:Landroid/view/View;

.field private mUnlockLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchShortcut:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchNoti:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mDistance:D

    .line 69
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->MAKE_TARGET_DURATION:I

    .line 84
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->s_view_cover_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->isUsimDownloadTopActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiStartX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiStartX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiStartY:F

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiStartY:F

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mCircleLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mArrowLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchNoti:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchNoti:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortcutStartX:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortcutStartX:F

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortcutStartY:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortcutStartY:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # D

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchShortcut:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsTouchShortcut:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method private isUsimDownloadTopActivity()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 373
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 375
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 377
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 378
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.phone.UsimDownload"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private updateCircleAndArrowThirdLevel(ZLandroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "isActive"    # Z
    .param p2, "circle"    # Landroid/view/View;
    .param p3, "arrow"    # Landroid/view/View;

    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 347
    if-eqz p1, :cond_0

    .line 348
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 350
    .local v8, "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 352
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 354
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 355
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 357
    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 362
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-virtual {p2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .end local v0    # "scaleAni":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 367
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 368
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 314
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 317
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 318
    return-void
.end method

.method public handleHideIconsOnly()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 306
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstNoti:Z

    .line 307
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsFirstShortCut:Z

    .line 308
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isInputEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public handleShowIconsOnly()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    return-void
.end method

.method protected handleUnlockNotiCircle()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 237
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 241
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 246
    :cond_1
    return-void
.end method

.method protected handleUnlockShortCutCircle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 252
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 256
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "SViewCoverUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUnlockNotiCircle( getPageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->getPageCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 259
    const-string v0, "SViewCoverUnlockArea"

    const-string v1, "handleUnlockNotiCircle( snapToPage to 1 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->snapToPage(I)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 267
    :cond_1
    return-void

    .line 262
    :cond_2
    const-string v0, "SViewCoverUnlockArea"

    const-string v1, "handleUnlockNotiCircle( snapToPage to 2 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0
.end method

.method public hideNotiPageButton()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 291
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 231
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_two_level_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mUnlockLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    .line 93
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_circle_left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mCircleLeft:Landroid/widget/ImageView;

    .line 94
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_circle_right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mCircleRight:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_right:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mArrowRight:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_left:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mArrowLeft:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_page_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortCutButton:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mShortCutButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_noti_page_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiButton:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverUnlockArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public setPagerNavigation(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .line 276
    return-void
.end method

.method public setSViewPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V
    .locals 0
    .param p1, "sViewCoverPager"    # Lcom/sec/android/sviewcover/SViewCoverPager;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 280
    return-void
.end method

.method public showNotiPageButton()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mNotiContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mIsShowingNoti:Z

    .line 285
    return-void
.end method

.method public updateCircleAndArrow(ZLandroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "isActive"    # Z
    .param p2, "circle"    # Landroid/view/View;
    .param p3, "arrow"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 321
    if-eqz p1, :cond_0

    .line 322
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    .local v8, "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 326
    .local v0, "scaleAni":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 328
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 329
    .local v7, "alphaAni":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 331
    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    invoke-virtual {v8, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 336
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    invoke-virtual {p3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v0    # "scaleAni":Landroid/view/animation/ScaleAnimation;
    .end local v7    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "makeTargetAniSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 341
    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
