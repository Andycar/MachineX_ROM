.class Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;
.super Landroid/view/animation/Animation;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CaptureEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAnimation"
.end annotation


# instance fields
.field final MODE_ALPHA:I

.field final MODE_TRANSLATE:I

.field mMode:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 159
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 154
    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_TRANSLATE:I

    .line 155
    iput v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_ALPHA:I

    .line 157
    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setFillAfter(Z)V

    .line 162
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setDuration(J)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setRepeatCount(I)V

    .line 165
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v2, 0xff

    .line 170
    const-string v0, "CaptureEffectView"

    const-string v1, "applyTransformation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$300(Lcom/android/systemui/screenshot/CaptureEffectView;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$400(Lcom/android/systemui/screenshot/CaptureEffectView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "CaptureEffectView"

    const-string v1, "isFirst true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    .line 202
    :cond_1
    :goto_1
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$000(Lcom/android/systemui/screenshot/CaptureEffectView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    sub-float v1, v3, p1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    const/high16 v1, 0x434c0000    # 204.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$202(Lcom/android/systemui/screenshot/CaptureEffectView;I)I

    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    .line 198
    const-string v0, "CaptureEffectView"

    const-string v1, "onFinish called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;->onFinish()V

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
