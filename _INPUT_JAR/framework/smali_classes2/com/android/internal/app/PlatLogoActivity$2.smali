.class Lcom/android/internal/app/PlatLogoActivity$2;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$im:Landroid/widget/ImageView;

.field final synthetic val$platlogo:Landroid/graphics/drawable/Drawable;

.field final synthetic val$stick:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$platlogo:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$stick:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x2bc

    const/high16 v4, 0x3f800000    # 1.0f

    .line 147
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v1, v1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    if-nez v1, :cond_88

    .line 148
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 157
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$platlogo:Landroid/graphics/drawable/Drawable;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_94

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 158
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 160
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 162
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$stick:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 170
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$2$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/PlatLogoActivity$2$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    :goto_7f
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget v2, v1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    .line 205
    return-void

    .line 202
    :cond_88
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$2;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/PlatLogoActivity;->makeRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7f

    .line 157
    :array_94
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
