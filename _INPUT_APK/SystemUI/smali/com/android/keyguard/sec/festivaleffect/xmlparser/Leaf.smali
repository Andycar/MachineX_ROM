.class public Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;
.super Ljava/lang/Object;
.source "Leaf.java"


# static fields
.field private static final LEAF_KIND_NUM:I = 0x4

.field private static final LEAF_SIZE_NUM:I = 0x6

.field private static final MIN_X_SPEED:I = -0x1

.field private static final MIN_Y_SPEED:I = 0x2

.field private static final X_OFFSET:I = 0x10

.field private static final X_SPEED_SEED:I = 0x2

.field private static final Y_SPEED_SEED:I = 0x2


# instance fields
.field public cx:F

.field public cy:F

.field public leafKind:I

.field public leafSize:I

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafKind:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafSize:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/16 v1, 0x280

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mXSpeed:I

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mYSpeed:I

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafKind:I

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->leafSize:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    const/high16 v1, 0x44200000    # 640.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cx:F

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->cy:F

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->clear()V

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Leaf;->rotate:I

    :cond_1
    return-void
.end method
