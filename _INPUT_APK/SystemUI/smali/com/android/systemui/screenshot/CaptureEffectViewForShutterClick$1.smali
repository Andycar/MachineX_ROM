.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterClick.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "CaptureEffectViewForShutterClick"

    const-string v1, "onFinish called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;->onFinish()V

    .line 82
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 72
    return-void
.end method
