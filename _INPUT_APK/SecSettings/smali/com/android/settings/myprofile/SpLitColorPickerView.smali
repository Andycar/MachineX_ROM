.class public Lcom/android/settings/myprofile/SpLitColorPickerView;
.super Landroid/view/View;
.source "SpLitColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;
    }
.end annotation


# static fields
.field public static final COLORS:[I


# instance fields
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

.field private context:Landroid/content/Context;

.field private isShowDrawableInLastBlock:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentDeviceOrientation:I

.field private mFocusedColorIndex:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

.field private mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

.field private mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

.field private mPreviousColorIndex:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedColorIndex:I

.field private m_bDrawFocusImage:Z

.field private m_bKeepCustomColor:Z

.field private m_nSquitBeforeColorIndex:I

.field private rainbow:Landroid/graphics/Bitmap;

.field public useCustomColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa5

    const/16 v8, 0x72

    const/16 v7, 0x30

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x83

    const/16 v3, 0x5d

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xcb

    const/16 v3, 0x85

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    const/16 v3, 0xcc

    const/16 v4, 0x79

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/16 v3, 0x94

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/16 v3, 0x67

    const/16 v4, 0x2e

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xfd

    const/16 v3, 0x2d

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 64
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 74
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 75
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 78
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 82
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 64
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 74
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 75
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 78
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 82
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 109
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

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 64
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 65
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    .line 66
    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    .line 74
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 75
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 78
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 82
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_nSquitBeforeColorIndex:I

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    .line 116
    return-void
.end method

.method private applyColor(IZ)V
    .locals 3
    .param p1, "nIndex"    # I
    .param p2, "isUpEvent"    # Z

    .prologue
    .line 260
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 261
    .local v0, "previousColorIndex":I
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 265
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne p1, v1, :cond_2

    .line 267
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnSelectCustomColorListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;->onSelectCustomColor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 271
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v1, :cond_0

    .line 272
    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 281
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 284
    :cond_1
    return-void

    .line 277
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v1, :cond_0

    .line 278
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_0
.end method

.method private changeColor(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isUpEvent"    # Z

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 216
    .local v2, "pl":I
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int v3, v5, v6

    .line 217
    .local v3, "pt":I
    const/4 v4, 0x0

    .line 218
    .local v4, "x_idx":I
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int v0, v5, v6

    .line 220
    .local v0, "cur_x":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_0

    .line 221
    add-int/lit8 v4, v1, -0x1

    .line 222
    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 227
    :cond_0
    int-to-float v5, v3

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-gt v5, v6, :cond_1

    .line 228
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v4, v5

    .line 229
    :cond_1
    invoke-direct {p0, v4, p3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 257
    return-void

    .line 225
    :cond_2
    iget v5, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v6, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v17, v0

    .line 288
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    move/from16 v18, v0

    .line 289
    .local v18, "y":I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v14, "rect":Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v16, "selectorRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v11, "focusedRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    if-ge v13, v2, :cond_4

    .line 294
    const/16 v17, 0x0

    .line 295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v13

    add-int/lit8 v18, v2, 0x5

    .line 297
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v12, v2, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    add-int v3, v3, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v2, v13

    add-int v10, v2, v12

    .line 300
    .local v10, "colorIndex":I
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    mul-int/2addr v3, v13

    add-int/2addr v3, v12

    aget v9, v2, v3

    .line 302
    .local v9, "color":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v2, v2, -0x1

    if-ne v13, v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v2, :cond_0

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02053e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 304
    .local v8, "bitmapTrans":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    const/4 v4, 0x1

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 305
    .local v15, "resizedBitmapTrans":Landroid/graphics/Bitmap;
    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    .end local v8    # "bitmapTrans":Landroid/graphics/Bitmap;
    .end local v15    # "resizedBitmapTrans":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 309
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    if-ne v10, v2, :cond_1

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-ne v10, v2, :cond_2

    .line 325
    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    add-int/2addr v2, v3

    add-int v17, v17, v2

    .line 297
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 293
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v9    # "color":I
    .end local v10    # "colorIndex":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 333
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 334
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 335
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 336
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 337
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_5

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 340
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->bClearFocus:Z

    if-eqz v2, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getDrawFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    :cond_7
    return-void
.end method

.method private initColorPicker(II)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v12, 0x7f02053b

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 137
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 138
    iput p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 140
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_PICKER_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 145
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 147
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->GAP:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    .line 148
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_PICKER_HEIGHT:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MARGIN:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    .line 152
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_SHADOW_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 159
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 161
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    .line 162
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    .line 164
    const-string v2, "SpLitColorPickerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COLOR_WIDTH - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    :cond_2
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 178
    .local v5, "colors":[I
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    .line 182
    .local v6, "positions":[F
    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 183
    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 184
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 187
    .local v0, "g":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 188
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    .end local v0    # "g":Landroid/graphics/LinearGradient;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_3
    return-void

    .line 174
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    .line 178
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

.method private updateRowVsColumn()V
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :goto_0
    return-void

    .line 588
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 589
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 593
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 594
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 450
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getDrawFocus()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 416
    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 417
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

    .line 470
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 472
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 474
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-ge v1, v2, :cond_1

    .line 476
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    .line 551
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 484
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 489
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    .line 491
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    if-lt v1, v2, :cond_3

    .line 493
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 494
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 499
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 504
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 506
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    if-nez v1, :cond_5

    .line 508
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 509
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 513
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 514
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 519
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 521
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    iget v3, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 523
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 524
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus(I)Z

    goto :goto_0

    .line 528
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDrawFocus(Z)V

    .line 529
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    goto :goto_0

    .line 534
    :cond_8
    if-ne p1, v5, :cond_a

    .line 536
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColorIndex(I)V

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->postInvalidate()V

    .line 538
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->applyColor(IZ)V

    .line 540
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    if-eqz v1, :cond_0

    .line 542
    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v1, v2, :cond_9

    .line 543
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    invoke-interface {v1, p1, v2}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onRequestColorPicker(II)V

    goto/16 :goto_0

    .line 545
    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnFocusChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView$OnFocusChangedListener;->onUnRequestColorPicker()V

    goto/16 :goto_0

    .line 551
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
    .line 556
    iget-object v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
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

    .line 563
    :cond_0
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 401
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 402
    iget-boolean v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-nez v1, :cond_0

    .line 403
    sget-object v1, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 406
    :cond_0
    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    mul-int v0, v1, v2

    .line 407
    .local v0, "height":I
    if-eqz p1, :cond_1

    .line 408
    sub-int v1, p4, p2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->initColorPicker(II)V

    .line 410
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 422
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 423
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return v6

    .line 425
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f100242

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, "mView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 427
    iget-object v4, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->context:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 428
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 432
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "mView":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 435
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->playSoundEffect(I)V

    .line 436
    invoke-direct {p0, v2, v3, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->changeColor(FFZ)V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "foundInPreset":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 357
    sget-object v2, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 358
    iput v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 359
    const/4 v0, 0x1

    .line 364
    :cond_0
    if-nez v0, :cond_3

    .line 365
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setCustomColor(I)V

    .line 376
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 377
    return-void

    .line 356
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    if-nez v2, :cond_1

    .line 371
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    goto :goto_1
.end method

.method public setColorIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    .line 128
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 129
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mFocusedColorIndex:I

    .line 130
    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    .line 212
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 4
    .param p1, "screenOrientation"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mCurrentDeviceOrientation:I

    .line 578
    invoke-direct {p0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->updateRowVsColumn()V

    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v0

    const-wide v2, 0x401199999999999aL    # 4.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_ROW:I

    .line 581
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->NUM_COLUMN:I

    .line 583
    :cond_2
    return-void
.end method

.method public setDrawFocus(Z)V
    .locals 0
    .param p1, "m_bDrawFocusImage"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bDrawFocusImage:Z

    .line 574
    return-void
.end method

.method public setKeepCustomColor(Z)V
    .locals 0
    .param p1, "a_bKeep"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->m_bKeepCustomColor:Z

    .line 466
    return-void
.end method

.method public setLastIndexColorValue(IZ)V
    .locals 2
    .param p1, "backgroundColorValueFromDB"    # I
    .param p2, "value"    # Z

    .prologue
    .line 600
    sget-object v0, Lcom/android/settings/myprofile/SpLitColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    aput p1, v0, v1

    .line 601
    iput-boolean p2, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->isShowDrawableInLastBlock:Z

    .line 603
    return-void
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;

    .line 389
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    iget v1, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->useCustomColor:Z

    if-nez v0, :cond_0

    .line 200
    iget v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mPreviousColorIndex:I

    iput v0, p0, Lcom/android/settings/myprofile/SpLitColorPickerView;->mSelectedColorIndex:I

    .line 201
    :cond_0
    return-void
.end method
