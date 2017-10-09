.class public Lcom/android/settings/ColorButton;
.super Landroid/widget/ImageButton;
.source "ColorButton.java"


# static fields
.field static final COVER_BACKGROUND_COLOR_DEFAULT:I


# instance fields
.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SHADOW_HEIGHT:I

.field private COLOR_SHADOW_WIDTH:I

.field private COLOR_WIDTH:I

.field private MARGIN:I

.field private POSITION_GAP:I

.field private isFocused:Z

.field private mColorShadow:Landroid/graphics/drawable/Drawable;

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/ColorButton;->COVER_BACKGROUND_COLOR_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    .line 65
    return-void
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0x95

    const/4 v7, 0x0

    .line 134
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v3, "selectorRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v5, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 140
    .local v0, "mLinePaint":Landroid/graphics/Paint;
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget v6, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 146
    .local v1, "paint":Landroid/graphics/Paint;
    sget v4, Lcom/android/settings/ColorButton;->COVER_BACKGROUND_COLOR_DEFAULT:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 160
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 161
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 162
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/settings/ColorButton;->MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 164
    iget-boolean v4, p0, Lcom/android/settings/ColorButton;->isFocused:Z

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    :cond_0
    return-void
.end method

.method private initColorPicker(II)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 79
    iput p1, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_WIDTH:I

    .line 80
    iput p2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_HEIGHT:I

    .line 82
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    .line 85
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    .line 87
    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_WIDTH:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    .line 88
    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_PICKER_HEIGHT:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    .line 90
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v7, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    invoke-direct {v3, v10, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    .line 94
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    .line 96
    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    .line 97
    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    iput v2, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    .line 99
    iget-object v2, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/ColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020542

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_1
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    .line 107
    .local v5, "colors":[I
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    .line 112
    .local v6, "positions":[F
    iget-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 113
    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    .line 114
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/ColorButton;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/settings/ColorButton;->COLOR_SHADOW_WIDTH:I

    iget v3, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 117
    .local v0, "g":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    iget v3, p0, Lcom/android/settings/ColorButton;->POSITION_GAP:I

    iget v4, p0, Lcom/android/settings/ColorButton;->COLOR_WIDTH:I

    iget v7, p0, Lcom/android/settings/ColorButton;->COLOR_HEIGHT:I

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/ColorButton;->mColorShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    .end local v0    # "g":Landroid/graphics/LinearGradient;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "p":Landroid/graphics/Paint;
    :cond_2
    return-void

    .line 103
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data

    .line 107
    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/ColorButton;->drawColors(Landroid/graphics/Canvas;)V

    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ColorButton;->initColorPicker(II)V

    .line 74
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 75
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "Focused"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/settings/ColorButton;->isFocused:Z

    .line 172
    return-void
.end method
