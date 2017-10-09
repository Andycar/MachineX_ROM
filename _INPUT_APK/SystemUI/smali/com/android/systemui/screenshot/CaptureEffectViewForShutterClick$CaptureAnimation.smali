.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "CaptureEffectViewForShutterClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;FF)V
    .locals 3
    .param p2, "fromAlpha"    # F
    .param p3, "toAlpha"    # F

    .prologue
    const/4 v2, 0x1

    .line 106
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .line 107
    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->setFillAfter(Z)V

    .line 109
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->setDuration(J)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->setRepeatCount(I)V

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->setRepeatMode(I)V

    .line 112
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    .line 119
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->requestLayout()V

    .line 120
    return-void
.end method
