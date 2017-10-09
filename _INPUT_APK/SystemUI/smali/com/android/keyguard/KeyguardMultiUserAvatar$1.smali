.class Lcom/android/keyguard/KeyguardMultiUserAvatar$1;
.super Ljava/lang/Object;
.source "KeyguardMultiUserAvatar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$finalTextAlpha:I

.field final synthetic val$initAlpha:F

.field final synthetic val$initScale:F

.field final synthetic val$initTextAlpha:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFII)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    iput p3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    iput p4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    iput p5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    iput p6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    iput p7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 193
    .local v1, "r":F
    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalScale:F

    mul-float/2addr v5, v1

    add-float v2, v4, v5

    .line 194
    .local v2, "scale":F
    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initAlpha:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalAlpha:F

    mul-float/2addr v5, v1

    add-float v0, v4, v5

    .line 195
    .local v0, "alpha":F
    sub-float v4, v6, v1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$initTextAlpha:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->val$finalTextAlpha:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 196
    .local v3, "textAlpha":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 198
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v3, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 200
    return-void
.end method
