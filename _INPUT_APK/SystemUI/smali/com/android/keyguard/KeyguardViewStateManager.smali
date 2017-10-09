.class public Lcom/android/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# static fields
.field private static final SCREEN_ON_HINT_DURATION:I = 0x3e8

.field private static final SCREEN_ON_RING_HINT_DELAY:I = 0x12c

.field private static final SHOW_INITIAL_PAGE_HINTS:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardViewStateManager"


# instance fields
.field private mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private final mPauseListener:Landroid/animation/Animator$AnimatorListener;

.field private final mResumeListener:Landroid/animation/Animator$AnimatorListener;

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 4
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 42
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 45
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 46
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 47
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 49
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 51
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    .line 57
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    .line 325
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$3;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I
    .locals 3
    .param p1, "frame"    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p2, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .locals 8
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;
    .param p3, "pt"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 228
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 231
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 233
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 234
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 235
    .local v0, "vX":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 237
    .local v1, "vY":I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 238
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 239
    return-void
.end method

.method private updateEdgeSwiping()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_0
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public fadeInSecurity(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 123
    return-void
.end method

.method public fadeOutSecurity(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 118
    return-void
.end method

.method public isBouncing()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChallengeShowing()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBouncerStateChanged(Z)V
    .locals 2
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 352
    if-eqz p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_0
.end method

.method public onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 129
    .local v0, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 134
    .end local v0    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iput-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 142
    :cond_2
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 3

    .prologue
    .line 201
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 146
    return-void
.end method

.method public onPageEndWarp()V
    .locals 3

    .prologue
    .line 207
    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 5
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 180
    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v3, p2, :cond_0

    .line 198
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 184
    .local v2, "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 186
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 190
    .local v1, "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v3}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 191
    .local v0, "challengeOverlapping":Z
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, p2, :cond_2

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 197
    .end local v0    # "challengeOverlapping":Z
    .end local v1    # "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_2
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 8
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v7, -0x1

    .line 149
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_1

    .line 150
    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 151
    .local v2, "isCameraPage":Z
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/android/keyguard/CameraWidgetFrame;

    .line 153
    .local v0, "camera":Lcom/android/keyguard/CameraWidgetFrame;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetPager;->isWarping()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CameraWidgetFrame;->setUseFastTransition(Z)V

    .line 155
    .end local v0    # "camera":Lcom/android/keyguard/CameraWidgetFrame;
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 156
    .local v4, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 157
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v1

    .line 158
    .local v1, "currentFlags":I
    if-eqz v2, :cond_4

    const/high16 v5, 0x2000000

    or-int v3, v1, v5

    .line 160
    .local v3, "newFlags":I
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 165
    .end local v1    # "currentFlags":I
    .end local v2    # "isCameraPage":Z
    .end local v3    # "newFlags":I
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 168
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v4}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 169
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 171
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_2
    iput v7, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 172
    return-void

    .line 156
    .restart local v2    # "isCameraPage":Z
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 158
    .restart local v1    # "currentFlags":I
    :cond_4
    const v5, -0x2000001

    and-int v3, v1, v5

    goto :goto_1
.end method

.method public onScrollPositionChanged(FI)V
    .locals 3
    .param p1, "scrollPosition"    # F
    .param p2, "challengeTop"    # I

    .prologue
    .line 318
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 319
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 320
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 321
    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5
    .param p1, "scrollState"    # I

    .prologue
    const/4 v4, 0x3

    .line 250
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-nez v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 254
    .local v0, "challengeOverlapping":Z
    if-nez p1, :cond_8

    .line 255
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 256
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 258
    if-nez v0, :cond_2

    .line 259
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_6

    .line 260
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 261
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 266
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 271
    :cond_3
    if-eq p1, v4, :cond_4

    .line 272
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 274
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 276
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 281
    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 313
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_5
    :goto_3
    iput p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_0

    .line 263
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_1

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_2

    .line 282
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_8
    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_5

    .line 286
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 287
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 288
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_b

    .line 292
    if-eq p1, v4, :cond_9

    .line 293
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 298
    :cond_9
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 300
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 301
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 311
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_3

    .line 304
    :cond_b
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    .line 306
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_4
.end method

.method public setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/keyguard/ChallengeLayout;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 77
    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p1, "pagedView"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 72
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V
    .locals 0
    .param p1, "container"    # Lcom/android/keyguard/KeyguardSecurityView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    .line 105
    return-void
.end method

.method public showBouncer(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->showBouncer()V

    .line 109
    return-void
.end method

.method public showUsabilityHints()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardViewStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardViewStateManager$4;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    :cond_0
    return-void
.end method
