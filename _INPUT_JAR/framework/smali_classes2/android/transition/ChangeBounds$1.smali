.class final Landroid/transition/ChangeBounds$1;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 5
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Landroid/graphics/PointF;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 69
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 70
    iget-object v0, p0, Landroid/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/PointF;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method
