.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseView$RescalingContainer;
    }
.end annotation


# static fields
.field private static final ALPHA_MASK:[F

.field private static final DEBUG:Z = false

.field static final DELAY:I = 0x7d0

.field static final DURATION:I = 0x1f4

.field private static final MASK:[F

.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final PROB_2X:F = 0.33f

.field private static final PROB_3X:F = 0.1f

.field private static final PROB_4X:F = 0.01f

.field private static final RARE_PASTRIES:[I

.field public static final SCALE:F = 0.25f

.field static final START_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_POS:I = 0x2000001

.field private static final TAG_SPAN:I = 0x2000002

.field private static final WHITE_MASK:[F

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# instance fields
.field hsv:[F

.field private mCellSize:I

.field private mCells:[Landroid/view/View;

.field private mColumns:I

.field private mDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mJuggle:Ljava/lang/Runnable;

.field private mRows:I

.field private mStarted:Z

.field private mWidth:I

.field private final tmpSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 43
    const-class v0, Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    .line 88
    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    .line 93
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/DessertCaseView;->MASK:[F

    .line 100
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    .line 107
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/DessertCaseView;->WHITE_MASK:[F

    return-void

    .line 54
    :array_0
    .array-data 4
        0x7f02008a
        0x7f02007c
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x7f02007d
        0x7f02007f
        0x7f020081
        0x7f020083
        0x7f020084
        0x7f020085
        0x7f020086
        0x7f020088
    .end array-data

    .line 70
    :array_2
    .array-data 4
        0x7f02008b
        0x7f020080
        0x7f020082
        0x7f020089
    .end array-data

    .line 82
    :array_3
    .array-data 4
        0x7f02008c
        0x7f02007e
        0x7f020087
    .end array-data

    .line 93
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 100
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 107
    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 159
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v13, Landroid/util/SparseArray;

    sget v14, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {v13, v14}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 127
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 129
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v13, Lcom/android/systemui/DessertCaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    .line 220
    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 344
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 163
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 165
    const v13, 0x7f0b0297

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 166
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 167
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/16 v14, 0x200

    if-ge v13, v14, :cond_0

    .line 168
    const/4 v13, 0x2

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    :cond_0
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 171
    const/4 v9, 0x0

    .line 172
    .local v9, "loaded":Landroid/graphics/Bitmap;
    const/4 v13, 0x4

    new-array v1, v13, [[I

    const/4 v13, 0x0

    sget-object v14, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    aput-object v14, v1, v13

    const/4 v13, 0x3

    sget-object v14, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    aput-object v14, v1, v13

    .local v1, "arr$":[[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 173
    .local v8, "list":[I
    move-object v2, v8

    .local v2, "arr$":[I
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget v12, v2, v4

    .line 174
    .local v12, "resid":I
    iput-object v9, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 175
    invoke-static {v11, v12, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 176
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v9}, Lcom/android/systemui/DessertCaseView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v3, v11, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 177
    .local v3, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v14, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v13, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 178
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13, v12, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
    .end local v3    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "resid":I
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 182
    .end local v2    # "arr$":[I
    .end local v7    # "len$":I
    .end local v8    # "list":[I
    :cond_2
    const/4 v9, 0x0

    .line 184
    return-void

    .line 220
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v2, "pt":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 191
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    return-object v0
.end method

.method static frand()F
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static frand(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 470
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    const v7, 0x2000002

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 452
    .local v6, "scale":I
    const v7, 0x2000001

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 453
    .local v4, "pt":Landroid/graphics/Point;
    if-eqz v4, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const/4 v7, 0x0

    new-array v5, v7, [Landroid/graphics/Point;

    .line 462
    :cond_1
    return-object v5

    .line 455
    :cond_2
    mul-int v7, v6, v6

    new-array v5, v7, [Landroid/graphics/Point;

    .line 456
    .local v5, "result":[Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 457
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 458
    const/4 v1, 0x0

    .local v1, "j":I
    move v3, v2

    .end local v2    # "p":I
    .local v3, "p":I
    :goto_1
    if-ge v1, v6, :cond_3

    .line 459
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    new-instance v7, Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v1

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v3

    .line 458
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .line 457
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    .end local v3    # "p":I
    .restart local v2    # "p":I
    goto :goto_0
.end method

.method static irand(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 474
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/DessertCaseView;->frand(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    new-instance v0, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public fillFreeList()V
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 270
    return-void
.end method

.method public declared-synchronized fillFreeList(I)V
    .locals 14
    .param p1, "animationLen"    # I

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    .local v1, "ctx":Landroid/content/Context;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v5, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 277
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 278
    .local v6, "pt":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 280
    .local v3, "i":I
    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 282
    .local v4, "j":I
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    if-nez v10, :cond_0

    .line 283
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v8, "v":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->random_color()I

    move-result v0

    .line 293
    .local v0, "c":I
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 295
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v9

    .line 297
    .local v9, "which":F
    const v10, 0x3a03126f    # 5.0E-4f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    .line 298
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 308
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {v8}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 312
    :cond_1
    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 313
    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/DessertCaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v6, v10}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 315
    if-lez p1, :cond_0

    .line 316
    const v10, 0x2000002

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v7, v10

    .line 317
    .local v7, "s":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 318
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 319
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 320
    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    int-to-long v12, p1

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 273
    .end local v0    # "c":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "pt":Landroid/graphics/Point;
    .end local v7    # "s":F
    .end local v8    # "v":Landroid/widget/ImageView;
    .end local v9    # "which":F
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 299
    .restart local v0    # "c":I
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "pt":Landroid/graphics/Point;
    .restart local v8    # "v":Landroid/widget/ImageView;
    .restart local v9    # "which":F
    :cond_2
    const v10, 0x3ba3d70a    # 0.005f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_3

    .line 300
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 301
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    .line 302
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 303
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v10, 0x3f333333    # 0.7f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    .line 304
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 306
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 323
    .end local v0    # "c":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "pt":Landroid/graphics/Point;
    .end local v8    # "v":Landroid/widget/ImageView;
    .end local v9    # "which":F
    :cond_6
    monitor-exit p0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 480
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3e800000    # 0.25f

    .line 230
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 231
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 234
    .local v2, "wasStarted":Z
    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 238
    :cond_2
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 239
    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 241
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->removeAllViewsInLayout()V

    .line 243
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 245
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 246
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 248
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 252
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleX(F)V

    .line 253
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleY(F)V

    .line 254
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationX(F)V

    .line 255
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationY(F)V

    .line 257
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge v1, v3, :cond_4

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge v0, v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    .end local v1    # "j":I
    .end local v2    # "wasStarted":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method pick([I)I
    .locals 4
    .param p1, "a"    # [I

    .prologue
    .line 209
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p1, v0

    return v0
.end method

.method pick(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method pick([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 27
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pt"    # Landroid/graphics/Point;
    .param p3, "animate"    # Z

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 347
    .local v5, "i":I
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Point;->y:I

    .line 348
    .local v8, "j":I
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v12

    .line 349
    .local v12, "rnd":F
    const v19, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 350
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v4

    .local v4, "arr$":[Landroid/graphics/Point;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v10, v4, v6

    .line 351
    .local v10, "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "arr$":[Landroid/graphics/Point;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "oc":Landroid/graphics/Point;
    :cond_0
    const/4 v14, 0x1

    .line 356
    .local v14, "scale":I
    const v19, 0x3c23d70a    # 0.01f

    cmpg-float v19, v12, v19

    if-gez v19, :cond_3

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 358
    const/4 v14, 0x4

    .line 370
    :cond_1
    :goto_1
    const v19, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 371
    const v19, 0x2000002

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    .line 375
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v11

    .line 376
    .local v11, "occupied":[Landroid/graphics/Point;
    move-object v4, v11

    .restart local v4    # "arr$":[Landroid/graphics/Point;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v10, v4, v6

    .line 377
    .restart local v10    # "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aget-object v18, v19, v20

    .line 378
    .local v18, "squatter":Landroid/view/View;
    if-eqz v18, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 360
    .end local v4    # "arr$":[Landroid/graphics/Point;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "oc":Landroid/graphics/Point;
    .end local v11    # "occupied":[Landroid/graphics/Point;
    .end local v18    # "squatter":Landroid/view/View;
    :cond_3
    const v19, 0x3dcccccd    # 0.1f

    cmpg-float v19, v12, v19

    if-gez v19, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 362
    const/4 v14, 0x3

    goto :goto_1

    .line 364
    :cond_4
    const v19, 0x3ea8f5c3    # 0.33f

    cmpg-float v19, v12, v19

    if-gez v19, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    .line 366
    const/4 v14, 0x2

    goto/16 :goto_1

    .line 383
    .restart local v4    # "arr$":[Landroid/graphics/Point;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "occupied":[Landroid/graphics/Point;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":I
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 384
    .restart local v18    # "squatter":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v4

    array-length v9, v4

    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_7

    aget-object v17, v4, v7

    .line 385
    .local v17, "sq":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0x0

    aput-object v21, v19, v20

    .line 384
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 388
    .end local v17    # "sq":Landroid/graphics/Point;
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    .line 389
    const v19, 0x2000001

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 390
    if-eqz p3, :cond_8

    .line 391
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f000000    # 0.5f

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f000000    # 0.5f

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Lcom/android/systemui/DessertCaseView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 346
    .end local v4    # "arr$":[Landroid/graphics/Point;
    .end local v5    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "j":I
    .end local v9    # "len$":I
    .end local v11    # "occupied":[Landroid/graphics/Point;
    .end local v12    # "rnd":F
    .end local v14    # "scale":I
    .end local v18    # "squatter":Landroid/view/View;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 405
    .restart local v4    # "arr$":[Landroid/graphics/Point;
    .restart local v5    # "i":I
    .restart local v7    # "i$":I
    .restart local v8    # "j":I
    .restart local v9    # "len$":I
    .restart local v11    # "occupied":[Landroid/graphics/Point;
    .restart local v12    # "rnd":F
    .restart local v14    # "scale":I
    .restart local v18    # "squatter":Landroid/view/View;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 410
    .end local v7    # "i$":I
    .end local v18    # "squatter":Landroid/view/View;
    :cond_9
    move-object v4, v11

    array-length v9, v4

    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_5
    if-ge v6, v9, :cond_a

    aget-object v10, v4, v6

    .line 411
    .restart local v10    # "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v19, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput-object p1, v19, v20

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 415
    .end local v10    # "oc":Landroid/graphics/Point;
    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42b40000    # 90.0f

    mul-float v13, v19, v20

    .line 417
    .local v13, "rot":F
    if-eqz p3, :cond_b

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 420
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 421
    .local v15, "set1":Landroid/animation/AnimatorSet;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-float v0, v14

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-float v0, v14

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 425
    new-instance v19, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 426
    const-wide/16 v20, 0x1f4

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 428
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    .local v16, "set2":Landroid/animation/AnimatorSet;
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v13, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    sget-object v21, Landroid/view/View;->X:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v24, v0

    mul-int v24, v24, v5

    add-int/lit8 v25, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    sget-object v21, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v24, v0

    mul-int v24, v24, v8

    add-int/lit8 v25, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 434
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 437
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 440
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    .end local v15    # "set1":Landroid/animation/AnimatorSet;
    .end local v16    # "set2":Landroid/animation/AnimatorSet;
    :goto_6
    monitor-exit p0

    return-void

    .line 442
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    add-int/lit8 v20, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v19, v0

    mul-int v19, v19, v8

    add-int/lit8 v20, v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 444
    int-to-float v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 445
    int-to-float v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 446
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotation(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public place(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 326
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    invoke-static {v3, v1}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v3, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 327
    return-void
.end method

.method random_color()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    const/16 v0, 0xc

    .line 224
    .local v0, "COLORS":I
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/16 v2, 0xc

    invoke-static {v4, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    aput v2, v1, v4

    .line 225
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public start()V
    .locals 4

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 198
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 205
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
