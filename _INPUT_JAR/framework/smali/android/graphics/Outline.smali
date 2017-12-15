.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# instance fields
.field public mAlpha:F

.field public mPath:Landroid/graphics/Path;

.field public mRadius:F

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Outline;)V
    .registers 2
    .param p1, "src"    # Landroid/graphics/Outline;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    .line 54
    return-void
.end method


# virtual methods
.method public canClip()Z
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public set(Landroid/graphics/Outline;)V
    .registers 4
    .param p1, "src"    # Landroid/graphics/Outline;

    .prologue
    .line 121
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_19

    .line 122
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_f

    .line 123
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 125
    :cond_f
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 128
    :cond_19
    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2f

    .line 129
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_28

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 132
    :cond_28
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    :cond_2f
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 135
    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 136
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 105
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 106
    return-void
.end method

.method public setConvexPath(Landroid/graphics/Path;)V
    .registers 4
    .param p1, "convexPath"    # Landroid/graphics/Path;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 223
    :goto_9
    return-void

    .line 215
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_19

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path must be convex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_19
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_24

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 220
    :cond_24
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 222
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    goto :goto_9
.end method

.method public setEmpty()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 63
    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 65
    return-void
.end method

.method public setOval(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 181
    if-ge p1, p3, :cond_4

    if-lt p2, p4, :cond_8

    .line 182
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 196
    :goto_7
    return-void

    .line 186
    :cond_8
    sub-int v0, p4, p2

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_1e

    .line 188
    sub-int v0, p4, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_7

    .line 192
    :cond_1e
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_29

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 193
    :cond_29
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 194
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    goto :goto_7
.end method

.method public setOval(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 202
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 203
    return-void
.end method

.method public setRect(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 143
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 144
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 151
    return-void
.end method

.method public setRoundRect(IIIIF)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # F

    .prologue
    .line 159
    if-ge p1, p3, :cond_4

    if-lt p2, p4, :cond_8

    .line 160
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 168
    :goto_7
    return-void

    .line 164
    :cond_8
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 165
    :cond_13
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    goto :goto_7
.end method

.method public setRoundRect(Landroid/graphics/Rect;F)V
    .registers 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    .prologue
    .line 174
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 175
    return-void
.end method
