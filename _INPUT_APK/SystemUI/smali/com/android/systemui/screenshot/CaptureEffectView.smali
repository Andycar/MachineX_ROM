.class public Lcom/android/systemui/screenshot/CaptureEffectView;
.super Landroid/view/View;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;,
        Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;
    }
.end annotation


# static fields
.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private final ANIMATION_TIME:I

.field private final GRADIENT_ALPHA:I

.field private final GRADIENT_COLOR_1:I

.field private final GRADIENT_COLOR_2:I

.field private final TAG:Ljava/lang/String;

.field private isFirst:Z

.field private mBmp:Landroid/graphics/Bitmap;

.field private mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

.field private mDirection:I

.field private mGradientColor2:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTiltMode:Landroid/graphics/Shader$TileMode;

.field private mTranslateOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const v3, 0xffffff

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, "CaptureEffectView"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    .line 43
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->ANIMATION_TIME:I

    .line 44
    const v0, -0x33000001    # -1.3421772E8f

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_COLOR_1:I

    .line 45
    iput v3, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_COLOR_2:I

    .line 46
    const/16 v0, 0xcc

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->GRADIENT_ALPHA:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    .line 50
    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    .line 52
    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    .line 57
    iput v3, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    .line 59
    iput-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CaptureEffectView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/CaptureEffectView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/CaptureEffectView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/CaptureEffectView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    return-object v0
.end method

.method private clearCaptureBitmap()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "CaptureEffectView"

    const-string v1, "clearCaptureBitmap() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "CaptureEffectView"

    const-string v1, "clearCaptureBitmap() start is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "CaptureEffectView"

    const-string v1, "cancel() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearAnimation()V

    .line 110
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    const-string v0, "CaptureEffectView"

    const-string v1, "onDraw() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "CaptureEffectView"

    const-string v1, "mTempRect is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "CaptureEffectView"

    const-string v1, "mBmp is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F

    mul-float v3, v0, v1

    .line 129
    .local v3, "position":F
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 150
    .end local v3    # "position":F
    :cond_1
    :goto_0
    return-void

    .line 133
    .restart local v3    # "position":F
    :pswitch_0
    const-string v0, "CaptureEffectView"

    const-string v1, "LEFT_TO_RIGHT start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v8, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    const v6, -0x33000001    # -1.3421772E8f

    iget-object v7, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "CaptureEffectView"

    const-string v1, "RIGHT_TO_LEFT start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    const/4 v6, 0x0

    const v7, -0x33000001    # -1.3421772E8f

    iget v8, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    iget-object v9, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTiltMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    .line 71
    return-void
.end method

.method public show(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/screenshot/CaptureEffectView;->show(Landroid/graphics/Bitmap;I)V

    .line 75
    return-void
.end method

.method public show(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "direction"    # I

    .prologue
    .line 79
    const-string v0, "CaptureEffectView"

    const-string v1, "show() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V

    .line 83
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mBmp:Landroid/graphics/Bitmap;

    .line 84
    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I

    .line 85
    const v0, 0xffffff

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z

    .line 88
    new-instance v0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;-><init>(Lcom/android/systemui/screenshot/CaptureEffectView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method
