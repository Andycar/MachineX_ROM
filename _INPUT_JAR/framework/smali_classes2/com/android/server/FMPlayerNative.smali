.class public Lcom/android/server/FMPlayerNative;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNative$PIECCData;,
        Lcom/android/server/FMPlayerNative$RTPlusData;,
        Lcom/android/server/FMPlayerNative$RDSData;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static mService:Lcom/android/server/FMRadioService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    const-string v2, "fmradio_jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FMRadio lib loaded"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1a

    :goto_17
    sput-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    return-void

    :cond_1a
    move v0, v1

    goto :goto_17
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/FMRadioService;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 25
    return-void
.end method

.method public static notifyAFDataReceived(J)V
    .registers 6
    .param p0, "af"    # J

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 91
    :goto_8
    return-void

    .line 89
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAFDataReceived :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 90
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xe

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public static notifyAFStarted()V
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 79
    :goto_8
    return-void

    .line 77
    :cond_9
    const-string v0, "NotifyAFStarted :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public static notifyPIECCEvent(Lcom/android/server/FMPlayerNative$PIECCData;)V
    .registers 3
    .param p0, "ob"    # Lcom/android/server/FMPlayerNative$PIECCData;

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isDNSEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 67
    :goto_8
    return-void

    .line 63
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got notifyPIECCEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 65
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public static notifyRDSEvent(Lcom/android/server/FMPlayerNative$RDSData;)V
    .registers 3
    .param p0, "ob"    # Lcom/android/server/FMPlayerNative$RDSData;

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 46
    :goto_8
    return-void

    .line 43
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got Events :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 45
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public static notifyRTPlusEvent(Lcom/android/server/FMPlayerNative$RTPlusData;)V
    .registers 3
    .param p0, "ob"    # Lcom/android/server/FMPlayerNative$RTPlusData;

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 56
    :goto_8
    return-void

    .line 53
    :cond_9
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got notifyRTPlusEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 55
    :cond_23
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_8
.end method


# virtual methods
.method public native cancelAFSwitching()V
.end method

.method public native cancelSeek()V
.end method

.method public native disableAF()V
.end method

.method public native disableDNS()V
.end method

.method public native disableRDS()V
.end method

.method public native enableAF()V
.end method

.method public native enableDNS()V
.end method

.method public native enableRDS()V
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 31
    return-void
.end method

.method public native getAFRMSSISamples()I
.end method

.method public native getAFRMSSIThreshold()I
.end method

.method public native getAFValid_th()I
.end method

.method public native getAF_th()I
.end method

.method public native getCFOTh12()I
.end method

.method public native getCnt_th()I
.end method

.method public native getCnt_th_2()I
.end method

.method public native getCurrentChannel()J
.end method

.method public native getCurrentRSSI()J
.end method

.method public native getCurrentSNR()J
.end method

.method public native getGoodChannelRMSSIThreshold()I
.end method

.method public native getHybridSearch()Ljava/lang/String;
.end method

.method public native getMaxVolume()J
.end method

.method public native getOffChannelThreshold()I
.end method

.method public native getOnChannelThreshold()I
.end method

.method public native getRMSSIFirstStage()I
.end method

.method public native getRSSI_th()I
.end method

.method public native getRSSI_th_2()I
.end method

.method public native getSINRFirstStage()I
.end method

.method public native getSINRSamples()I
.end method

.method public native getSINRThreshold()I
.end method

.method public native getSNR_th()I
.end method

.method public native getSNR_th_2()I
.end method

.method public native getSearchAlgoType()I
.end method

.method public native getSoftMuteMode()Z
.end method

.method public native getVolume()J
.end method

.method public native muteOff()V
.end method

.method public native muteOn()V
.end method

.method public native off()V
.end method

.method public native on()J
.end method

.method public native searchAll()J
.end method

.method public native searchDown()J
.end method

.method public native searchUp()J
.end method

.method public native seekDown()J
.end method

.method public native seekUp()J
.end method

.method public native setAFRMSSISamples(I)V
.end method

.method public native setAFRMSSIThreshold(I)V
.end method

.method public native setAFValid_th(I)V
.end method

.method public native setAF_th(I)V
.end method

.method public native setBand(I)V
.end method

.method public native setCFOTh12(I)V
.end method

.method public native setChannelSpacing(I)V
.end method

.method public native setCnt_th(I)V
.end method

.method public native setCnt_th_2(I)V
.end method

.method public native setDEConstant(J)V
.end method

.method public native setFMIntenna(Z)V
.end method

.method public native setGoodChannelRMSSIThreshold(I)V
.end method

.method public native setHybridSearch(Ljava/lang/String;)V
.end method

.method public native setMono()V
.end method

.method public native setOffChannelThreshold(I)V
.end method

.method public native setOnChannelThreshold(I)V
.end method

.method public native setRMSSIFirstStage(I)V
.end method

.method public native setRSSI_th(I)V
.end method

.method public native setRSSI_th_2(I)V
.end method

.method public native setRecordMode(I)V
.end method

.method public native setSINRFirstStage(I)V
.end method

.method public native setSINRSamples(I)V
.end method

.method public native setSINRThreshold(I)V
.end method

.method public native setSNR_th(I)V
.end method

.method public native setSNR_th_2(I)V
.end method

.method public native setScanning(Z)V
.end method

.method public native setSearchAlgoType(I)V
.end method

.method public native setSeekRSSI(J)V
.end method

.method public native setSeekSNR(J)V
.end method

.method public native setSoftMuteControl(III)V
.end method

.method public native setSoftmute(Z)V
.end method

.method public native setSpeakerOn(Z)V
.end method

.method public native setStereo()V
.end method

.method public native setVolume(J)V
.end method

.method public native tune(J)V
.end method
