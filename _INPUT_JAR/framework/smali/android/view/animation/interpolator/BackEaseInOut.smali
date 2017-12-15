.class public Landroid/view/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "BackEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "overshot"    # F

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/interpolator/BackEaseInOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-eqz p2, :cond_17

    .line 127
    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseInOut:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_c
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    return-void

    .line 129
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_17
    sget-object v1, Lcom/android/internal/R$styleable;->BackEaseInOut:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_c
.end method

.method private inout(FF)F
    .registers 11
    .param p1, "t"    # F
    .param p2, "o"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const-wide v6, 0x3ff8666666666666L    # 1.525

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 142
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_13

    .line 143
    const p2, 0x3fd9cd60

    .line 145
    :cond_13
    mul-float/2addr p1, v4

    .line 146
    cmpg-float v0, p1, v1

    if-gez v0, :cond_23

    .line 147
    mul-float v0, p1, p1

    float-to-double v2, p2

    mul-double/2addr v2, v6

    double-to-float p2, v2

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    .line 149
    :goto_22
    return v0

    :cond_23
    sub-float/2addr p1, v4

    mul-float v0, p1, p1

    float-to-double v2, p2

    mul-double/2addr v2, v6

    double-to-float p2, v2

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v5

    goto :goto_22
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 138
    iget v0, p0, Landroid/view/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result v0

    return v0
.end method
