.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
.super Ljava/lang/Object;
.source "LppLogManager.java"


# static fields
.field static FlagLog_Monitor:Z = false

.field public static final LogTypeAPDR:C = '\u0004'

.field public static final LogTypeAPDRLM:C = '\u0001'

.field public static final LogTypeGPSNmea:C = '\u0008'

.field public static final LogTypeGPSStatus:C = '\u0007'

.field public static final LogTypeLPPResult:C = '\u0002'

.field public static final LogTypeLocM:C = '\u0005'

.field public static final LogTypeMonitor:C = '\u0006'

.field public static final LogTypeSensor:C = '\u0000'

.field public static final LogTypemLPPKML_:C = '\u0003'


# instance fields
.field FlagLog_APDRLM:Z

.field FlagLog_LPPRes:Z

.field FlagLog_Sensor:Z

.field LogFolderName:Ljava/lang/String;

.field Logindex:I

.field private final TAG:Ljava/lang/String;

.field mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mConfig_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mGPNMEA_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mGPSSta_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mKMLGen:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

.field mKMLGenRT:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

.field mLPPKMLRLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPKML_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPMon_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLPPResuLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field mSensor_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

.field mconfig:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

.field strFromAPDR:Ljava/lang/String;

.field strFromLocM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_Monitor:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "LppLogManager"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "SensorLog"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mSensor_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 22
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "APDR_LM"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 23
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultTest"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPResuLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 24
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultKML"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPKML_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 25
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPResultKMLRT"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPKMLRLogging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 26
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "LPPMonitor"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLPPMon_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 27
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "Configuration"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mConfig_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "GPSStatus"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mGPSSta_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 29
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    const-string v1, "GPS_NMEA"

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mGPNMEA_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    .line 31
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_Sensor:Z

    .line 32
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_APDRLM:Z

    .line 33
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_LPPRes:Z

    .line 34
    const-string/jumbo v0, "test"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mKMLGen:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    .line 37
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mKMLGenRT:Lcom/samsung/android/contextaware/aggregator/lpp/log/KMLGenerator;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->Logindex:I

    .line 53
    const-string v0, "\t0 0 0 0 0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromAPDR:Ljava/lang/String;

    .line 54
    const-string v0, "\t0 0 0 0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromLocM:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-void
.end method

.method private LogAPDRLM(I)V
    .registers 6
    .param p1, "Logindex"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mAPDRLM_Logging:Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromAPDR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->strFromLocM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LPPDataLogging;->addLogStream(Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method public AddCoordinate(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "mLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    return-void
.end method

.method public AddGPSCoordinate(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "listGPSPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    return-void
.end method

.method public AddRTCoordinate(Landroid/location/Location;)V
    .registers 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 160
    return-void
.end method

.method public LogData(ILjava/lang/String;)V
    .registers 7
    .param p1, "apdrLm"    # I
    .param p2, "logData"    # Ljava/lang/String;

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_30

    .line 148
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->lppStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 122
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .prologue
    .line 64
    return-void
.end method

.method public setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .registers 2
    .param p1, "lnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->mLppDataProviderLnr:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .line 171
    return-void
.end method

.method protected setLogName(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogFolderName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 67
    const-string v0, "LppLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_Sensor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_APDRLM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->FlagLog_LPPRes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method
