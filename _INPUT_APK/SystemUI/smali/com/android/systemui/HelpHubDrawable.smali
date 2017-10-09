.class final Lcom/android/systemui/HelpHubDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HelphubDrawable.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBitmapY:F

.field private mHelphubDrawableHeight:I

.field private mHelphubDrawableWidth:I

.field private mInitialBounds:Landroid/graphics/Rect;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    .line 29
    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    .line 34
    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingTop:I

    .line 40
    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingBottom:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    .line 49
    iput-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/HelpHubDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method private invalidatePadding()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    .line 66
    .local v0, "localBounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 114
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget v1, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 155
    return-void
.end method

.method public setBitmapY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapY:F

    .line 125
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/HelpHubDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mInitialBounds:Landroid/graphics/Rect;

    .line 82
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/HelpHubDrawable;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 86
    return-void
.end method

.method public setHeight(I)V
    .locals 5
    .param p1, "height"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    .local v0, "bounds":Landroid/graphics/Rect;
    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    .line 148
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableHeight:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    .line 150
    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 89
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingLeft:I

    .line 90
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingRight:I

    .line 91
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingTop:I

    .line 92
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/systemui/HelpHubDrawable;->mPaddingBottom:I

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/HelpHubDrawable;->invalidatePadding()V

    .line 96
    return-void
.end method

.method public setWidth(I)V
    .locals 5
    .param p1, "width"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 139
    .local v0, "bounds":Landroid/graphics/Rect;
    iput p1, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    .line 141
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/HelpHubDrawable;->mHelphubDrawableWidth:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/HelpHubDrawable;->setBounds(IIII)V

    .line 142
    return-void
.end method
