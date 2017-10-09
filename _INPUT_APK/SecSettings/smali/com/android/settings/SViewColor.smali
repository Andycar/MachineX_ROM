.class public Lcom/android/settings/SViewColor;
.super Landroid/app/Activity;
.source "SViewColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewColor$CoverWallpaperObserver;
    }
.end annotation


# static fields
.field static final COVER_BACKGROUND_COLOR_BUTTON1:I

.field static final COVER_BACKGROUND_COLOR_BUTTON2:I

.field static final COVER_BACKGROUND_COLOR_BUTTON3:I

.field static final COVER_BACKGROUND_COLOR_BUTTON4:I

.field static final COVER_BACKGROUND_COLOR_BUTTON5:I

.field static final COVER_BACKGROUND_COLOR_BUTTON6:I

.field static final COVER_BACKGROUND_COLOR_BUTTON7:I

.field static final COVER_BACKGROUND_COLOR_BUTTON8:I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/FrameLayout;

.field mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mColorArray:[I

.field private mColorButton:Landroid/view/View$OnClickListener;

.field mColorButtonArray:[Lcom/android/settings/ColorButton;

.field private mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentRealCoverColor:I

.field private mInitRandom:I

.field private mInitUseAll:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsGalleryMenu:Z

.field private mIsOptionMenuFocus:Z

.field private mIsWallpaper:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mPatternBG:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x87

    const/16 v6, 0x64

    const/16 v5, 0xd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x3e

    const/16 v1, 0x8

    invoke-static {v0, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    .line 66
    const/16 v0, 0xc6

    const/16 v1, 0x62

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    .line 67
    const/16 v0, 0x26

    invoke-static {v7, v0, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    .line 68
    const/16 v0, 0x90

    const/16 v1, 0xbf

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    .line 69
    invoke-static {v3, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    .line 70
    const/16 v0, 0x96

    const/16 v1, 0x9c

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    .line 71
    const/16 v0, 0x54

    const/16 v1, 0x69

    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    .line 72
    const/16 v0, 0xc9

    const/16 v1, 0x2c

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-array v0, v4, [I

    sget v1, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    aput v4, v0, v5

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    .line 85
    new-array v0, v4, [Lcom/android/settings/ColorButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    .line 98
    iput-boolean v3, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/settings/SViewColor;->mIsGalleryMenu:Z

    .line 113
    new-instance v0, Lcom/android/settings/SViewColor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$1;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/android/settings/SViewColor$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$6;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    .line 425
    new-instance v0, Lcom/android/settings/SViewColor$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$7;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    .line 584
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/SViewColor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/SViewColor;->mIsGalleryMenu:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/SViewColor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/SViewColor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/SViewColor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/SViewColor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewColor;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewColor;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_wallpaper_path"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "mPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 506
    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    .line 510
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .restart local v2    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v3, v2

    .line 516
    :goto_1
    return-object v3

    .line 508
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

    .line 516
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onTimeChanged()V
    .locals 8

    .prologue
    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 303
    .local v1, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    iget-boolean v5, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 305
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 307
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 319
    :cond_1
    const-string v0, ""

    .line 320
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getCurrentDateFormat()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "value":Ljava/lang/String;
    const v2, 0x7f0a001b

    .line 322
    .local v2, "resId_MM_dd":I
    const v3, 0x7f0a001c

    .line 324
    .local v3, "resId_dd_MM":I
    const v2, 0x7f0a001b

    .line 325
    const v3, 0x7f0a001c

    .line 327
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 309
    .end local v0    # "dateFormat":Ljava/lang/String;
    .end local v2    # "resId_MM_dd":I
    .end local v3    # "resId_dd_MM":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 329
    .restart local v0    # "dateFormat":Ljava/lang/String;
    .restart local v2    # "resId_MM_dd":I
    .restart local v3    # "resId_dd_MM":I
    .restart local v4    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setfocusButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 486
    iget v1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsGalleryMenu:Z

    if-nez v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    .line 492
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsGalleryMenu:Z

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    .line 494
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsGalleryMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/ColorButton;->invalidate()V

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    goto :goto_1

    .line 499
    :cond_3
    return-void
.end method


# virtual methods
.method public configureActionBar()V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 209
    .local v1, "mActionBar":Landroid/app/ActionBar;
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 210
    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 212
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "customView":Landroid/view/View;
    const v4, 0x7f10010b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 214
    .local v2, "mcancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewColor$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$2;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance v4, Lcom/android/settings/SViewColor$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$3;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 233
    const v4, 0x7f10010c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 234
    .local v3, "mdeleteButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SViewColor$4;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$4;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance v4, Lcom/android/settings/SViewColor$5;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$5;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    return-void
.end method

.method public getColorOfCover()I
    .locals 6

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "color":I
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 647
    .local v1, "coverManager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 649
    .local v2, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    .line 654
    .end local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "SViewColor"

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

    .line 655
    return v0

    .line 652
    .restart local v2    # "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "SViewColor"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentDateFormat()Ljava/lang/String;
    .locals 9

    .prologue
    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v5, "result":Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 340
    .local v6, "year":Ljava/lang/String;
    const-string v4, "MM"

    .line 341
    .local v4, "month":Ljava/lang/String;
    const-string v0, "dd"

    .line 342
    .local v0, "day":Ljava/lang/String;
    const-string v1, "-"

    .line 344
    .local v1, "divider":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 345
    .local v2, "formatArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 346
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 350
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 353
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 356
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getMatchColor(I)I
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 626
    packed-switch p1, :pswitch_data_0

    .line 640
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    :goto_0
    return v0

    .line 628
    :pswitch_0
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    goto :goto_0

    .line 630
    :pswitch_1
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    goto :goto_0

    .line 632
    :pswitch_2
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    goto :goto_0

    .line 634
    :pswitch_3
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    goto :goto_0

    .line 636
    :pswitch_4
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    goto :goto_0

    .line 638
    :pswitch_5
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 522
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 523
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 524
    if-ne p2, v4, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget v3, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    invoke-virtual {p0, v4}, Lcom/android/settings/SViewColor;->setResult(I)V

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->finish()V

    .line 535
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 582
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v2, 0x7f04004a

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->configureActionBar()V

    .line 132
    new-instance v2, Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/settings/SViewColor$CoverWallpaperObserver;-><init>(Lcom/android/settings/SViewColor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "s_view_cover_skin_color"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getColorOfCover()I

    move-result v1

    .line 139
    .local v1, "coverColorChip":I
    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    if-eq v2, v1, :cond_0

    .line 140
    iput v1, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    .line 141
    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->getMatchColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    .line 144
    :cond_0
    const v2, 0x7f100093

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    .line 145
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    const v5, 0x7f10043c

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "clockTypeface":Landroid/graphics/Typeface;
    const-string v2, "system/fonts/SamsungSans-Num3T.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 151
    const v2, 0x7f10043e

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    .line 152
    const v2, 0x7f10043f

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f100440

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f100441

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    .line 159
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c6

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v4

    .line 160
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c7

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v3

    .line 164
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c8

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v7

    .line 168
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v7

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v7

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000c9

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v8

    .line 172
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v8

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v8

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f1000ca

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v9

    .line 176
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x5

    const v2, 0x7f1000cb

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    .line 180
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x6

    const v2, 0x7f1000cc

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    .line 184
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x6

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x6

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 187
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x7

    const v2, 0x7f1000cd

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    .line 188
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x7

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x7

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 191
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v6, 0x8

    const v2, 0x7f1000ce

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    .line 192
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x8

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x8

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 195
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v6, 0x9

    const v2, 0x7f1000cf

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    .line 196
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x9

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x9

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Lcom/android/settings/ColorButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_color_wallpaper"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->refreshClock()V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_color_use_all"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_random"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    .line 205
    return-void

    :cond_1
    move v2, v4

    .line 199
    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SViewColor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "s_vew_cover_background_color"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sview_color_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SViewColor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sview_color_wallpaper"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    .line 280
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    const v3, 0x10805ee

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    .line 284
    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void

    :cond_1
    move v1, v2

    .line 279
    goto :goto_0
.end method

.method public refreshClock()V
    .locals 5

    .prologue
    .line 558
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "locale":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 561
    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 563
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 564
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 575
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 569
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 570
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 572
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
