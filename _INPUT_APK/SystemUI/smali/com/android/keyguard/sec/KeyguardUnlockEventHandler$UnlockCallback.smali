.class public interface abstract Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnlockCallback"
.end annotation


# virtual methods
.method public abstract onUnlockExecuted()V
.end method

.method public abstract onUnlockViewPressed()V
.end method

.method public abstract onUnlockViewReleased()V
.end method

.method public abstract onUnlockViewSwiped(Z)V
.end method

.method public abstract setHelpText()V
.end method

.method public abstract userActivity()V
.end method
