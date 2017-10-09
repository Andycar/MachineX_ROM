.class public Lcom/sec/android/sviewcover/SViewCoverColorSelector;
.super Landroid/widget/FrameLayout;
.source "SViewCoverColorSelector.java"


# static fields
.field public static ALPHA_WALLPAPER:[I = null

.field private static final COLOR_INDEX_GALLERY:I = 0x9

.field private static final COLOR_INDEX_WALLPAPER:I = 0x8

.field private static final COVER_COLOR_BLACK:I = 0x1

.field private static final COVER_COLOR_CHARCOAL_GRAY:I = 0xa

.field private static final COVER_COLOR_DEFAULT:I = 0x0

.field private static final COVER_COLOR_GRAYISH_BLUE:I = 0x8

.field private static final COVER_COLOR_INDIGO_BLUE:I = 0x6

.field private static final COVER_COLOR_MAGENTA:I = 0x7

.field private static final COVER_COLOR_MESTARD_YELLOW:I = 0x9

.field private static final COVER_COLOR_ORANGE:I = 0x4

.field private static final COVER_COLOR_OTMIL:I = 0x5

.field private static final COVER_COLOR_SOFT_PINK:I = 0x3

.field private static final COVER_COLOR_WHITE:I = 0x2

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final TAG:Ljava/lang/String; = "SViewCoverColorSelector"

.field public static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "/cover_wallpaper.jpg"

.field public static final WALLPAPER_INDEX_FILE_NAME:Ljava/lang/String; = "/cover_index_wallpaper.jpg"


# instance fields
.field private mBackGroundBlackDim:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mColorPickerBackground:Landroid/view/View;

.field private mControlView:Landroid/view/View;

.field private mCoverPatternImage:Landroid/widget/ImageView;

.field private mCurrentCoverBackgroundColor:I

.field private mIsAlpahModel:Z

.field private mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverWallpaperText:Landroid/widget/TextView;

.field private mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

.field private mSViewCoverAppLevel:I

.field private mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

.field private mSelectBgColorText:Landroid/widget/TextView;

.field private mSetButton:Landroid/widget/Button;

.field private mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_001:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_002:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_003:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_004:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_005:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_006:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_007:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sview_wallpaper_default_008:I

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    .line 158
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_color_selector:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 161
    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_pattern:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    .line 162
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const/high16 v3, -0x1000000

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getSviewCoverAppLevel()V

    .line 171
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    const v3, -0xd1e5f3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Lcom/sec/android/sviewcover/SViewCoverColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setUserwallPaperForSview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->saveAlphaWallpaperFile(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/sviewcover/SViewCoverColorSelector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method private getCustomWallpaperFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "imageDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    :cond_0
    return-object v0
.end method

.method private getUserWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cover_wallpaper.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 347
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 349
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 350
    .local v6, "screenWidth":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 352
    .local v5, "screenHeight":I
    invoke-static {v2, v6, v5}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 354
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 358
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private saveAlphaWallpaperFile(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v7, v7, p1

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 372
    .local v5, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cover_index_wallpaper.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 375
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 376
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 377
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 378
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create index Wallpaperfolder to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "imageDir":Ljava/lang/String;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveImageFile : File saving failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setUserwallPaperForSview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, "wallpaper":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v1, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    return-void

    .line 336
    :cond_1
    const-string v1, "SViewCoverColorSelector"

    const-string v2, "not find wallpaper file. Maybe show black"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getOpenCoverPopupState()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getSviewCoverAppLevel()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 175
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    .line 177
    const-string v1, "SViewCoverColorSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method public hideColorSelectorView()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 327
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 186
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const-string v0, "SViewCoverColorSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.PRODUCT =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alpha concept enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    .line 192
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_open_cover_wallpaper_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperText:Landroid/widget/TextView;

    .line 193
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_open_cover_wallpaper_popup:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    .line 194
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_background:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    .line 195
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 197
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    .line 198
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setSViewCoverAppLevel(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setOnColorChangedListener(Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;)V

    .line 255
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_set_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    .line 256
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 310
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    .line 311
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;

    invoke-direct {v1, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_dim:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    .line 321
    :cond_2
    sget v0, Lcom/sec/android/sviewcover/R$id;->select_background_color_text:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    .line 322
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public replaceText()V
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->date_time_set:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->select_background_color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSetButton:Landroid/widget/Button;

    sget v1, Lcom/sec/android/sviewcover/R$string;->date_time_set:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSelectBgColorText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->select_background_color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setControlView(Landroid/view/View;)V
    .locals 1
    .param p1, "sViewCover"    # Landroid/view/View;

    .prologue
    .line 529
    if-eqz p1, :cond_1

    .line 530
    instance-of v0, p1, Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 531
    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 532
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->sview_cover_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    .line 533
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    .line 535
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 12
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 97
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCover:Lcom/sec/android/sviewcover/SViewCoverView;

    if-eqz v6, :cond_1

    .line 98
    if-nez p1, :cond_1

    .line 99
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "s_vew_cover_background_color"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "currentCoverColor":I
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sview_color_wallpaper"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, "isWallpaper":I
    iget-boolean v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    if-lt v3, v6, :cond_3

    .line 105
    add-int/lit8 v2, v3, -0xa

    .line 106
    .local v2, "index":I
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SViewCoverColorSelector index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 108
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 109
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v7, v7, v2

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 113
    .local v4, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 114
    .local v5, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .end local v0    # "currentCoverColor":I
    .end local v2    # "index":I
    .end local v3    # "isWallpaper":I
    .end local v4    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 139
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mOpenCoverWallpaperPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    return-void

    .line 116
    .restart local v0    # "currentCoverColor":I
    .restart local v3    # "isWallpaper":I
    :cond_3
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 117
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getUserWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_4
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setWallpaperFocus()V

    .line 122
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 123
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 124
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_1
    const-string v6, "SViewCoverColorSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSViewCoverColorSelector.setColor(currentCoverColor) :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 127
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v6, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 128
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 129
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 130
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateCurrentCoverColor(I)V
    .locals 13
    .param p1, "newCoverColor"    # I

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 398
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "s_view_cover_skin_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 400
    .local v1, "oldCoverColor":I
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 402
    .local v0, "isWallpaper":I
    const-string v5, "SViewCoverColorSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newCoverColor :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oldCoverColor : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isWallpaper : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eq p1, v1, :cond_6

    .line 406
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 409
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mIsAlpahModel:Z

    if-eqz v5, :cond_2

    .line 410
    sparse-switch p1, :sswitch_data_0

    .line 424
    const/4 v2, 0x4

    .line 427
    .local v2, "selectedColor":I
    :goto_0
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 429
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCoverPatternImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 430
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mBackGroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 435
    .local v3, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 436
    .local v4, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    invoke-virtual {v5, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColorThumnailFocus(I)V

    .line 440
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_wallpaper"

    add-int/lit8 v7, v2, 0xa

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 444
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    .end local v2    # "selectedColor":I
    .end local v3    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .line 412
    :sswitch_0
    const/4 v2, 0x6

    .line 413
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 415
    .end local v2    # "selectedColor":I
    :sswitch_1
    const/4 v2, 0x1

    .line 416
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 418
    .end local v2    # "selectedColor":I
    :sswitch_2
    const/4 v2, 0x3

    .line 419
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 421
    .end local v2    # "selectedColor":I
    :sswitch_3
    const/4 v2, 0x0

    .line 422
    .restart local v2    # "selectedColor":I
    goto :goto_0

    .line 447
    .end local v2    # "selectedColor":I
    :cond_2
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverAppLevel:I

    if-ne v5, v10, :cond_5

    .line 448
    packed-switch p1, :pswitch_data_0

    .line 469
    :pswitch_0
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 505
    .restart local v2    # "selectedColor":I
    :goto_2
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    .line 506
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverProperties;->isColorPickerEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 507
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 508
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mControlView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorPickerView;

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColor(I)V

    .line 511
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mColorPickerBackground:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 512
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setBackgroundColor(I)V

    .line 513
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mTargetView:Landroid/view/View;

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 516
    :cond_4
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 517
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 450
    .end local v2    # "selectedColor":I
    :pswitch_1
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 451
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 453
    .end local v2    # "selectedColor":I
    :pswitch_2
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v8

    .line 454
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 457
    .end local v2    # "selectedColor":I
    :pswitch_3
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v12

    .line 458
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 460
    .end local v2    # "selectedColor":I
    :pswitch_4
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    .line 461
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 463
    .end local v2    # "selectedColor":I
    :pswitch_5
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v10

    .line 464
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 466
    .end local v2    # "selectedColor":I
    :pswitch_6
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 467
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 473
    .end local v2    # "selectedColor":I
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 500
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 475
    .end local v2    # "selectedColor":I
    :pswitch_7
    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 476
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 479
    .end local v2    # "selectedColor":I
    :pswitch_8
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v8

    .line 480
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 483
    .end local v2    # "selectedColor":I
    :pswitch_9
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v12

    .line 484
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 487
    .end local v2    # "selectedColor":I
    :pswitch_a
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    .line 488
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 490
    .end local v2    # "selectedColor":I
    :pswitch_b
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v10

    .line 491
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 494
    .end local v2    # "selectedColor":I
    :pswitch_c
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v5, v9

    .line 495
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 497
    .end local v2    # "selectedColor":I
    :pswitch_d
    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v6, 0x5

    aget v2, v5, v6

    .line 498
    .restart local v2    # "selectedColor":I
    goto :goto_2

    .line 519
    .end local v2    # "selectedColor":I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    goto/16 :goto_1

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch

    .line 448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 473
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
