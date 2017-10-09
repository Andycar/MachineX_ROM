.class public Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;
.super Landroid/view/View;
.source "LeafView.java"

# interfaces
.implements Lcom/android/keyguard/sec/festivaleffect/common/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLeafImageId:[I

.field private mLeafPool:[Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

.field private mLeafSizeScale:[F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x23

    sput v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mPaint:Landroid/graphics/Paint;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->refresh:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/keyguard/R$drawable;->leaf_01:I

    aput v3, v1, v2

    sget v2, Lcom/android/keyguard/R$drawable;->leaf_02:I

    aput v2, v1, v4

    const/4 v2, 0x2

    sget v3, Lcom/android/keyguard/R$drawable;->leaf_03:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/keyguard/R$drawable;->leaf_04:I

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafImageId:[I

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafSizeScale:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->matrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->MAX_POOL_SIZE:I

    new-array v1, v1, [Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafPool:[Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafPool:[Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafPool:[Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    invoke-direct {v2}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafPool:[Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->matrix:Landroid/graphics/Matrix;

    iget v6, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafSizeScale:[F

    iget v7, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafSize:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafSizeScale:[F

    iget v8, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafSize:I

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mLeafImageId:[I

    iget v7, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafKind:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    invoke-static {v6, v7}, Lcom/android/keyguard/sec/festivaleffect/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mContext:Landroid/content/Context;

    iget v8, v3, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    invoke-static {v7, v8}, Lcom/android/keyguard/sec/festivaleffect/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->next()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->refresh:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->invalidate()V

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->refresh:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/LeafView;->invalidate()V

    return-void
.end method
