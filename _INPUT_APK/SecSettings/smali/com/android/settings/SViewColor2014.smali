.class public Lcom/android/settings/SViewColor2014;
.super Landroid/app/Activity;
.source "SViewColor2014.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;
    }
.end annotation


# static fields
.field static final WALLPAPER_PREPARED_DB_ID:I

.field private static mColorDBIdArray:[I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mColorResourceArray:[I

.field private mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

.field private mCurrentCoverBackgroundDbId:I

.field private mCurrentCoverBackgroundResId:I

.field private mCurrentRealCoverColor:I

.field mCutsomButtonBackground:Landroid/widget/ImageView;

.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mImageButtonListner:Landroid/view/View$OnClickListener;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsChangedInside:Z

.field private mIsComeFromGallery:Z

.field private mIsOptionMenuFocused:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mPreview:Landroid/widget/FrameLayout;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    .line 98
    sget-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    sput v0, Lcom/android/settings/SViewColor2014;->WALLPAPER_PREPARED_DB_ID:I

    return-void

    .line 94
    :array_0
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    .line 100
    new-array v0, v2, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    .line 138
    new-instance v0, Lcom/android/settings/SViewColor2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$1;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    new-instance v0, Lcom/android/settings/SViewColor2014$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$6;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    .line 517
    new-instance v0, Lcom/android/settings/SViewColor2014$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$7;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    .line 680
    return-void

    .line 85
    nop

    :array_0
    .array-data 4
        0x7f0205d9
        0x7f0205da
        0x7f0205db
        0x7f0205dc
        0x7f0205dd
        0x7f0205de
        0x7f0205df
        0x7f0205e0
        0x9
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor2014;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/SViewColor2014;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SViewColor2014;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor2014;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SViewColor2014;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/SViewColor2014;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    return p1
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SViewColor2014;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->saveWallpaperFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SViewColor2014;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SViewColor2014;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/SViewColor2014;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/SViewColor2014;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/SViewColor2014;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/SViewColor2014;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor2014;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    return-object v0
.end method

.method public static getAppropriateSampleSize(Ljava/lang/String;II)I
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 640
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 641
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 642
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 644
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 645
    .local v0, "imageHeight":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 646
    .local v1, "imageWidth":I
    div-int v4, v1, p1

    div-int v5, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 648
    .local v3, "sampleSize":I
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " imageSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " destSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sampleSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v3
.end method

.method private getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const v10, 0x7f0f03db

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sview_bg_wallpaper_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "mPath":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 612
    const-string v3, "/data/data/com.android.systemui/files/wallpaper_images/cover_wallpaper.jpg"

    .line 615
    :goto_0
    const-string v7, "SViewColor2014"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCustomWallpaperBitmapForThumb mPath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 623
    .local v6, "screenWidth":I
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 625
    .local v5, "screenHeight":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 626
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v3, v6, v5}, Lcom/android/settings/SViewColor2014;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 628
    :try_start_0
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 635
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :goto_1
    return-object v0

    .line 614
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 629
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "screenHeight":I
    .restart local v6    # "screenWidth":I
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v7, "SViewColor2014"

    const-string v8, "getCustomWallpaperDrawableForThumb : OutOfMemoryError"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 635
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 590
    const/4 v2, 0x0

    .line 592
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_wallpaper_path"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "mPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 594
    const-string v1, "/data/data/com.android.systemui/files/wallpaper_images/cover_wallpaper.jpg"

    .line 597
    :goto_0
    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomWallpaperDrawable mPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .restart local v2    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v3, v2

    .line 605
    :goto_1
    return-object v3

    .line 596
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cover_wallpaper.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 605
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onTimeChanged()V
    .locals 8

    .prologue
    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 355
    .local v1, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    iget-boolean v5, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 357
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 371
    :cond_1
    const-string v0, ""

    .line 372
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getCurrentDateFormat()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "value":Ljava/lang/String;
    const v2, 0x7f0a001b

    .line 374
    .local v2, "resId_MM_dd":I
    const v3, 0x7f0a001c

    .line 376
    .local v3, "resId_dd_MM":I
    const v2, 0x7f0a001b

    .line 377
    const v3, 0x7f0a001c

    .line 379
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 380
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor2014;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void

    .line 361
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "resId_MM_dd":I
    .end local v3    # "resId_dd_MM":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 363
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 381
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v2    # "resId_MM_dd":I
    .restart local v3    # "resId_dd_MM":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private saveWallpaperFile()V
    .locals 7

    .prologue
    .line 797
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 799
    .local v3, "walllpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "mPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 802
    const-string v1, "/data/data/com.android.systemui/files/wallpaper_images/cover_index_wallpaper.jpg"

    .line 805
    :goto_0
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveWallpaperFile mPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 807
    .local v2, "out":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    .line 808
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 809
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 810
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create index Wallpaperfolder to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local v1    # "mPath":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 804
    .restart local v1    # "mPath":Ljava/lang/String;
    .restart local v3    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cover_index_wallpaper.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 813
    .end local v1    # "mPath":Ljava/lang/String;
    .end local v3    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageFile : File saving failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setfocusButton(Z)V
    .locals 3
    .param p1, "needkeyboardfocus"    # Z

    .prologue
    .line 576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 577
    iget v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    if-nez v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0205e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 585
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 587
    :cond_2
    return-void
.end method


# virtual methods
.method public ConvertDBIdtoResId(I)I
    .locals 3
    .param p1, "DBId"    # I

    .prologue
    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 789
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v1, v1, v0

    .line 792
    :goto_1
    return v1

    .line 788
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_1
.end method

.method public ConvertResIdtoDBId(I)I
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 782
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    aget v1, v1, v0

    .line 784
    :goto_1
    return v1

    .line 780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_1
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_1
.end method

.method public configureActionBar()V
    .locals 5

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 229
    .local v1, "mActionBar":Landroid/app/ActionBar;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 230
    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 232
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "customView":Landroid/view/View;
    const v4, 0x7f10010b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 234
    .local v3, "mcancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewColor2014$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$2;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v4, Lcom/android/settings/SViewColor2014$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$3;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    const v4, 0x7f10010c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 252
    .local v2, "mSaveButton":Landroid/widget/Button;
    const v4, 0x7f0a1ad4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 253
    new-instance v4, Lcom/android/settings/SViewColor2014$4;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$4;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    new-instance v4, Lcom/android/settings/SViewColor2014$5;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$5;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    return-void
.end method

.method public getColorOfCover()I
    .locals 6

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "color":I
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 768
    .local v1, "coverManager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 770
    .local v2, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 771
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    .line 775
    .end local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getColorOfCover color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return v0

    .line 773
    .restart local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "SViewColor2014"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentDateFormat()Ljava/lang/String;
    .locals 9

    .prologue
    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 392
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 393
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 394
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 396
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 397
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 398
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 399
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 402
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 405
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 408
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getMatchResourceByColor(I)I
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    const v1, 0x7f0205da

    const v0, 0x7f0205d9

    .line 745
    packed-switch p1, :pswitch_data_0

    .line 761
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 751
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 753
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 755
    goto :goto_0

    .line 757
    :pswitch_4
    const v0, 0x7f0205e0

    goto :goto_0

    .line 759
    :pswitch_5
    const v0, 0x7f0205dc

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMatchResourceByColorForAlpha(I)I
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 731
    sparse-switch p1, :sswitch_data_0

    .line 740
    const v0, 0x7f0205dd

    :goto_0
    return v0

    .line 734
    :sswitch_0
    const v0, 0x7f0205de

    goto :goto_0

    .line 736
    :sswitch_1
    const v0, 0x7f0205df

    goto :goto_0

    .line 738
    :sswitch_2
    const v0, 0x7f0205d9

    goto :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 658
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 659
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 660
    if-ne p2, v4, :cond_1

    .line 661
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    .line 662
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iput v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    const-string v1, "SViewColor2014"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnClickListener sview_color_wallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor2014;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    invoke-virtual {p0, v4}, Lcom/android/settings/SViewColor2014;->setResult(I)V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->finish()V

    .line 678
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0a0fe3

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v1, 0x7f040213

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->configureActionBar()V

    .line 157
    new-instance v1, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;-><init>(Lcom/android/settings/SViewColor2014;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    .line 159
    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "clockTypeface":Landroid/graphics/Typeface;
    const-string v1, "system/fonts/SamsungSans-Num3T.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 164
    const v1, 0x7f10043e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    .line 165
    const v1, 0x7f10043f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f100440

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f100441

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mMonthandDay:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    .line 172
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f1000c6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v6

    .line 173
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f1000c7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 178
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f1000c8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 183
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x3

    const v1, 0x7f1000c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 188
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x4

    const v1, 0x7f1000ca

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 193
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 197
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x5

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 198
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x6

    const v1, 0x7f1000cc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 203
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x7

    const v1, 0x7f1000cd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 208
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v3, 0x8

    const v1, 0x7f1000ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 213
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v3, 0x9

    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    .line 218
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const v2, 0x7f0a0fe4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    const v1, 0x7f1004b3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->refreshClock()V

    .line 225
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor2014;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->onTimeChanged()V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/SViewColor2014;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    iget-boolean v3, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    if-nez v3, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    .line 306
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertDBIdtoResId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "s_view_cover_skin_color"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getColorOfCover()I

    move-result v0

    .line 312
    .local v0, "coverColorChip":I
    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume sview_color_wallpaper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / s_view_cover_skin_color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / coverColorChip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    if-eq v3, v0, :cond_1

    .line 316
    iput v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    .line 318
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "mProductName":Ljava/lang/String;
    const-string v3, "slte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "a5lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "a5ulte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    :cond_0
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->getMatchResourceByColorForAlpha(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    .line 321
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertResIdtoDBId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    .line 333
    .end local v0    # "coverColorChip":I
    .end local v2    # "mProductName":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    sget-object v4, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    if-ne v3, v4, :cond_4

    .line 334
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :goto_1
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V

    .line 342
    return-void

    .line 323
    .restart local v0    # "coverColorChip":I
    .restart local v2    # "mProductName":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->getMatchResourceByColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    .line 324
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertResIdtoDBId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    .line 325
    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume recommanded wallpaper - s_view_cover_skin_color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "coverColorChip":I
    .end local v2    # "mProductName":Ljava/lang/String;
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    goto :goto_0

    .line 336
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public refreshClock()V
    .locals 5

    .prologue
    .line 711
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "locale":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 714
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 716
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 717
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 719
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 728
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 722
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 723
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 725
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
