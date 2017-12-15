.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "ClipRectAnimation.java"


# instance fields
.field private mFromRect:Landroid/graphics/Rect;

.field private mToRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    .line 39
    if-eqz p1, :cond_15

    if-nez p2, :cond_1d

    .line 40
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected non-null animation clip rects"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1d
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .prologue
    .line 48
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 49
    .local v1, "l":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v3, v4, v5

    .line 50
    .local v3, "t":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 51
    .local v2, "r":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v0, v4, v5

    .line 52
    .local v0, "b":I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 53
    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
