.class public interface abstract Landroid/view/WindowManagerPolicy$WindowState;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowState"
.end annotation


# virtual methods
.method public abstract computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract disableHideSViewCoverOnce(Z)V
.end method

.method public abstract getAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getAttrs()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getContentFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getCoverMode()I
.end method

.method public abstract getDisplayFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenContentInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGivenInsetsPendingLw()Z
.end method

.method public abstract getGivenVisibleInsetsLw()Landroid/graphics/Rect;
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end method

.method public abstract getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract getOverscanFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract getOwningPackage()Ljava/lang/String;
.end method

.method public abstract getOwningUid()I
.end method

.method public abstract getRequestedHeightLw()I
.end method

.method public abstract getRequestedOrientation()I
.end method

.method public abstract getRequestedWidthLw()I
.end method

.method public abstract getScaleFactor()Landroid/graphics/PointF;
.end method

.method public abstract getShownFrameLw()Landroid/graphics/RectF;
.end method

.method public abstract getStackBounds()Landroid/graphics/Rect;
.end method

.method public abstract getSurfaceLayer()I
.end method

.method public abstract getSystemUiVisibility()I
.end method

.method public abstract getTargetAppToken()Landroid/view/IApplicationToken;
.end method

.method public abstract getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract getVisibleFrameLw()Landroid/graphics/Rect;
.end method

.method public abstract hasAppShownWindows()Z
.end method

.method public abstract hasChild()Z
.end method

.method public abstract hasDrawnLw()Z
.end method

.method public abstract hasSubWindow()Z
.end method

.method public abstract hideLw(Z)Z
.end method

.method public abstract hideLw(ZZZ)Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isAnimatingLw()Z
.end method

.method public abstract isArrangedUpperSideInputMethod()Z
.end method

.method public abstract isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isAttachedWindowFocused()Z
.end method

.method public abstract isDefaultDisplay()Z
.end method

.method public abstract isDisplayedLw()Z
.end method

.method public abstract isFixedBounds()Z
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isGoneForLayoutLw()Z
.end method

.method public abstract isTransluent()Z
.end method

.method public abstract isVisibleLw()Z
.end method

.method public abstract isVisibleOrBehindKeyguardLw()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract showLw(Z)Z
.end method

.method public abstract showLw(ZZZ)Z
.end method

.method public abstract willBeHideBlockMain()Z
.end method

.method public abstract willBeHideSViewCoverOnce()Z
.end method
