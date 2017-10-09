.class public Lcom/sec/android/sviewcover/SViewCoverColorPickerView;
.super Landroid/view/View;
.source "SViewCoverColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;,
        Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;,
        Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static COLORS:[I = null

.field private static final COLOR_INDEX_GALLERY:I = 0x9

.field private static final COLOR_INDEX_WALLPAPER:I = 0x8

.field static COVER_BACKGROUND_COLOR_1:I = 0x0

.field static COVER_BACKGROUND_COLOR_10:I = 0x0

.field static COVER_BACKGROUND_COLOR_2:I = 0x0

.field static COVER_BACKGROUND_COLOR_3:I = 0x0

.field static COVER_BACKGROUND_COLOR_4:I = 0x0

.field static COVER_BACKGROUND_COLOR_5:I = 0x0

.field static COVER_BACKGROUND_COLOR_6:I = 0x0

.field static COVER_BACKGROUND_COLOR_7:I = 0x0

.field static COVER_BACKGROUND_COLOR_8:I = 0x0

.field static COVER_BACKGROUND_COLOR_9:I = 0x0

.field static COVER_BACKGROUND_COLOR_DEFAULT:I = 0x0

.field private static final ID_OF_TRANSPARENT_VIEW:I = 0xf

.field static final PICKED_COLOR:Ljava/lang/String; = "com.samsung.cover.COLOR_PICKER"

.field public static final TAG:Ljava/lang/String; = "SViewCoverColorPickerView"


# instance fields
.field private ALPAH_GAP:I

.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private GAP:I

.field private final LOG_TAG:Ljava/lang/String;

.field private MARGIN:I

.field public MAX_COLOR_INDEX:I

.field private NUM_COLUMN:I

.field private NUM_ROW:I

.field private POSITION_GAP:I

.field private bClearFocus:Z

.field private bitmapGallery:Landroid/graphics/Bitmap;

.field private bitmapPattern:Landroid/graphics/Bitmap;

.field private defaultWallpaper:Landroid/graphics/Bitmap;

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAlpahModel:Z

.field private mOnColorChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSViewCoverAppLevel:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 38
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    .line 39
    const/16 v0, 0x6b

    const/16 v1, 0x77

    invoke-static {v5, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_1:I

    .line 40
    const/16 v0, 0x98

    const/16 v1, 0x24

    const/16 v2, 0x69

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_2:I

    .line 41
    const/16 v0, 0x15

    const/16 v1, 0x2f

    const/16 v2, 0x26

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_3:I

    .line 42
    const/16 v0, 0x91

    const/16 v1, 0x22

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_4:I

    .line 43
    const/16 v0, 0x41

    const/16 v1, 0x4f

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_5:I

    .line 44
    const/16 v0, 0x4b

    const/16 v1, 0x10

    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_6:I

    .line 45
    const/16 v0, 0x1d

    const/16 v1, 0x14

    const/16 v2, 0x3d

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_7:I

    .line 46
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_8:I

    .line 47
    const/16 v0, 0x75

    const/16 v1, 0x48

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_9:I

    .line 48
    const/16 v0, 0x25

    invoke-static {v0, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_10:I

    .line 64
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_3:I

    aput v2, v0, v1

    sget v1, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_4:I

    aput v1, v0, v4

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_8:I

    aput v2, v0, v1

    sget v1, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_9:I

    aput v1, v0, v5

    const/16 v1, 0x9

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_10:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COVER_BACKGROUND_COLOR_DEFAULT:I

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 90
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 91
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 92
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 105
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 106
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 109
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 113
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 126
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->ALPAH_GAP:I

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 90
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 91
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 92
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 105
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 106
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 109
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 113
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 126
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->ALPAH_GAP:I

    .line 138
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

    .line 140
    :cond_0
    const-string v0, "SViewCoverColorPickerView"

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

    .line 141
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    .line 143
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    .line 90
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    .line 91
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    .line 92
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    .line 105
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 106
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 109
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 113
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 126
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->ALPAH_GAP:I

    .line 147
    return-void
.end method

.method private applyColor(IZ)V
    .locals 3
    .param p1, "nIndex"    # I
    .param p2, "isUpEvent"    # Z

    .prologue
    .line 284
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 285
    .local v0, "previousColorIndex":I
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 287
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_2

    .line 289
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 293
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    .line 294
    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 304
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 309
    return-void

    .line 300
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    goto :goto_0
.end method

.method private changeColor(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isUpEvent"    # Z

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 267
    .local v2, "pl":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    .line 268
    .local v3, "pt":I
    const/4 v4, 0x0

    .line 269
    .local v4, "x_idx":I
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 271
    .local v0, "cur_x":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    .line 272
    add-int/lit8 v4, v1, -0x1

    .line 273
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 278
    :cond_0
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_1

    .line 279
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    .line 280
    :cond_1
    invoke-direct {p0, v4, p3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->applyColor(IZ)V

    .line 281
    return-void

    .line 276
    :cond_2
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move/from16 v19, v0

    .line 313
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move/from16 v20, v0

    .line 314
    .local v20, "y":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 315
    .local v15, "rect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .local v17, "selectorRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v11, "focusedRect":Landroid/graphics/Rect;
    const/16 v16, 0x0

    .line 319
    .local v16, "rectGap":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    if-eqz v2, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->ALPAH_GAP:I

    move/from16 v16, v0

    .line 321
    :cond_0
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    if-ge v13, v2, :cond_b

    .line 322
    const/16 v19, 0x0

    .line 323
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v13

    add-int/lit8 v20, v2, 0x5

    .line 325
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-ge v12, v2, :cond_a

    .line 326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int v2, v2, v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    add-int v3, v3, v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v13

    add-int v10, v2, v12

    .line 328
    .local v10, "colorIndex":I
    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v9, v2, v10

    .line 338
    .local v9, "color":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 339
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 344
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 380
    :cond_1
    :goto_2
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 381
    .local v14, "mLinePaint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 383
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    if-nez v2, :cond_2

    .line 385
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 386
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    if-ne v10, v2, :cond_3

    .line 389
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    if-ne v10, v2, :cond_4

    .line 395
    invoke-virtual {v11, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    add-int/2addr v2, v3

    add-int v19, v19, v2

    .line 325
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 346
    .end local v14    # "mLinePaint":Landroid/graphics/Paint;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 347
    const/16 v2, 0x8

    if-ne v10, v2, :cond_7

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getUserWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 349
    .local v8, "bitmapWallpaper":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 350
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    sub-int v4, v4, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    sub-int v5, v5, v16

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 352
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 355
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 360
    .end local v8    # "bitmapWallpaper":Landroid/graphics/Bitmap;
    :cond_7
    const/16 v2, 0x9

    if-ne v10, v2, :cond_8

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    sub-int v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    sub-int v6, v6, v16

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 366
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    if-eqz v2, :cond_9

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setThumNailDrawBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 368
    .local v18, "thumnailWallpaper":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 370
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 372
    .end local v18    # "thumnailWallpaper":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 321
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v9    # "color":I
    .end local v10    # "colorIndex":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 403
    .end local v12    # "i":I
    :cond_b
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 404
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 405
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 406
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 407
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_c

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 410
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    if-eqz v2, :cond_d

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 416
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->sendIntent()V

    .line 422
    return-void
.end method

.method public static getAppropriateSampleSize(Ljava/lang/String;II)I
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    .line 463
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 464
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 465
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 467
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 468
    .local v0, "imageHeight":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 470
    .local v1, "imageWidth":I
    div-int v4, v1, p1

    div-int v5, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 472
    .local v3, "sampleSize":I
    const-string v4, "SViewCoverColorPickerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v4, "SViewCoverColorPickerView"

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v4, "SViewCoverColorPickerView"

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v4, "SViewCoverColorPickerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sampleSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v3
.end method

.method private getCustomWallpaperFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "imageDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    :cond_0
    return-object v0
.end method

.method private initColorPicker(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 172
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 173
    iput p2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 175
    const-string v2, "SViewCoverColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->settings_colorchip_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 180
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 182
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 183
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 189
    const-string v2, "SViewCoverColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    .line 196
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    .line 198
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    .line 199
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    .line 201
    const-string v2, "SViewCoverColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->settings_color_select_box:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->settings_color_select_box:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_2
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 215
    .local v5, "colors":[I
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    .line 219
    .local v6, "positions":[F
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 220
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 221
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 224
    .local v0, "g":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 225
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 228
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    .end local v0    # "g":Landroid/graphics/LinearGradient;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_bg_add:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    .line 240
    :cond_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_pattern:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    .line 244
    :cond_6
    return-void

    .line 211
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    .line 215
    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setThumNailDrawBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 425
    const/16 v1, 0x8

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_001:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_002:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_003:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_004:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_005:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_006:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_007:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->settings_windowcolor_img_thumbnail_default_008:I

    aput v2, v0, v1

    .line 435
    .local v0, "thumNailIndex":[I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, v0, p1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->defaultWallpaper:Landroid/graphics/Bitmap;

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapGallery:Landroid/graphics/Bitmap;

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 613
    iput-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bitmapPattern:Landroid/graphics/Bitmap;

    .line 615
    :cond_3
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 595
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 530
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getColorIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    return v0
.end method

.method public getDrawFocus()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method public getPreviusColorIndex()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    return v0
.end method

.method public getSquitBeforeColor()I
    .locals 2

    .prologue
    .line 534
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_nSquitBeforeColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getUserWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 443
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 444
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_WIDTH:I

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLOR_HEIGHT:I

    invoke-static {v2, v5, v6}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 445
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedColor()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 567
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x42

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 627
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->playSoundEffect(I)V

    .line 629
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 631
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_1

    .line 633
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 640
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 641
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 646
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    .line 648
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_3

    .line 650
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 651
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 655
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 656
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 661
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 663
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_5

    .line 665
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 666
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 670
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 671
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 676
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 678
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 680
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 681
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 685
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setDrawFocus(Z)V

    .line 686
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 687
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 691
    :cond_8
    if-ne p1, v5, :cond_a

    .line 693
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setColorIndex(I)V

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->postInvalidate()V

    .line 695
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->applyColor(IZ)V

    .line 697
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 699
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_9

    .line 700
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_0

    .line 702
    :cond_9
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_0

    .line 708
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x1

    .line 722
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 551
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 552
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 556
    :cond_0
    sub-int v1, p4, p2

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    .line 557
    .local v0, "height":I
    if-eqz p1, :cond_1

    .line 558
    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->initColorPicker(II)V

    .line 560
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 572
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 573
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 585
    :goto_0
    :pswitch_0
    return v4

    .line 577
    :pswitch_1
    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 580
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->playSoundEffect(I)V

    .line 581
    invoke-direct {p0, v0, v1, v4}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendIntent()V
    .locals 3

    .prologue
    .line 739
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    if-nez v1, :cond_0

    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.COLOR_PICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "color"

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    .local v0, "foundInPreset":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 484
    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_3

    .line 485
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 486
    const/4 v0, 0x1

    .line 491
    :cond_0
    if-nez v0, :cond_4

    .line 492
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 493
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->setCustomColor(I)V

    .line 502
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mIsAlpahModel:Z

    if-eqz v2, :cond_2

    .line 503
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 506
    return-void

    .line 483
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1

    .line 498
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    goto :goto_1
.end method

.method public setColorIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    .line 159
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 160
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mFocusedColorIndex:I

    .line 161
    return-void
.end method

.method public setColorThumnailFocus(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 510
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 511
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v0, :cond_0

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 515
    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 263
    return-void
.end method

.method public setDrawFocus(Z)V
    .locals 0
    .param p1, "m_bDrawFocusImage"    # Z

    .prologue
    .line 730
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bDrawFocusImage:Z

    .line 731
    return-void
.end method

.method public setIsSelectedColor(Z)V
    .locals 0
    .param p1, "bSelect"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->bClearFocus:Z

    .line 155
    return-void
.end method

.method public setKeepCustomColor(Z)V
    .locals 0
    .param p1, "a_bKeep"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    .line 623
    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .locals 2
    .param p1, "backgroundColorValueFromDB"    # I
    .param p2, "value"    # Z

    .prologue
    .line 734
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 735
    iput-boolean p2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->isShowDrawableInLastBlock:Z

    .line 736
    return-void
.end method

.method public setOnColorChangedListener(Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnColorChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnColorChangedListener;

    .line 539
    return-void
.end method

.method public setOnFocusChangedListener(Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnFocusChangedListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnFocusChangedListener;

    .line 547
    return-void
.end method

.method public setOnSelectCustomColorListener(Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mOnSelectCustomColorListener:Lcom/sec/android/sviewcover/SViewCoverColorPickerView$OnSelectCustomColorListener;

    .line 543
    return-void
.end method

.method public setSViewCoverAppLevel(I)V
    .locals 10
    .param p1, "appLevel"    # I

    .prologue
    const/16 v9, 0x64

    const/16 v8, 0xd

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    .line 749
    const-string v0, "SViewCoverColorPickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSViewCoverAppLevel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSViewCoverAppLevel:I

    if-ne v0, v7, :cond_0

    .line 751
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/16 v1, 0x3e

    const/16 v2, 0x8

    invoke-static {v1, v8, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    .line 752
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/16 v1, 0xc6

    const/16 v2, 0x62

    const/16 v3, 0x30

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    .line 753
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v1, 0x2

    const/16 v2, 0x87

    const/16 v3, 0x26

    const/16 v4, 0x87

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 754
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/16 v1, 0x90

    const/16 v2, 0xbf

    invoke-static {v1, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    .line 755
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v1, 0x4

    invoke-static {v5, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 756
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v1, 0x5

    const/16 v2, 0x96

    const/16 v3, 0x9c

    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 757
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v1, 0x6

    const/16 v2, 0x54

    const/16 v3, 0x69

    invoke-static {v2, v6, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 758
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/4 v1, 0x7

    const/16 v2, 0xc9

    const/16 v3, 0x2c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 760
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_0

    .line 250
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 252
    :cond_0
    return-void
.end method

.method public setWallpaperFocus()V
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->mSelectedColorIndex:I

    .line 521
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->m_bKeepCustomColor:Z

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->invalidate()V

    .line 527
    return-void
.end method

.method public useCustomColor()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->useCustomColor:Z

    return v0
.end method
