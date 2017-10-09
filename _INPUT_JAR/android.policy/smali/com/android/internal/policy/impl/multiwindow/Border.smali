.class public Lcom/android/internal/policy/impl/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final DRAW_ALL:I = 0xf

.field public static final DRAW_BOTTOM:I = 0x8

.field public static final DRAW_LEFT:I = 0x1

.field public static final DRAW_RIGHT:I = 0x2

.field public static final DRAW_TOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawOption:I

.field private mFocusLineColor:I

.field private mFocusOutLineColor:I

.field private mInnerLineColor:I

.field private final mIsSupportUnfocusedShadow:Z

.field private mOutLineColor:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private mThicknessForUnFocused:I

.field private mUnFocusLineColor:I

.field private mUnFocusOutLineColor:I

.field private mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v0, :cond_a9

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080630

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108062d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    .line 83
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    .line 88
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    .line 92
    return-void
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IIFI)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "thickness"    # F
    .param p5, "color"    # I

    .prologue
    .line 114
    const/4 v6, 0x0

    .line 115
    .local v6, "rotationAdjX":I
    const/4 v7, 0x0

    .line 136
    .local v7, "rotationAdjY":I
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_86

    .line 137
    int-to-float v1, v6

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v6, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 138
    int-to-float v0, v6

    add-float v1, v0, p4

    int-to-float v0, v7

    add-float v2, v0, p4

    add-int v0, v6, p2

    int-to-float v0, v0

    sub-float v3, v0, p4

    add-int v0, v6, p3

    int-to-float v0, v0

    sub-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 140
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3f

    .line 141
    int-to-float v1, v6

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    int-to-float v0, v7

    add-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 143
    :cond_3f
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_57

    .line 144
    int-to-float v1, v6

    add-int v0, v7, p3

    int-to-float v0, v0

    sub-float v2, v0, p4

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 146
    :cond_57
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6b

    .line 147
    int-to-float v1, v6

    int-to-float v2, v7

    int-to-float v0, v6

    add-float v3, v0, p4

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 149
    :cond_6b
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_83

    .line 150
    add-int v0, v6, p2

    int-to-float v0, v0

    sub-float v1, v0, p4

    int-to-float v2, v7

    add-int v0, v6, p2

    int-to-float v3, v0

    add-int v0, v7, p3

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 152
    :cond_83
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 154
    :cond_86
    return-void
.end method


# virtual methods
.method public drawBorderBitmap(Landroid/graphics/Canvas;III)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 157
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v2, :cond_5c

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v1, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 161
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 162
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 163
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 165
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 175
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    .end local v1    # "mTmpDrawRect":Landroid/graphics/Rect;
    :cond_5c
    :goto_5c
    return-void

    .line 177
    .restart local v1    # "mTmpDrawRect":Landroid/graphics/Rect;
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 179
    .local v0, "conf":Landroid/content/res/Configuration;
    const/4 v2, 0x3

    if-ne p4, v2, :cond_96

    .line 180
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_82

    .line 182
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5c

    .line 187
    :cond_82
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5c

    .line 192
    :cond_96
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_ac

    .line 194
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5c

    .line 199
    :cond_ac
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 201
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5c
.end method

.method public drawBorderLine(Landroid/graphics/Canvas;II)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 109
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    .line 110
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    .line 111
    return-void
.end method

.method public setDrawOption(I)V
    .registers 2
    .param p1, "option"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mDrawOption:I

    .line 96
    return-void
.end method

.method public setFocus(Z)V
    .registers 3
    .param p1, "focus"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_b

    .line 100
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    .line 101
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    .line 106
    :goto_a
    return-void

    .line 103
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mInnerLineColor:I

    .line 104
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mOutLineColor:I

    goto :goto_a
.end method
