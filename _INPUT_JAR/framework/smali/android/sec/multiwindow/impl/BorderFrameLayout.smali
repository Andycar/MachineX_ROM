.class public Landroid/sec/multiwindow/impl/BorderFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BorderFrameLayout.java"


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mBorderPaintOut:Landroid/graphics/Paint;

.field private mIsBorder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    if-eqz v0, :cond_8c

    .line 50
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_20

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    :cond_20
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    if-nez v0, :cond_3a

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    const v2, -0x6d6d6e

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    :cond_3a
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 63
    .local v9, "right":I
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->getMeasuredHeight()I

    move-result v8

    .line 65
    .local v8, "bottom":I
    int-to-float v3, v9

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    int-to-float v3, v9

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v8

    iget-object v7, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    int-to-float v4, v8

    iget-object v5, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintOut:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    .end local v8    # "bottom":I
    .end local v9    # "right":I
    :cond_8c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 35
    iget-boolean v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_16

    .line 36
    if-eqz p1, :cond_17

    .line 37
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    :goto_13
    invoke-virtual {p0}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->invalidate()V

    .line 43
    :cond_16
    return-void

    .line 39
    :cond_17
    iget-object v0, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mBorderPaintInner:Landroid/graphics/Paint;

    const v1, -0x6d6d6e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_13
.end method

.method public setBorderEnable(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Landroid/sec/multiwindow/impl/BorderFrameLayout;->mIsBorder:Z

    .line 31
    return-void
.end method
