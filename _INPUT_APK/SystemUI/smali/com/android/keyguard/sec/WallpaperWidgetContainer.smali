.class public Lcom/android/keyguard/sec/WallpaperWidgetContainer;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidgetContainer.java"


# static fields
.field private static final COLLAPSED:I = 0x2

.field private static final EXPANDED:I = 0x0

.field private static final EXPANDING:I = 0x1

.field private static final INTENT_WALLPAPER_NEXT_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

.field private static final INTENT_WALLPAPER_PINUP_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

.field private static final INTENT_WALLPAPER_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

.field private static final MORE_CLOSE_IMAGE:I

.field private static final MORE_OPEN_IMAGE:I

.field private static final MSG_COLLAPSED:I = 0x3ea

.field private static final MSG_EXPANDED:I = 0x3e9

.field private static final MSG_EXPANDING:I = 0x3e8

.field private static final MSG_NEXT:I = 0x3ec

.field private static final MSG_PINUP:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetContainer"


# instance fields
.field private isRichLockWallpaper:Z

.field private mBackgroundAnim:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private mMoreButton:Landroid/widget/ImageView;

.field private mNextButton:Landroid/view/View;

.field private mPinButton:Landroid/widget/ImageView;

.field private mPinUpState:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueueImg:Landroid/view/View;

.field private mQueueLayout:Landroid/view/ViewGroup;

.field private mState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetItems:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_close:I

    sput v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    .line 48
    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_open:I

    sput v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    .line 64
    iput-boolean v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    .line 258
    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 275
    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    .line 312
    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->init()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->startBackgroundAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->startExpendingAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/WallpaperWidgetContainer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/WallpaperWidgetContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private calculateDstPosition(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 220
    iget v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    sub-float v0, p1, v3

    .line 221
    .local v0, "dstPoint":F
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v1

    .line 223
    .local v1, "maxPoint":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    move v1, v2

    .line 229
    .end local v1    # "maxPoint":F
    :cond_0
    :goto_0
    return v1

    .line 225
    .restart local v1    # "maxPoint":F
    :cond_1
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    move v1, v0

    .line 229
    goto :goto_0
.end method

.method private createMoreButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 109
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method private createWidgetItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->createMoreButton()V

    .line 121
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_background:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 122
    .local v0, "widgetBackground":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_remote:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 125
    .local v1, "widgetRemote":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->pin_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    .line 128
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->next_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->menu_queue:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->queue_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    .line 132
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-boolean v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setPinUpState(Z)V

    .line 147
    return-void
.end method

.method private getMaxPosition()F
    .locals 4

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v1

    .line 215
    .local v1, "viewHeight":I
    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 216
    .local v0, "containerHeight":I
    sub-int v2, v0, v1

    int-to-float v2, v2

    return v2
.end method

.method private getMoreImageSize()I
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 93
    sget v0, Lcom/android/keyguard/R$id;->keyguard_widget_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "isRichLockWallpaper() add widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->createWidgetItem()V

    .line 102
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "not isRichLockWallpaper() remove widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relayoutParam(Z)V
    .locals 5
    .param p1, "expanding"    # Z

    .prologue
    .line 368
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 370
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 372
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->wallpaper_widget_width_include_ripple:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 373
    .local v2, "rippleWidth":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 380
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->requestLayout()V

    .line 383
    return-void

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setBackgroundVisibility(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 357
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v4, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 358
    .local v0, "backgroundView":Landroid/widget/FrameLayout;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    if-nez p1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 358
    goto :goto_0

    .line 362
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreButtonVisibility(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :goto_1
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setPinUpState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 326
    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinned_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinup_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRemoteButtonVisibility(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 352
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void

    :cond_0
    move v0, v2

    .line 352
    goto :goto_0

    :cond_1
    move v1, v2

    .line 353
    goto :goto_1
.end method

.method private setVisibilityView(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    .line 336
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setMoreButtonVisibility(I)V

    .line 337
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setRemoteButtonVisibility(I)V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    .line 339
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->relayoutParam(Z)V

    .line 340
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSmooth(ILandroid/view/View;)V
    .locals 4
    .param p1, "expanding"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 415
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 416
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 418
    .local v1, "fadeAnim":Landroid/animation/ObjectAnimator;
    if-nez p1, :cond_0

    .line 419
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 424
    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 425
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 426
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 427
    return-void

    .line 421
    :cond_0
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 419
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 421
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBackgroundAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 393
    .local v0, "fadeAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 394
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 396
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 397
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 398
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 399
    return-void

    .line 392
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startExpendingAnimation(I)V
    .locals 2
    .param p1, "expanding"    # I

    .prologue
    .line 402
    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    if-ne v0, p1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    .line 406
    if-nez p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 235
    const-string v1, "WallpaperWidgetContainer"

    const-string v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->init()V

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x3ea

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 151
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 153
    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    if-nez v5, :cond_2

    .line 199
    :cond_1
    :goto_0
    return v8

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 158
    .local v0, "action":I
    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    if-eqz v5, :cond_1

    .line 159
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownX:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    goto :goto_0

    .line 165
    :pswitch_1
    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 166
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->calculateDstPosition(F)F

    move-result v2

    .line 175
    .local v2, "dst":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    div-float v6, v2, v6

    sub-float v1, v5, v6

    .line 177
    .local v1, "alpha":F
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 178
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 181
    .end local v1    # "alpha":F
    .end local v2    # "dst":F
    :pswitch_2
    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownX:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v4

    .line 183
    .local v4, "maxPoint":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    sub-float v3, v5, v6

    .line 185
    .local v3, "dstPoint":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    .line 186
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 188
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 193
    .end local v3    # "dstPoint":F
    .end local v4    # "maxPoint":F
    :pswitch_3
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onOutsideTouch()V
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    :cond_0
    return-void
.end method
