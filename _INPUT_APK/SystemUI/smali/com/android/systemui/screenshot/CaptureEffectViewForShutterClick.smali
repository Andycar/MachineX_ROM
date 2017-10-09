.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
.super Landroid/view/View;
.source "CaptureEffectViewForShutterClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;,
        Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;
    }
.end annotation


# instance fields
.field final ANIMATION_TIME:I

.field private CAPTURE_REGION1:I

.field private CAPTURE_REGION2:I

.field final TAG:Ljava/lang/String;

.field alpha:F

.field isRectInit:Z

.field private mCaptureAnimation:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;

.field private mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    const/16 v1, 0xe

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "CaptureEffectViewForShutterClick"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->TAG:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION1:I

    .line 37
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION2:I

    .line 39
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->ANIMATION_TIME:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->isRectInit:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    .line 51
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 52
    :cond_0
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION1:I

    .line 53
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION2:I

    .line 55
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xe

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "CaptureEffectViewForShutterClick"

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->TAG:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION1:I

    .line 37
    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION2:I

    .line 39
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->ANIMATION_TIME:I

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->isRectInit:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->isRectInit:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->isRectInit:Z

    .line 92
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->getHitRect(Landroid/graphics/Rect;)V

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION1:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    mul-float v6, v0, v1

    .line 96
    .local v6, "lr_bound":F
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->CAPTURE_REGION2:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    mul-float v7, v0, v1

    .line 98
    .local v7, "tb_bound":F
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v6

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v7

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v3, v0, v6

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v4, v0, v7

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 102
    return-void
.end method

.method public setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    .line 63
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;FF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimation:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimation:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->mCaptureAnimation:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void
.end method
