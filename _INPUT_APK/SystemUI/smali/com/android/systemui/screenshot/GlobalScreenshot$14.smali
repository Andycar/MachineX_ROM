.class Lcom/android/systemui/screenshot/GlobalScreenshot$14;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "x"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const v4, 0x3f5c4771

    .line 1399
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 1401
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-float v1, p1, v4

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 1403
    :cond_0
    return v0
.end method
