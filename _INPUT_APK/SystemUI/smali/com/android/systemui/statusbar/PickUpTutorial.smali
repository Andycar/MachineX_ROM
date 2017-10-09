.class public Lcom/android/systemui/statusbar/PickUpTutorial;
.super Landroid/app/Activity;
.source "PickUpTutorial.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final HELP_PLUG_PKG:Ljava/lang/String; = "com.samsung.helpplugin"

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_OFF_STATE:I = 0x5

.field private static final LCD_ON:I = 0x3

.field private static final LCD_ON_STATE:I = 0x6

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpTutorial"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field mAnimation:Landroid/view/animation/Animation;

.field private mBack:Z

.field private mCount:I

.field private mDownDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLCDisOn:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPaused:Z

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickUpDialog:Landroid/app/AlertDialog;

.field private mPickUpTutorial:Landroid/widget/FrameLayout;

.field private mReadyToShowPutDownDialog:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 75
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    .line 76
    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    .line 83
    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 91
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$1;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$2;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 91
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x64t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x4ft
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/PickUpTutorial;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method private canNavigationBarMove()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ResourceName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "mResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 496
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 497
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 506
    :goto_0
    if-eqz v2, :cond_2

    .line 507
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 509
    const-string v4, "STATUSBAR-PickUpTutorial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ResourceName id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v1    # "id":I
    :goto_1
    return v1

    .line 499
    :cond_0
    :try_start_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "PackageManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 500
    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "id":I
    :cond_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "not find resource!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 513
    goto :goto_1

    .line 516
    .end local v1    # "id":I
    :cond_2
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "Resource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 517
    goto :goto_1
.end method

.method private putDownDialog()V
    .locals 4

    .prologue
    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 331
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 376
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$3;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 385
    return-void
.end method

.method public static setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewer"    # Landroid/view/View;
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 522
    move-object v2, p1

    .line 523
    .local v2, "mImageViewer":Landroid/view/View;
    move-object v1, p0

    .line 524
    .local v1, "mContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 525
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 526
    const-string v6, "drawable"

    const-string v7, "com.samsung.helpplugin"

    invoke-static {v1, p2, v6, v7}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 528
    .local v5, "resId":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 530
    :try_start_0
    const-string v6, "com.samsung.helpplugin"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 532
    .local v3, "mResources":Landroid/content/res/Resources;
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v3    # "mResources":Landroid/content/res/Resources;
    .end local v5    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local v5    # "resId":I
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 537
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v6, "STATUSBAR-PickUpTutorial"

    const-string v7, "The resource not downloaded yet"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryPickUpDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 439
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 445
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    return-void
.end method


# virtual methods
.method public isDownloadable()Z
    .locals 2

    .prologue
    .line 487
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_HELP_HUB_APK_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 231
    sparse-switch p2, :sswitch_data_0

    .line 254
    const-string v1, "STATUSBAR-PickUpTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 233
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    :cond_1
    const-string v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 242
    .local v0, "lightThemeContext":Landroid/content/Context;
    :goto_1
    const v1, 0x7f0d0473

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    .line 244
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    .line 240
    .end local v0    # "lightThemeContext":Landroid/content/Context;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    .restart local v0    # "lightThemeContext":Landroid/content/Context;
    goto :goto_1

    .line 250
    .end local v0    # "lightThemeContext":Landroid/content/Context;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->finish()V

    .line 325
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 471
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 477
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 101
    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    .line 102
    sput-object p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setContentView(I)V

    .line 109
    const v0, 0x7f0e01c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 131
    :goto_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    .line 132
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 146
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f050012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    .line 148
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 149
    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->putDownDialog()V

    .line 153
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020219

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 293
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 295
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 303
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    .line 281
    iput v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    .line 282
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    .line 283
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 288
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 310
    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 260
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionSensor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 265
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 266
    if-eqz p1, :cond_1

    .line 267
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
