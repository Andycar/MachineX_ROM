.class public Lcom/android/settings/myprofile/GradientColorPickerView;
.super Landroid/view/View;
.source "GradientColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private final LOG_TAG:Ljava/lang/String;

.field private WIDTH:I

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

.field private mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

.field private m_bFirst:Z

.field private selector:Landroid/graphics/Bitmap;

.field private spectrum:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    .line 27
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 28
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    .line 27
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 28
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    .line 27
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 28
    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private makeSpectrum()V
    .locals 28

    .prologue
    .line 147
    const/4 v3, 0x7

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    .line 152
    .local v7, "colors":[I
    const/4 v3, 0x7

    new-array v8, v3, [F

    .line 156
    .local v8, "positions":[F
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v8, v3

    .line 157
    const/4 v3, 0x1

    const v4, 0x3e2aaaab

    aput v4, v8, v3

    .line 158
    const/4 v3, 0x2

    const v4, 0x3eaaaaab

    aput v4, v8, v3

    .line 159
    const/4 v3, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v8, v3

    .line 160
    const/4 v3, 0x4

    const v4, 0x3f2aaaab

    aput v4, v8, v3

    .line 161
    const/4 v3, 0x5

    const v4, 0x3f555555

    aput v4, v8, v3

    .line 162
    const/4 v3, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v8, v3

    .line 164
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_1

    .line 168
    .local v15, "pos1":[F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 169
    .local v27, "spec":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v22, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 171
    .local v2, "shaderA":Landroid/graphics/Shader;
    new-instance v26, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 172
    .local v26, "mOvalHueSat":Landroid/graphics/Paint;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 173
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 175
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    const/4 v10, 0x1

    invoke-direct {v3, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 177
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 179
    .local v23, "drawnColors1":[[I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_0

    .line 180
    aget-object v3, v23, v24

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 181
    aget-object v3, v23, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v3, v4

    .line 182
    aget-object v3, v23, v24

    const/4 v4, 0x2

    const/high16 v5, -0x1000000

    aput v5, v3, v4

    .line 179
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    .line 187
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 190
    .local v25, "last":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 191
    .local v21, "satu":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    .line 195
    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    int-to-float v13, v3

    aget-object v14, v23, v24

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 197
    .local v9, "shaderB1":Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 198
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 200
    .end local v9    # "shaderB1":Landroid/graphics/Shader;
    :cond_1
    return-void

    .line 147
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private notifyColorChange()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 102
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v2, :cond_0

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 103
    :cond_0
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v2, :cond_1

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 104
    :cond_1
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 105
    :cond_2
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 107
    :cond_3
    const/4 v0, 0x1

    .line 109
    .local v0, "color":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v4, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    :cond_4
    :goto_0
    const/high16 v2, -0x1000000

    or-int/2addr v2, v0

    return v2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 291
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 293
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_0

    .line 294
    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    .line 338
    :cond_1
    :goto_0
    return v0

    .line 302
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    .line 303
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 305
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_3

    .line 306
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 308
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    goto :goto_0

    .line 312
    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    .line 313
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 315
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_5

    .line 316
    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 318
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    goto :goto_0

    .line 322
    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 323
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 325
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_7

    .line 326
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 328
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    goto :goto_0

    .line 332
    :cond_8
    const/16 v1, 0x42

    if-eq p1, v1, :cond_9

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_a

    .line 333
    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;->onCustomColorSubmit()V

    goto :goto_0

    .line 338
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 78
    if-eqz p1, :cond_2

    .line 79
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    .line 80
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    .line 81
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020539

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->makeSpectrum()V

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    .line 87
    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 88
    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 93
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 223
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 228
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return v4

    .line 232
    :pswitch_0
    const-string v1, "AIRON"

    const-string v2, "+++++++ GradientColor Picker : ACTION DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 236
    :cond_1
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_2

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 237
    :cond_2
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 238
    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v1, "AIRON"

    const-string v2, " ********** GradientColor Picker : ACTION MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 246
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_5

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 247
    :cond_5
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_6

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 248
    :cond_6
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 249
    :cond_7
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 250
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    goto/16 :goto_0

    .line 254
    :pswitch_2
    const-string v1, "AIRON"

    const-string v2, "------------ GradientColor Picker : ACTION UP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_9

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 257
    :cond_9
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_a

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 258
    :cond_a
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    .line 259
    :cond_b
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_c

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    .line 260
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->invalidate()V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    .line 125
    return-void
.end method
