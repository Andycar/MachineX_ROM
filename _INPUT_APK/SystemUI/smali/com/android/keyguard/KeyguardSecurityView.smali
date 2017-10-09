.class public interface abstract Lcom/android/keyguard/KeyguardSecurityView;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"


# static fields
.field public static final SCREEN_ON:I = 0x1

.field public static final VIEW_REVEALED:I = 0x2


# virtual methods
.method public abstract getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
.end method

.method public abstract hideBouncer(I)V
.end method

.method public abstract needsInput()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
.end method

.method public abstract setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
.end method

.method public abstract showBouncer(I)V
.end method

.method public abstract showUsabilityHint()V
.end method

.method public abstract startAppearAnimation()V
.end method

.method public abstract startDisappearAnimation(Ljava/lang/Runnable;)Z
.end method
