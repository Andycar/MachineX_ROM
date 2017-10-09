.class public Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
.super Landroid/view/View;
.source "SViewCoverUnlockCircleEffect.java"


# instance fields
.field private final ANIMATION_DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private betweenRadius:I

.field private centerX:I

.field private centerY:I

.field private fillAnimationValue:F

.field private fillStrokePaint:Landroid/graphics/Paint;

.field private innerStrokePaint:Landroid/graphics/Paint;

.field private innerStrokeWidth:I

.field private isForShortcut:Z

.field private maxRadius:I

.field private minRadius:I

.field private outStrokePaint:Landroid/graphics/Paint;

.field private outerStrokeWidth:I

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "circleMaxWidth"    # I
    .param p3, "circleMinWidth"    # I
    .param p4, "outerStrokeWidth"    # I
    .param p5, "innerStrokeWidth"    # I
    .param p6, "coordinate"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "SViewCoverNewUnlockCircle"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->TAG:Ljava/lang/String;

    .line 14
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->ANIMATION_DEBUG:Z

    .line 25
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    .line 26
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    .line 27
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->isForShortcut:Z

    .line 33
    iput p6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    iput p6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    .line 34
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    .line 35
    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    .line 36
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->betweenRadius:I

    .line 37
    iput p4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    .line 38
    iput p5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    .line 39
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->setLayout()V

    .line 40
    return-void
.end method

.method private setLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    const v1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    return-void
.end method


# virtual methods
.method public dragAnimationUpdate(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->invalidate()V

    .line 74
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->betweenRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outerStrokeWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float v2, v4, v5

    .line 97
    .local v2, "radius":F
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->outStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    .line 105
    .local v3, "tvalue":F
    :goto_0
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->maxRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 107
    .local v1, "fillStrokeWidth":F
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    int-to-float v4, v4

    div-float v5, v1, v8

    add-float v0, v4, v5

    .line 116
    .local v0, "fillRadius":F
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->centerY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    return-void

    .line 103
    .end local v0    # "fillRadius":F
    .end local v1    # "fillStrokeWidth":F
    .end local v3    # "tvalue":F
    :cond_1
    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->fillAnimationValue:F

    goto :goto_0
.end method

.method public setCircleMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 85
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->minRadius:I

    .line 86
    return-void
.end method

.method public setInnerStrokePaint(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->innerStrokeWidth:I

    .line 78
    return-void
.end method

.method public setIsForShortcut(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->isForShortcut:Z

    .line 82
    return-void
.end method

.method public strokeAnimationUpdate(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->strokeAnimationValue:F

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;->invalidate()V

    .line 67
    return-void
.end method
