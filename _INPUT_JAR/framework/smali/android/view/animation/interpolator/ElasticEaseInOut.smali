.class public Landroid/view/animation/interpolator/ElasticEaseInOut;
.super Ljava/lang/Object;
.source "ElasticEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "amplitude"    # F
    .param p2, "period"    # F

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    .line 113
    iput p2, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/interpolator/ElasticEaseInOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-eqz p2, :cond_1e

    .line 131
    sget-object v1, Lcom/android/internal/R$styleable;->ElasticEaseInOut:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_d
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    return-void

    .line 133
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1e
    sget-object v1, Lcom/android/internal/R$styleable;->ElasticEaseInOut:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_d
.end method

.method private inout(FFF)F
    .registers 16
    .param p1, "t"    # F
    .param p2, "a"    # F
    .param p3, "p"    # F

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 148
    cmpl-float v3, p1, v1

    if-nez v3, :cond_f

    .line 169
    :goto_e
    return v1

    .line 151
    :cond_f
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_15

    move v1, v2

    .line 152
    goto :goto_e

    .line 154
    :cond_15
    cmpl-float v3, p3, v1

    if-nez v3, :cond_1c

    .line 155
    const p3, 0x3ee66667    # 0.45000002f

    .line 158
    :cond_1c
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_24

    cmpg-float v1, p2, v2

    if-gez v1, :cond_4c

    .line 159
    :cond_24
    const/high16 p2, 0x3f800000    # 1.0f

    .line 160
    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, p3, v1

    .line 164
    .local v0, "s":F
    :goto_2a
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    .line 165
    cmpg-float v1, p1, v2

    if-gez v1, :cond_58

    .line 166
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    float-to-double v6, p2

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-float v1, p1, v0

    float-to-double v6, v1

    mul-double/2addr v6, v8

    float-to-double v8, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_e

    .line 162
    .end local v0    # "s":F
    :cond_4c
    float-to-double v4, p3

    div-double/2addr v4, v8

    div-float v1, v2, p2

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .restart local v0    # "s":F
    goto :goto_2a

    .line 169
    :cond_58
    float-to-double v4, p2

    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-float v1, p1, v0

    float-to-double v4, v1

    mul-double/2addr v4, v8

    float-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_e
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "t"    # F

    .prologue
    .line 144
    iget v0, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iget v1, p0, Landroid/view/animation/interpolator/ElasticEaseInOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Landroid/view/animation/interpolator/ElasticEaseInOut;->inout(FFF)F

    move-result v0

    return v0
.end method
