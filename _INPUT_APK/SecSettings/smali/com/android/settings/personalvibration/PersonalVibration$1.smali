.class Lcom/android/settings/personalvibration/PersonalVibration$1;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v1, v1, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    .line 249
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v1, v1, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    const/4 v2, -0x1

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setRunPlayTimer()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a096c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    return-void
.end method
