.class public Landroid/animation/PointFEvaluator;
.super Ljava/lang/Object;
.source "PointFEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .registers 2
    .param p1, "reuse"    # Landroid/graphics/PointF;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    .line 52
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/PointF;
    .param p3, "endValue"    # Landroid/graphics/PointF;

    .prologue
    .line 73
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 74
    .local v0, "x":F
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 76
    .local v1, "y":F
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_20

    .line 77
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 78
    iget-object v2, p0, Landroid/animation/PointFEvaluator;->mPoint:Landroid/graphics/PointF;

    .line 80
    :goto_1f
    return-object v2

    :cond_20
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1f
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p2, Landroid/graphics/PointF;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/PointF;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/PointFEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
