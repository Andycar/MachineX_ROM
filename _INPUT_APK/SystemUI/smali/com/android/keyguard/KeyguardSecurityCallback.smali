.class public interface abstract Lcom/android/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(Z)V
.end method

.method public abstract dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract reportUnlockAttempt(Z)V
.end method

.method public abstract setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
.end method

.method public abstract showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
.end method

.method public abstract showWipeDialog(I)V
.end method

.method public abstract userActivity()V
.end method
