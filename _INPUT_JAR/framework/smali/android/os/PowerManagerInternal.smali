.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public abstract getLowPowerModeEnabled()Z
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract setButtonBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setButtonTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setScreenDimDurationOverrideFromWindowManager(J)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method
