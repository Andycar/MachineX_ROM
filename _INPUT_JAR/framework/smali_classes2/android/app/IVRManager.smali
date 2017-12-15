.class public interface abstract Landroid/app/IVRManager;
.super Ljava/lang/Object;
.source "IVRManager.java"


# static fields
.field public static final VR_API_VERSION_CODE:I = 0x1

.field public static final VR_MANAGER:Ljava/lang/String; = "vr"

.field public static final VR_OPTION_IPD:Ljava/lang/String; = "ipd"


# virtual methods
.method public abstract GetPowerLevelState()I
.end method

.method public abstract SetVrClocks(Ljava/lang/String;II)[I
.end method

.method public abstract getOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSystemOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVRBright()I
.end method

.method public abstract getVRColorTemperature()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isVRComfortableViewEnabled()Z
.end method

.method public abstract isVRDarkAdaptationEnabled()Z
.end method

.method public abstract isVRLowPersistenceEnabled()Z
.end method

.method public abstract isVRMode()Z
.end method

.method public abstract relFreq(Ljava/lang/String;)Z
.end method

.method public abstract releaseCPUMhz(Ljava/lang/String;)V
.end method

.method public abstract releaseGPUMhz(Ljava/lang/String;)V
.end method

.method public abstract return2EnableFreqLev()[I
.end method

.method public abstract setCPUClockMhz(Ljava/lang/String;[II)[I
.end method

.method public abstract setGPUClockMhz(Ljava/lang/String;I)I
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThreadSchedFifo(Ljava/lang/String;III)Z
.end method

.method public abstract setVRBright(I)V
.end method

.method public abstract setVRColorTemperature(I)V
.end method

.method public abstract setVRComfortableView(Z)V
.end method

.method public abstract setVRDarkAdaptation(Z)V
.end method

.method public abstract setVRLowPersistence(Z)V
.end method

.method public abstract setVRMode(Z)V
.end method

.method public abstract setVideoMode(Ljava/lang/String;FZ)Z
.end method

.method public abstract vrManagerVersion()Ljava/lang/String;
.end method

.method public abstract vrOVRVersion()Ljava/lang/String;
.end method
