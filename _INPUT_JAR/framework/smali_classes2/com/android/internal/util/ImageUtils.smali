.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ALPHA_TOLERANCE:I = 0x32

.field private static final COMPACT_BITMAP_SIZE:I = 0x40

.field private static final TOLERANCE:I = 0x14


# instance fields
.field private mTempBuffer:[I

.field private mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private ensureBufferSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_d

    .line 96
    :cond_9
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    .line 98
    :cond_d
    return-void
.end method

.method public static isGrayscale(I)Z
    .registers 8
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x14

    .line 107
    shr-int/lit8 v5, p0, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 108
    .local v0, "alpha":I
    const/16 v5, 0x32

    if-ge v0, v5, :cond_c

    .line 116
    :cond_b
    :goto_b
    return v4

    .line 112
    :cond_c
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 113
    .local v3, "r":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 114
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 116
    .local v1, "b":I
    sub-int v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2e

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2e

    sub-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v6, :cond_b

    :cond_2e
    const/4 v4, 0x0

    goto :goto_b
.end method


# virtual methods
.method public isGrayscale(Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 57
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 60
    .local v3, "width":I
    if-gt v7, v1, :cond_13

    if-le v3, v1, :cond_59

    .line 61
    :cond_13
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_34

    .line 62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    :cond_34
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 70
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v3

    div-float v1, v6, v1

    int-to-float v4, v7

    div-float v4, v6, v4

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 76
    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 77
    const/16 v7, 0x40

    move v3, v7

    .line 80
    :cond_59
    mul-int v9, v7, v3

    .line 81
    .local v9, "size":I
    invoke-direct {p0, v9}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    .line 82
    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 83
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_68
    if-ge v8, v9, :cond_78

    .line 84
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    aget v0, v0, v8

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-nez v0, :cond_75

    .line 88
    :goto_74
    return v2

    .line 83
    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    :cond_78
    move v2, v10

    .line 88
    goto :goto_74
.end method
