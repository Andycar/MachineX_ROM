.class public Lcom/android/keyguard/KeyguardWidgetPager;
.super Lcom/android/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Lcom/android/keyguard/PagedView$PageSwitchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x7530L

.field private static final FLAG_HAS_LOCAL_HOUR:I = 0x1

.field private static final FLAG_HAS_LOCAL_MINUTE:I = 0x2

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCameraEventInProgress:Z

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x461c4000    # 10000.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 54
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 68
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 75
    iput v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 79
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 87
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 88
    const v0, 0x3f2b851f    # 0.67f

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    .line 109
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardWidgetPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 245
    .local v0, "currentWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 417
    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    return-void
.end method

.method private static findClockInHierarchy(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 904
    instance-of v4, p0, Landroid/widget/TextClock;

    if-eqz v4, :cond_1

    .line 905
    check-cast p0, Landroid/widget/TextClock;

    .end local p0    # "view":Landroid/view/View;
    invoke-static {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getClockFlags(Landroid/widget/TextClock;)I

    move-result v0

    .line 915
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 907
    const/4 v0, 0x0

    .local v0, "flags":I
    move-object v1, p0

    .line 908
    check-cast v1, Landroid/view/ViewGroup;

    .line 909
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 910
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 911
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v4

    or-int/2addr v0, v4

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 915
    .end local v0    # "flags":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClockFlags(Landroid/widget/TextClock;)I
    .locals 6
    .param p0, "clock"    # Landroid/widget/TextClock;

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, "timeZone":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 930
    const/4 v4, 0x0

    .line 944
    :goto_0
    return v4

    .line 933
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 934
    .local v1, "format":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0x6b

    .line 937
    .local v2, "hour":C
    :goto_1
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 938
    or-int/lit8 v0, v0, 0x1

    .line 940
    :cond_1
    const/16 v4, 0x6d

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 941
    or-int/lit8 v0, v0, 0x2

    :cond_2
    move v4, v0

    .line 944
    goto :goto_0

    .line 934
    .end local v2    # "hour":C
    :cond_3
    const/16 v2, 0x68

    goto :goto_1
.end method

.method private updatePageAlphaValues(I)V
    .locals 0
    .param p1, "screenCenter"    # I

    .prologue
    .line 499
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 2
    .param p1, "frame"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 220
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    .line 212
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 214
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 383
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 384
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;II)V

    .line 394
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 413
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 403
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 278
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 279
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .locals 12
    .param p1, "widget"    # Landroid/view/View;
    .param p2, "pageIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 325
    instance-of v7, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_3

    .line 326
    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 327
    .local v3, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 333
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 334
    invoke-virtual {v3, p1, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    move-object v0, p1

    .line 338
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 339
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 340
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 341
    invoke-virtual {v3, v11}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 354
    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 356
    .local v6, "pageLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 357
    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 359
    if-ne p2, v8, :cond_4

    .line 360
    invoke-virtual {p0, v3, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    :goto_1
    if-ne p1, v3, :cond_5

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 367
    .local v1, "content":Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_1

    .line 368
    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget:I

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 373
    .end local v2    # "contentDescription":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    .line 374
    return-void

    .line 344
    .end local v1    # "content":Landroid/view/View;
    .end local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 345
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_0

    .line 346
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v3    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object v3, p1

    .line 351
    check-cast v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    .restart local v3    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    goto :goto_0

    .line 362
    .restart local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    .line 366
    goto :goto_2
.end method

.method animateOutlinesAndSidePages(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 683
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 684
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .locals 13
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 695
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    .line 696
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 697
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    .line 701
    .local v4, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 704
    if-eqz p1, :cond_2

    const/16 p2, 0x64

    .line 708
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    .line 709
    .local v5, "curPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 711
    if-eqz p1, :cond_3

    .line 712
    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    .line 718
    .local v6, "finalContentAlpha":F
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 720
    .local v3, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 721
    .local v1, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 722
    .local v0, "a":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    if-eqz p1, :cond_5

    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    .line 725
    .local v7, "finalOutlineAlpha":F
    :goto_3
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 709
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 704
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v5    # "curPage":I
    .end local v6    # "finalContentAlpha":F
    .end local v7    # "finalOutlineAlpha":F
    .end local v8    # "i":I
    :cond_2
    const/16 p2, 0x177

    goto :goto_0

    .line 713
    .restart local v5    # "curPage":I
    .restart local v8    # "i":I
    :cond_3
    if-nez p1, :cond_4

    if-ne v8, v5, :cond_4

    .line 714
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2

    .line 716
    .end local v6    # "finalContentAlpha":F
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2

    .line 724
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 728
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v6    # "finalContentAlpha":F
    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 729
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 731
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 732
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 755
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 756
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .locals 4
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    if-eqz p1, :cond_1

    .line 582
    :goto_0
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_0

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_0

    .line 585
    :cond_0
    :goto_1
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_1

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_1

    .line 589
    :cond_1
    return-void
.end method

.method protected disablePageContentLayers()V
    .locals 3

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 465
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 466
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method protected enablePageContentLayers()V
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 458
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .locals 3
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 502
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_2
    if-nez p3, :cond_0

    .line 508
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    .line 513
    if-eqz p3, :cond_0

    .line 514
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserActivityTimeout()J
    .locals 6

    .prologue
    .line 253
    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "page":Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 255
    check-cast v1, Landroid/view/ViewGroup;

    .line 256
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 257
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/keyguard/KeyguardStatusView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-nez v3, :cond_0

    .line 259
    const-wide/16 v4, 0x7530

    .line 262
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 787
    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 791
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method public handleExternalCameraEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->beginCameraEvent()V

    .line 949
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 950
    .local v0, "cameraPage":I
    const/4 v1, 0x0

    .line 951
    .local v1, "endWarp":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    if-eqz v2, :cond_1

    .line 952
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 964
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 966
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->endCameraEvent()V

    .line 967
    return-void

    .line 956
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    .line 957
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    goto :goto_0

    .line 961
    :pswitch_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    goto :goto_0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hideOutlinesAndSidePages()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 614
    return-void
.end method

.method isAddPage(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 884
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isCameraPage(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/CameraWidgetFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isOverScrollChild(IF)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 522
    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mMaxScrollX:I

    if-le v3, v4, :cond_3

    :cond_0
    move v0, v1

    .line 523
    .local v0, "isInOverscroll":Z
    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    cmpl-float v3, p2, v5

    if-lez v3, :cond_4

    :cond_2
    :goto_1
    return v1

    .end local v0    # "isInOverscroll":Z
    :cond_3
    move v0, v2

    .line 522
    goto :goto_0

    .restart local v0    # "isInOverscroll":Z
    :cond_4
    move v1, v2

    .line 523
    goto :goto_1
.end method

.method public isWidgetPage(I)Z
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 564
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v2

    .line 567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 569
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 570
    .local v0, "kwf":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 302
    move-object v2, p1

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 303
    .local v0, "appWidgetId":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 304
    .local v1, "pagesRange":[I
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    .line 305
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 306
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 644
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onAttachedToWindow()V

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 646
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 0
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 804
    if-eqz p1, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 809
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onDetachedFromWindow()V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 122
    return-void
.end method

.method protected onEndReordering()V
    .locals 0

    .prologue
    .line 604
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onEndReordering()V

    .line 605
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 606
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 763
    .local v0, "isChallengeOverlapping":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    :goto_1
    return v1

    .end local v0    # "isChallengeOverlapping":Z
    :cond_0
    move v0, v2

    .line 761
    goto :goto_0

    .restart local v0    # "isChallengeOverlapping":Z
    :cond_1
    move v1, v2

    .line 766
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x1

    .line 649
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    .line 650
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    .line 652
    const/4 v4, -0x1

    .line 653
    .local v4, "maxChallengeTop":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 654
    .local v5, "parent":Landroid/view/View;
    const/4 v0, 0x0

    .line 658
    .local v0, "challengeShowing":Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_1

    .line 659
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 660
    .local v6, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 664
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 665
    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 667
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 668
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 669
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 670
    .local v2, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 673
    if-eqz v0, :cond_0

    iget v8, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-ne v3, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_0

    .line 674
    invoke-virtual {v2, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 668
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v1    # "count":I
    .end local v2    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v3    # "i":I
    .end local v6    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    .end local v7    # "top":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->onMeasure(II)V

    .line 679
    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 680
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 437
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 441
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginWarp()V

    .line 193
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 451
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 454
    :cond_1
    return-void
.end method

.method public onPageEndWarp()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 199
    .local v0, "duration":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndWarp()V

    .line 201
    return-void

    .line 198
    .end local v0    # "duration":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 10
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "showingClock":Z
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 143
    check-cast v5, Landroid/view/ViewGroup;

    .line 144
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_0

    .line 145
    const/4 v4, 0x1

    .line 149
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 151
    const/4 v4, 0x1

    .line 155
    :cond_1
    if-eqz v4, :cond_6

    .line 156
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 162
    :goto_0
    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_4

    .line 163
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 164
    .local v2, "oldPageIndex":I
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 165
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 167
    .local v3, "oldWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 170
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 171
    .local v1, "newWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 173
    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 174
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    .line 176
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 177
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 179
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 181
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 184
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "newWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "oldPageIndex":I
    .end local v3    # "oldWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_5

    .line 185
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 187
    :cond_5
    return-void

    .line 158
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 282
    move-object v1, p1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 283
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    .line 299
    :cond_0
    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    .line 598
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 599
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 600
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 430
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    .line 492
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 770
    instance-of v2, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    .line 784
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    .line 776
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 777
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 778
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    .line 779
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 781
    .end local v0    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_1
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reorderStarting()V
    .locals 0

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 593
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 529
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 530
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 533
    .local v5, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_1

    .line 531
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    if-eqz v5, :cond_0

    .line 535
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 537
    .local v4, "scrollProgress":F
    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDensity:F

    sget v8, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 539
    invoke-virtual {p0, v1, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 540
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 541
    .local v2, "pivotX":F
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 542
    .local v3, "pivotY":F
    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 543
    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 544
    sget v6, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 545
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v8, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 551
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :goto_3
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 554
    .local v0, "alpha":F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_4

    .line 555
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "alpha":F
    .restart local v2    # "pivotX":F
    .restart local v3    # "pivotY":F
    :cond_2
    move v6, v7

    .line 545
    goto :goto_2

    .line 547
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_3
    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 548
    invoke-virtual {v5, v9, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    .line 556
    .restart local v0    # "alpha":F
    :cond_4
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 557
    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .line 561
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    .end local v5    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_5
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 205
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->sendAccessibilityEvent(I)V

    .line 208
    :cond_1
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    .line 870
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->measure(II)V

    .line 872
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 873
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 875
    sget v1, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 876
    .local v0, "addWidget":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 877
    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setBouncerAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 812
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 813
    return-void
.end method

.method public setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 267
    return-void
.end method

.method setCurrentPage(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 637
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    .line 639
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 640
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 130
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 798
    .local v0, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 799
    return-void
.end method

.method public setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .locals 0
    .param p1, "viewStateManager"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 126
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .locals 0
    .param p1, "widget"    # I

    .prologue
    .line 687
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 688
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 895
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInitialPageHints()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 632
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    .line 633
    return-void
.end method

.method showOutlinesAndSidePages()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 610
    return-void
.end method

.method public showPagingFeedback()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method updateChildrenContentAlpha(F)V
    .locals 5
    .param p1, "sidePageAlpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 617
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 618
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 619
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 620
    .local v0, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq v2, v3, :cond_0

    .line 621
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 622
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 618
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 625
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_1

    .line 628
    .end local v0    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_1
    return-void
.end method

.method zoomInFromBouncer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 817
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 821
    .local v0, "currentPage":Landroid/view/View;
    if-nez v0, :cond_2

    .line 834
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 822
    .restart local v0    # "currentPage":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    .line 823
    :cond_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 824
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 827
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 828
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 831
    :cond_4
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_1

    .line 832
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "currentPage":Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_0
.end method

.method zoomOutToBouncer()V
    .locals 9

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 838
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    .line 842
    .local v0, "curPage":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 843
    .local v1, "currentPage":Landroid/view/View;
    if-nez v1, :cond_2

    .line 863
    .end local v1    # "currentPage":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 844
    .restart local v1    # "currentPage":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 848
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 849
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 851
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_4

    .line 852
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 853
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 856
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 857
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 858
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 860
    :cond_4
    instance-of v2, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_1

    .line 861
    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v1    # "currentPage":Landroid/view/View;
    invoke-virtual {v1, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_0
.end method
