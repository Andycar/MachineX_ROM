.class public Lcom/android/settings/BrightnessFragment;
.super Landroid/app/DialogFragment;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field brightnessModeLayout:Landroid/view/View;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxButton:Landroid/widget/TextView;

.field private mCurBrightness:I

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessMaximum:I

.field private mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private mTwSeekBar:Landroid/widget/SeekBar;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field private supportAutoBrightnessDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    .line 124
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    .line 138
    new-instance v0, Lcom/android/settings/BrightnessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$1;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 146
    new-instance v0, Lcom/android/settings/BrightnessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$2;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 153
    new-instance v0, Lcom/android/settings/BrightnessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$3;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private BtoR(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 597
    iget v1, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    sub-int v1, p1, v1

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    rsub-int v2, v2, 0xff

    div-int v0, v1, v2

    .line 599
    .local v0, "progress":I
    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessFragment;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/BrightnessFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/BrightnessFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 464
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v1

    .line 465
    .local v1, "mode":I
    const/4 v0, 0x0

    .line 466
    .local v0, "brightness":F
    sget-boolean v2, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 468
    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 470
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 481
    :goto_0
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 472
    :cond_0
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 473
    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 478
    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 476
    :cond_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 485
    move v0, p1

    .line 487
    .local v0, "brightnessMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 489
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initializeView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 325
    const-string v0, "BrightnessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessFragment;->BtoR(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_5

    .line 327
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    .line 328
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 329
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 331
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 334
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 341
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 328
    goto :goto_0

    :cond_3
    move v0, v2

    .line 330
    goto :goto_1

    :cond_4
    move v1, v2

    .line 335
    goto :goto_2

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3
.end method

.method private static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFolderOpen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 610
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    .line 613
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 2

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, "result":Z
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 540
    :cond_0
    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    .prologue
    .line 570
    sget-object v3, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    .line 572
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 574
    move v1, v2

    .line 575
    .local v1, "val":I
    const-string v0, ""

    .line 576
    .local v0, "progressValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/settings/BrightnessFragment;->toDigitString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .end local v0    # "progressValue":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_0
    return-void
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 546
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 550
    .local v0, "checked":Z
    :goto_0
    const-string v3, "BrightnessFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBrightnessModeChanged :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 553
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 554
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 556
    if-eqz v0, :cond_4

    .line 557
    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    :cond_1
    :goto_2
    return-void

    .end local v0    # "checked":Z
    :cond_2
    move v0, v2

    .line 549
    goto :goto_0

    .restart local v0    # "checked":Z
    :cond_3
    move v1, v2

    .line 554
    goto :goto_1

    .line 562
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 344
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 348
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    .line 350
    :cond_1
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 351
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 355
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 8
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    const v7, 0x461c4000    # 10000.0f

    .line 495
    const-string v4, "BrightnessFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set brightness passed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v4, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 497
    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 498
    int-to-float v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v4, v5

    .line 500
    .local v3, "valf":F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 502
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 505
    :cond_0
    if-eqz p2, :cond_1

    .line 506
    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 507
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    .end local v0    # "power":Landroid/os/IPowerManager;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "valf":F
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 515
    .local v1, "range":I
    mul-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    .line 518
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 520
    .restart local v0    # "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 521
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 523
    :cond_3
    if-eqz p2, :cond_4

    .line 524
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 525
    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 526
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 530
    .end local v0    # "power":Landroid/os/IPowerManager;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 528
    .restart local v0    # "power":Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    .end local v0    # "power":Landroid/os/IPowerManager;
    .end local v1    # "range":I
    .restart local v3    # "valf":F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 581
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 582
    const-string v0, "BrightnessFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_1
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static final toDigitString(I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I

    .prologue
    .line 622
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 623
    .local v0, "mArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v1, "mBuilder":Ljava/lang/StringBuilder;
    const-string v2, "%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    .line 375
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 376
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    .line 394
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    if-le v0, v3, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 400
    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 402
    return-void

    :cond_1
    move v0, v2

    .line 391
    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 400
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 365
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 174
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "sensor"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 178
    .local v4, "sensorMgr":Landroid/hardware/SensorManager;
    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 179
    .local v3, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 180
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    .line 181
    .local v5, "sensorType":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 182
    iput-boolean v9, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v5    # "sensorType":I
    :cond_1
    :try_start_0
    sget-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 188
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    .line 189
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v2    # "pm":Landroid/os/PowerManager;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->isSupportAutoBrightnessDetail()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    .line 198
    iput v8, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 199
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    .line 203
    const-string v6, "BrightnessFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On create Brightness  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0, v9}, Lcom/android/settings/BrightnessFragment;->setShowsDialog(Z)V

    .line 206
    invoke-virtual {p0, v9, v10}, Lcom/android/settings/BrightnessFragment;->setStyle(II)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_brightness_detail"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iput-boolean v10, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    .line 220
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 228
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040038

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    .line 231
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f10008b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 232
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 235
    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f10008c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    .line 238
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f100089

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 239
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f10008e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    .line 240
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    invoke-direct {p0, v8}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f10008f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_brightness_detail"

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    .line 254
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    div-int/lit8 v1, v5, 0x14

    .line 255
    .local v1, "defaultProgress":I
    const-string v4, ""

    .line 256
    .local v4, "progressValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 257
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMode(I)V

    .line 258
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 259
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 267
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settings/BrightnessFragment;->toDigitString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .end local v1    # "defaultProgress":I
    .end local v4    # "progressValue":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f100087

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 270
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f100088

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    .line 272
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings/BrightnessFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$4;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    :cond_1
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 290
    .local v3, "mSharedPreference":Landroid/content/SharedPreferences;
    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    .line 291
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    invoke-virtual {p0, v5}, Lcom/android/settings/BrightnessFragment;->returnMaxBrightness(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    .line 293
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f100090

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    .line 295
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    .line 296
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 302
    :cond_3
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessFragment;->initializeView(Landroid/view/View;)V

    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a06ce

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 305
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 306
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/BrightnessFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$5;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/BrightnessFragment$6;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$6;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 246
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "mSharedPreference":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 370
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v4, 0x0

    .line 413
    const-string v1, "BrightnessFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressChanged progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_2

    .line 415
    if-eqz p3, :cond_0

    .line 416
    sget-object v1, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    sget-object v1, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1e7f

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 418
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 419
    iput v4, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    .line 420
    sget-object v1, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_1

    .line 424
    invoke-direct {p0, p2, v4}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    mul-int/lit8 v0, p2, 0x14

    .line 428
    .local v0, "val":I
    sget-object v1, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/BrightnessFragment;->toDigitString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 4
    .param p1, "seekBar"    # Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 436
    const-string v1, "BrightnessFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTwSeekBarSplitProgressChanged progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    mul-int/lit8 v0, p2, 0x14

    .line 451
    .local v0, "val":I
    sget-object v1, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/BrightnessFragment;->toDigitString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 457
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0
    .param p1, "seekBar"    # Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .prologue
    .line 384
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 461
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0
    .param p1, "seekBar"    # Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .prologue
    .line 387
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 405
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 408
    .end local p1    # "max":I
    :goto_0
    return p1

    .restart local p1    # "max":I
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method
