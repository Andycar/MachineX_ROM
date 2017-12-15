.class public Landroid/view/animation/interpolator/QuadEaseInOut;
.super Ljava/lang/Object;
.source "QuadEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private inout(F)F
    .registers 5
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 104
    mul-float/2addr p1, v1

    .line 105
    cmpg-float v0, p1, v2

    if-gez v0, :cond_e

    .line 106
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 108
    :goto_d
    return v0

    :cond_e
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr p1, v2

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_d
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3
    .param p1, "t"    # F

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/QuadEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
