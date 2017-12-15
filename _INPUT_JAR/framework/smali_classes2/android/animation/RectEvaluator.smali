.class public Landroid/animation/RectEvaluator;
.super Ljava/lang/Object;
.source "RectEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "reuseRect"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    .line 52
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Rect;
    .param p3, "endValue"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 74
    .local v1, "left":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 75
    .local v3, "top":I
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 76
    .local v2, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v0, v4, v5

    .line 77
    .local v0, "bottom":I
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3a

    .line 78
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    :goto_39
    return-object v4

    .line 80
    :cond_3a
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    goto :goto_39
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # F
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p2, Landroid/graphics/Rect;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Rect;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
