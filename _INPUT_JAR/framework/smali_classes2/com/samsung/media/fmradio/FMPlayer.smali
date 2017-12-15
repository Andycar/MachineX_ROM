.class public Lcom/samsung/media/fmradio/FMPlayer;
.super Ljava/lang/Object;
.source "FMPlayer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FMPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sput-object p1, Lcom/samsung/media/fmradio/FMPlayer;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 70
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private checkBusy()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, "code":I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_1a

    move-result v0

    .line 585
    :goto_7
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    .line 586
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x3

    const-string v4, "Player is scanning channel"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 581
    :catch_1a
    move-exception v1

    .line 582
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7

    .line 593
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    return-void
.end method

.method private checkOnStatus()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    .line 568
    .local v0, "val":Z
    if-nez v0, :cond_16

    .line 569
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v2, 0x1

    const-string v3, "Player is not ON.Call on() method to start player"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 575
    :cond_16
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .registers 6
    .param p1, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 400
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, 0x1

    const-string v2, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public GetAFRMSSISamples()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v1, -0x1

    .line 1059
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1061
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFRMSSISamples()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 1066
    :cond_d
    :goto_d
    return v1

    .line 1062
    :catch_e
    move-exception v0

    .line 1063
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetAFRMSSIThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v1, -0x1

    .line 1038
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1040
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFRMSSIThreshold()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 1045
    :cond_d
    :goto_d
    return v1

    .line 1041
    :catch_e
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetAFValid_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 809
    const/4 v1, -0x1

    .line 810
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 812
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFValid_th()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 817
    :cond_d
    :goto_d
    return v1

    .line 813
    :catch_e
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetAF_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v1, -0x1

    .line 789
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 791
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAF_th()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 796
    :cond_d
    :goto_d
    return v1

    .line 792
    :catch_e
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetCFOTh12()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 973
    const/4 v1, -0x1

    .line 974
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 976
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCFOTh12()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 981
    :cond_d
    :goto_d
    return v1

    .line 977
    :catch_e
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetGoodChannelRMSSIThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1079
    const/4 v1, -0x1

    .line 1080
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1082
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getGoodChannelRMSSIThreshold()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 1087
    :cond_d
    :goto_d
    return v1

    .line 1083
    :catch_e
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetHybridSearch()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1100
    const-string v1, ""

    .line 1101
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1103
    :try_start_8
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getHybridSearch()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    .line 1108
    :cond_e
    :goto_e
    return-object v1

    .line 1104
    :catch_f
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_e
.end method

.method public GetOffChannelThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v1, -0x1

    .line 932
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 934
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getOffChannelThreshold()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 939
    :cond_d
    :goto_d
    return v1

    .line 935
    :catch_e
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetOnChannelThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 910
    const/4 v1, -0x1

    .line 911
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 913
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getOnChannelThreshold()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 918
    :cond_d
    :goto_d
    return v1

    .line 914
    :catch_e
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetRMSSIFirstStage()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 994
    const/4 v1, -0x1

    .line 995
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 997
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRMSSIFirstStage()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 1002
    :cond_d
    :goto_d
    return v1

    .line 998
    :catch_e
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetSINRFirstStage()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1016
    const/4 v1, -0x1

    .line 1017
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1019
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSINRFirstStage()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 1024
    :cond_d
    :goto_d
    return v1

    .line 1020
    :catch_e
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetSINRSamples()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 889
    const/4 v1, -0x1

    .line 890
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 892
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSINRSamples()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 897
    :cond_d
    :goto_d
    return v1

    .line 893
    :catch_e
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetSINRThreshold()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 952
    const/4 v1, -0x1

    .line 953
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 955
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSINRThreshold()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 960
    :cond_d
    :goto_d
    return v1

    .line 956
    :catch_e
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public GetSearchAlgoType()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 868
    const/4 v1, -0x1

    .line 869
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 871
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSearchAlgoType()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 876
    :cond_d
    :goto_d
    return v1

    .line 872
    :catch_e
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public SetAFRMSSISamples(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1049
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 1051
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFRMSSISamples(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1055
    :goto_8
    return-void

    .line 1052
    :catch_9
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetAFRMSSIThreshold(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 1030
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFRMSSIThreshold(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1034
    :goto_8
    return-void

    .line 1031
    :catch_9
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetAFValid_th(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 802
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFValid_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 806
    :goto_8
    return-void

    .line 803
    :catch_9
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetAF_th(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 781
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAF_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 785
    :goto_8
    return-void

    .line 782
    :catch_9
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetCFOTh12(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 966
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCFOTh12(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 970
    :goto_8
    return-void

    .line 967
    :catch_9
    move-exception v0

    .line 968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetGoodChannelRMSSIThreshold(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 1072
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setGoodChannelRMSSIThreshold(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1076
    :goto_8
    return-void

    .line 1073
    :catch_9
    move-exception v0

    .line 1074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetHybridSearch(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 1093
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setHybridSearch(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1097
    :goto_8
    return-void

    .line 1094
    :catch_9
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetOffChannelThreshold(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 924
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setOffChannelThreshold(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 928
    :goto_8
    return-void

    .line 925
    :catch_9
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetOnChannelThreshold(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 903
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setOnChannelThreshold(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 907
    :goto_8
    return-void

    .line 904
    :catch_9
    move-exception v0

    .line 905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetRMSSIFirstStage(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 987
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRMSSIFirstStage(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 991
    :goto_8
    return-void

    .line 988
    :catch_9
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetSINRFirstStage(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 1009
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSINRFirstStage(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 1013
    :goto_8
    return-void

    .line 1010
    :catch_9
    move-exception v0

    .line 1011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetSINRSamples(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 882
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSINRSamples(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 886
    :goto_8
    return-void

    .line 883
    :catch_9
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetSINRThreshold(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 945
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSINRThreshold(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 949
    :goto_8
    return-void

    .line 946
    :catch_9
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SetSearchAlgoType(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 861
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSearchAlgoType(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 865
    :goto_8
    return-void

    .line 862
    :catch_9
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public SkipTuning_Value()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->SkipTuning_Value()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 704
    :goto_5
    return-void

    .line 701
    :catch_6
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public cancelAFSwitching()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 348
    :goto_5
    return-void

    .line 345
    :catch_6
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public cancelScan()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 372
    :goto_6
    return v1

    .line 369
    :catch_7
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 372
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelSeek()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 495
    :goto_5
    return-void

    .line 492
    :catch_6
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public disableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 336
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 340
    :goto_8
    return-void

    .line 337
    :catch_9
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public disableDNS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableDNS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 321
    :goto_8
    return-void

    .line 318
    :catch_9
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public disableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 298
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 302
    :goto_8
    return-void

    .line 299
    :catch_9
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableAF()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableAF()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 331
    :goto_8
    return-void

    .line 327
    :catch_9
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableDNS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableDNS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 312
    :goto_8
    return-void

    .line 308
    :catch_9
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public enableRDS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableRDS()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 293
    :goto_8
    return-void

    .line 289
    :catch_9
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1114
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 1115
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 1116
    return-void
.end method

.method public getCnt_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v1, -0x1

    .line 732
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 734
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 739
    :cond_d
    :goto_d
    return v1

    .line 735
    :catch_e
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getCnt_th_2()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 767
    const/4 v1, -0x1

    .line 768
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 770
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th_2()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 775
    :cond_d
    :goto_d
    return v1

    .line 771
    :catch_e
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getCurrentChannel()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 500
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 501
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 505
    :goto_c
    return-wide v2

    .line 502
    :catch_d
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 505
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public getCurrentRSSI()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 446
    :try_start_6
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentRSSI()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 451
    :goto_c
    return-wide v2

    .line 447
    :catch_d
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public getCurrentSNR()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 457
    :try_start_6
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentSNR()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 462
    :goto_c
    return-wide v2

    .line 458
    :catch_d
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 462
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public getLastScanResult()[J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 563
    :goto_7
    return-object v1

    .line 559
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 560
    :catch_f
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getMaxVolume()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 546
    :goto_6
    return-wide v2

    .line 543
    :catch_7
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 546
    const-wide/16 v2, -0x1

    goto :goto_6
.end method

.method public getRSSI_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v1, -0x1

    .line 708
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 710
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 715
    :cond_d
    :goto_d
    return v1

    .line 711
    :catch_e
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getRSSI_th_2()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 743
    const/4 v1, -0x1

    .line 744
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 746
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th_2()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 751
    :cond_d
    :goto_d
    return v1

    .line 747
    :catch_e
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getSNR_th()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 719
    const/4 v1, -0x1

    .line 720
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 722
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 727
    :cond_d
    :goto_d
    return v1

    .line 723
    :catch_e
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getSNR_th_2()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 755
    const/4 v1, -0x1

    .line 756
    .local v1, "val":I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 758
    :try_start_7
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th_2()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 763
    :cond_d
    :goto_d
    return v1

    .line 759
    :catch_e
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_d
.end method

.method public getSoftMuteMode()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 840
    .local v1, "val":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSoftMuteMode()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 844
    :goto_7
    return v1

    .line 841
    :catch_8
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public getVolume()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 528
    :goto_6
    return-wide v2

    .line 524
    :catch_7
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 528
    const-wide/16 v2, -0x1

    goto :goto_6
.end method

.method public isAFEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 619
    :goto_6
    return v1

    .line 616
    :catch_7
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 619
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAirPlaneMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 163
    :goto_6
    return v1

    .line 160
    :catch_7
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 163
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isBatteryLow()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 172
    :goto_6
    return v1

    .line 169
    :catch_7
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 172
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDNSEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isDNSEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 610
    :goto_6
    return v1

    .line 607
    :catch_7
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 610
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isHeadsetPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 143
    :goto_6
    return v1

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 143
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isOn()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 205
    :goto_6
    return v1

    .line 202
    :catch_7
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isRDSEnable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 601
    :goto_6
    return v1

    .line 598
    :catch_7
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 601
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isScanning()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 381
    :goto_6
    return v1

    .line 378
    :catch_7
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 381
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isSeeking()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isSeeking()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 392
    :goto_6
    return v1

    .line 389
    :catch_7
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 392
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isTvOutPlugged()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 152
    :goto_6
    return v1

    .line 149
    :catch_7
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 152
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "FMPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public off()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "val":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 196
    :goto_7
    return v1

    .line 193
    :catch_8
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_7
.end method

.method public on()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isTvOutPlugged()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 83
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x7

    const-string v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 87
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 88
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x4

    const-string v4, "Headset is not presents."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Headset is not presents."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 93
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 97
    :cond_42
    const/4 v1, 0x0

    .line 100
    .local v1, "val":Z
    :try_start_43
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_5f

    move-result v1

    .line 104
    :goto_49
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 105
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x6

    const-string v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :catch_5f
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_49

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    return v1
.end method

.method public on(Z)Z
    .registers 9
    .param p1, "testMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p1, :cond_25

    .line 118
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 119
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 125
    :cond_18
    const/4 v1, 0x0

    .line 128
    .local v1, "val":Z
    :try_start_19
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20

    move-result v1

    .line 134
    .end local v1    # "val":Z
    :goto_1f
    return v1

    .line 129
    .restart local v1    # "val":Z
    :catch_20
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_1f

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "val":Z
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v1

    goto :goto_1f
.end method

.method public removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/media/fmradio/FMEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 634
    if-nez p1, :cond_3

    .line 642
    :goto_2
    return-void

    .line 637
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 638
    :catch_b
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public scan()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 213
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 214
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 219
    :goto_b
    return-void

    .line 215
    :catch_c
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public searchAll()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 276
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 277
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchAll()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 281
    :goto_c
    return-wide v2

    .line 278
    :catch_d
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 281
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public searchDown()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 230
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 231
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 235
    :goto_c
    return-wide v2

    .line 232
    :catch_d
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 235
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public searchUp()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 263
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 264
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 268
    :goto_c
    return-wide v2

    .line 265
    :catch_d
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 268
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public seekDown()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 481
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 482
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 486
    :goto_c
    return-wide v2

    .line 483
    :catch_d
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 486
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public seekUp()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 469
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 470
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 474
    :goto_c
    return-wide v2

    .line 471
    :catch_d
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 474
    const-wide/16 v2, -0x1

    goto :goto_c
.end method

.method public setBand(I)V
    .registers 4
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 356
    :goto_5
    return-void

    .line 353
    :catch_6
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setChannelSpacing(I)V
    .registers 4
    .param p1, "spacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 364
    :goto_5
    return-void

    .line 361
    :catch_6
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setCnt_th(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 665
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 669
    :goto_8
    return-void

    .line 666
    :catch_9
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setCnt_th_2(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 692
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th_2(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 696
    :goto_8
    return-void

    .line 693
    :catch_9
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setDEConstant(J)V
    .registers 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setDEConstant(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 423
    :goto_8
    return-void

    .line 420
    :catch_9
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setFMIntenna(Z)V
    .registers 4
    .param p1, "setFMIntenna"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 823
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 827
    :goto_8
    return-void

    .line 824
    :catch_9
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setInternetStreamingMode(Z)V
    .registers 4
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setInternetStreamingMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1124
    :goto_5
    return-void

    .line 1121
    :catch_6
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/media/fmradio/FMEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 623
    if-nez p1, :cond_3

    .line 630
    :goto_2
    return-void

    .line 626
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 627
    :catch_b
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2
.end method

.method public setMono()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 253
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 257
    :goto_8
    return-void

    .line 254
    :catch_9
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setRSSI_th(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 647
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 651
    :goto_8
    return-void

    .line 648
    :catch_9
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setRSSI_th_2(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 674
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th_2(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 678
    :goto_8
    return-void

    .line 675
    :catch_9
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setRecordMode(I)V
    .registers 4
    .param p1, "is_record"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRecordMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 537
    :goto_5
    return-void

    .line 534
    :catch_6
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setSNR_th(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 656
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 660
    :goto_8
    return-void

    .line 657
    :catch_9
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSNR_th_2(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 683
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th_2(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 687
    :goto_8
    return-void

    .line 684
    :catch_9
    move-exception v0

    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekRSSI(J)V
    .registers 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 428
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekRSSI(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 432
    :goto_8
    return-void

    .line 429
    :catch_9
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSeekSNR(J)V
    .registers 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 437
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekSNR(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 441
    :goto_8
    return-void

    .line 438
    :catch_9
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setSoftMuteControl(III)V
    .registers 6
    .param p1, "min_RSSI"    # I
    .param p2, "max_RSSI"    # I
    .param p3, "max_attenuation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSoftMuteControl(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 855
    :goto_5
    return-void

    .line 852
    :catch_6
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setSoftmute(Z)V
    .registers 4
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSoftmute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 835
    :goto_5
    return-void

    .line 832
    :catch_6
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public setSpeakerOn(Z)Z
    .registers 5
    .param p1, "bSpeakerOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting bSpeakerOn = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 180
    :try_start_17
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_2b

    .line 185
    :goto_1c
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 186
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x1

    :goto_2a
    return v1

    .line 181
    :catch_2b
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_1c

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setStereo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setStereo()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 247
    :goto_8
    return-void

    .line 244
    :catch_9
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_8
.end method

.method public setVolume(J)V
    .registers 6
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 516
    :goto_5
    return-void

    .line 512
    :catch_6
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_5
.end method

.method public tune(J)Z
    .registers 6
    .param p1, "frequency"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 409
    const/4 v1, 0x1

    .line 413
    :goto_9
    return v1

    .line 410
    :catch_a
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 413
    const/4 v1, 0x0

    goto :goto_9
.end method
