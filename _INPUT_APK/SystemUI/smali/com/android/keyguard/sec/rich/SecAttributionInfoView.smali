.class public Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
.super Landroid/widget/LinearLayout;
.source "SecAttributionInfoView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final KEY_LIVEWALLPAPER_ATTRIBUTION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_attribution_url"

.field private static final KEY_LIVEWALLPAPER_LOCATION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_location_url"

.field private static final KEY_WALLPAPER_INFO_LANDING_PAGE_URL:Ljava/lang/String; = "keyguard_wu_wallpaper_info_landing_page_url"

.field private static final KEY_WALLPAPER_INFO_LOGO_IMAGE_PATH:Ljava/lang/String; = "keyguard_wu_wallpaper_info_logo_image_path"

.field private static final KEY_WALLPAPER_INFO_PHOTOGRAPHER:Ljava/lang/String; = "keyguard_wu_wallpaper_info_cp_name"

.field private static final KEY_WALLPAPER_INFO_TITLE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_title"

.field private static final TAG:Ljava/lang/String; = "SecAttributionInfoView"

.field private static mCocktailBarSize:I


# instance fields
.field private final MSG_DELAYED_START_ACTIVITY:I

.field private final START_ACTIVITY_DELAY:I

.field private locationUrl:Ljava/lang/String;

.field private mAttributionRootView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field mDelayedStartActivityHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mLandingPageUrl:Ljava/lang/String;

.field private mLiveviewAttributionView:Landroid/view/View;

.field private mLiveviewLocationView:Landroid/view/View;

.field private mLiveviewRootView:Landroid/view/View;

.field private mLogoChangeHandler:Landroid/os/Handler;

.field private mLogoFileObserverRegistered:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhotographer:Landroid/widget/TextView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCocktailBarSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCurrentOrientation:I

    .line 91
    new-instance v1, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    .line 101
    const/16 v1, 0x2711

    iput v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->MSG_DELAYED_START_ACTIVITY:I

    .line 102
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->START_ACTIVITY_DELAY:I

    .line 103
    new-instance v1, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$2;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mDelayedStartActivityHandler:Landroid/os/Handler;

    .line 176
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 178
    .local v0, "winMng":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    .line 183
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 1
    .param p1, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->launchLandingPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerLogoImageFileObserver()V
    .locals 5

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 483
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$9;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$9;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 116
    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 117
    .local v4, "user":Landroid/os/UserHandle;
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 151
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$3;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterLogoImageFileObserver()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    goto :goto_0
.end method

.method private updateAttributionInfo()V
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 348
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V

    .line 349
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateTitle()V

    .line 350
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updatePhotographer()V

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLogoImage(Z)V

    .line 352
    return-void
.end method

.method private updateAttributionInfoView()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 355
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    .line 360
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 361
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 362
    const/4 v0, 0x0

    .line 368
    :cond_2
    :goto_2
    if-nez v0, :cond_6

    .line 369
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 370
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_4
    move v0, v5

    .line 358
    goto :goto_1

    .line 364
    .restart local v0    # "enabled":Z
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    goto :goto_2

    .line 376
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_title"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "imageTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "logoFilePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "imageCPName":Ljava/lang/String;
    const-string v6, "SecAttributionInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imageTitle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", logoFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imageCPName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 390
    .local v4, "noInformationToShow":Z
    :cond_9
    :goto_3
    if-eqz v4, :cond_b

    .line 391
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 392
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v4    # "noInformationToShow":Z
    :cond_a
    move v4, v5

    .line 386
    goto :goto_3

    .line 394
    .restart local v4    # "noInformationToShow":Z
    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_c

    .line 395
    iget-object v6, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    new-instance v6, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$8;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateLiveviewViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 296
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v0

    .line 299
    :cond_2
    if-nez v0, :cond_6

    .line 300
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_5
    move v0, v1

    .line 294
    goto :goto_1

    .line 311
    .restart local v0    # "enabled":Z
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    .line 312
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 315
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$6;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$7;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateLogoImage(Z)V
    .locals 4
    .param p1, "updatedByFileChanged"    # Z

    .prologue
    .line 450
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "logoFilePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 457
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 459
    .local v1, "logoImageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 460
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfoView()V

    goto :goto_0

    .line 469
    .end local v1    # "logoImageBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-nez p1, :cond_4

    .line 470
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->registerLogoImageFileObserver()V

    .line 472
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 527
    .local v0, "ori":I
    iget v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 528
    const-string v1, "SecAttributionInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change orientation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iput v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCurrentOrientation:I

    .line 530
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->adjustCocktailBarMargin()V

    goto :goto_0
.end method

.method private updatePhotographer()V
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "imageCPName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_title"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "imageTitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustCocktailBarMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 542
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .local v1, "layoutParamsLiveView":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 549
    iget v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 550
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 551
    sget v2, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 552
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 553
    sget v2, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 561
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 555
    :cond_2
    sget v2, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 556
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 557
    sget v2, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 558
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method public launchLandingPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "landingPageUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v1, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$4;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    .line 169
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 201
    const-string v3, "SecAttributionInfoView"

    const-string v4, "onAttachedToWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    .local v0, "inflator":Landroid/view/LayoutInflater;
    sget v3, Lcom/android/keyguard/R$layout;->sec_attribution_info_view:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 211
    sget v3, Lcom/android/keyguard/R$id;->attribution_info_rootview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    .line 212
    sget v3, Lcom/android/keyguard/R$id;->attribution_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    .line 213
    sget v3, Lcom/android/keyguard/R$id;->attribution_photographer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    .line 214
    sget v3, Lcom/android/keyguard/R$id;->attribution_logo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    .line 216
    sget v3, Lcom/android/keyguard/R$id;->liveview_hidden_rootview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    .line 217
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 220
    sget v3, Lcom/android/keyguard/R$id;->liveview_hidden_locationview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    .line 222
    :cond_2
    sget v3, Lcom/android/keyguard/R$id;->liveview_hidden_attributionview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    .line 224
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 226
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    .line 228
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    .line 233
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    .line 236
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v3, :cond_4

    .line 238
    new-instance v3, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$5;-><init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 246
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 248
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->enable()V

    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateOrientation()V

    .line 254
    :cond_6
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    const-string v0, "SecAttributionInfoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 268
    iput-object v2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 271
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 272
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 575
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 569
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 197
    :cond_2
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "securityContainer"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p2, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 277
    iput-object p2, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 278
    return-void
.end method

.method setRippleBackgroudcolor(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 578
    if-nez p1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 582
    .local v0, "d":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->dynamiclock_ripple_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public shoudNotDisplayView()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isMusicBackgroundSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

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

.method public update()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLiveviewViews()V

    .line 285
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateAttributionInfo()V

    goto :goto_0
.end method
