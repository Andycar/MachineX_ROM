.class final Lcom/android/internal/widget/multiwaveview/Ease$Sine$1;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/Ease$Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 9
    .param p1, "input"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    div-float v1, p1, v6

    float-to-double v2, v1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
