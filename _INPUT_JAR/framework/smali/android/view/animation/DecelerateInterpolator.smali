.class public Landroid/view/animation/DecelerateInterpolator;
.super Ljava/lang/Object;
.source "DecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 38
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .param p1, "factor"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 48
    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v3, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 58
    if-eqz p2, :cond_1a

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_10
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1a
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_10
.end method


# virtual methods
.method public createNativeInterpolator()J
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createDecelerateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    .line 72
    sub-float v1, v4, p1

    sub-float v2, v4, p1

    mul-float/2addr v1, v2

    sub-float v0, v4, v1

    .line 76
    .local v0, "result":F
    :goto_f
    return v0

    .line 74
    .end local v0    # "result":F
    :cond_10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float v1, v4, p1

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget v6, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    mul-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    .restart local v0    # "result":F
    goto :goto_f
.end method
