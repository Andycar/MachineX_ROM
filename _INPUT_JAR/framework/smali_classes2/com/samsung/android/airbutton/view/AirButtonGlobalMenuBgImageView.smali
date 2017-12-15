.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;
.super Landroid/widget/ImageView;
.source "AirButtonGlobalMenuBgImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    return-void
.end method

.method public setAnimationArc(F)V
    .registers 2
    .param p1, "animationArc"    # F

    .prologue
    .line 36
    return-void
.end method

.method public startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "startDelay"    # I
    .param p2, "mFinishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 33
    return-void
.end method

.method public startOpenAnimation()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method
