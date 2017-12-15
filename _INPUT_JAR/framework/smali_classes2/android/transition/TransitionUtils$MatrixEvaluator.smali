.class public Landroid/transition/TransitionUtils$MatrixEvaluator;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatrixEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field mTempEndValues:[F

.field mTempMatrix:Landroid/graphics/Matrix;

.field mTempStartValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    .line 146
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    .line 148
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Matrix;
    .param p3, "endValue"    # Landroid/graphics/Matrix;

    .prologue
    .line 152
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 153
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v2, 0x9

    if-ge v1, v2, :cond_27

    .line 155
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    aget v2, v2, v1

    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v1

    sub-float v0, v2, v3

    .line 156
    .local v0, "diff":F
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempStartValues:[F

    aget v3, v3, v1

    mul-float v4, p1, v0

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 158
    .end local v0    # "diff":F
    :cond_27
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempEndValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 159
    iget-object v2, p0, Landroid/transition/TransitionUtils$MatrixEvaluator;->mTempMatrix:Landroid/graphics/Matrix;

    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p2, Landroid/graphics/Matrix;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Matrix;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/transition/TransitionUtils$MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
