.class Lcom/android/keyguard/KeyguardWidgetCarousel$2;
.super Ljava/lang/Object;
.source "KeyguardWidgetCarousel.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardWidgetCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFactor:F

.field mInternal:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetCarousel;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetCarousel;)V
    .locals 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->this$0:Lcom/android/keyguard/KeyguardWidgetCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->mInternal:Landroid/view/animation/Interpolator;

    .line 216
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 219
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    div-float v0, v1, v0

    sub-float v0, v1, v0

    sub-float/2addr p1, v0

    .line 220
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->mFactor:F

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float p1, v0, v1

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;->mInternal:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
