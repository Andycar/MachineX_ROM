.class public Lcom/android/settings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static TEXT_SIZE:I


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsNormalTrashIcon:Z

.field private mIsOnDeleting:Z

.field private mIsTablet:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mNormalTrash:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe

    sput v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 66
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 71
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 330
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    .line 76
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockscreenshortcut/DeleteView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/DeleteView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockscreenshortcut/DeleteView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockscreenshortcut/DeleteView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockscreenshortcut/DeleteView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "alpha"    # F

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 172
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 174
    .local v1, "dy":I
    iget-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    return-void

    .line 177
    :cond_0
    sget v2, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 194
    sget v1, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    return-object v0
.end method

.method private init()V
    .locals 14

    .prologue
    const v13, 0x7f020584

    const/4 v12, 0x0

    const-wide v10, 0x3ff3333333333333L    # 1.2

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 82
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0f00d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    .line 84
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 87
    const v6, 0x7f020586

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "originalTrashCan":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v2, v6, v7, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    .line 91
    const v6, 0x7f020585

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    .local v3, "originalTrashCanFill":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v3, v6, v7, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    .line 95
    const v6, 0x7f020587

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    .local v1, "originalTrashBinOnly":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v1, v6, v7, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    .line 99
    const v6, 0x7f020588

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 101
    .local v4, "originalTrashLidOnly":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v4, v6, v7, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    .line 103
    invoke-static {v5, v13, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    .line 111
    return-void
.end method

.method private isTrashCanShakeMode()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 220
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    .line 221
    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 244
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    .line 245
    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 225
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 120
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 124
    .local v3, "r":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 131
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 134
    .local v1, "lidCenterX":I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 135
    .local v2, "lidCenterY":I
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    .line 137
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v2, v5, 0x5

    .line 140
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v5, :cond_3

    .line 141
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 145
    :goto_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    .end local v1    # "lidCenterX":I
    .end local v2    # "lidCenterY":I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 159
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 161
    .local v0, "height":I
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    .line 168
    :goto_2
    return-void

    .line 143
    .end local v0    # "height":I
    .end local v4    # "width":I
    .restart local v1    # "lidCenterX":I
    .restart local v2    # "lidCenterY":I
    :cond_3
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 149
    .end local v1    # "lidCenterX":I
    .end local v2    # "lidCenterY":I
    :cond_4
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    .line 150
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    .line 152
    :cond_5
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    .line 153
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 164
    .restart local v0    # "height":I
    .restart local v4    # "width":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    sget v7, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const v2, 0x7f0a0cb6

    .line 200
    if-gez p2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 204
    .local v7, "length":I
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int p2, v0, v2

    .line 205
    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 206
    div-int/lit8 v2, v7, 0x2

    int-to-float v4, p2

    sget v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    add-int/2addr v0, p3

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 212
    .end local v1    # "text":Ljava/lang/String;
    .end local v7    # "length":I
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getTextWidth()I
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0cb6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 186
    .local v0, "width":I
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 413
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 409
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 417
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 405
    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 233
    return-void
.end method

.method public setNormalTrashIcon()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    .line 489
    return-void
.end method

.method public setOrienationMode(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    .line 115
    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    .line 216
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_0

    .line 481
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    :cond_0
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 420
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    .line 421
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 425
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 428
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 434
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 438
    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$2;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$2;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 461
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 464
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 465
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 466
    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    const/4 v4, 0x0

    .line 265
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    .line 266
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    .line 267
    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    .line 268
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    .line 269
    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 274
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060003

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060002

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 287
    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 311
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 315
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 316
    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    .line 318
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    .line 325
    return-void
.end method
