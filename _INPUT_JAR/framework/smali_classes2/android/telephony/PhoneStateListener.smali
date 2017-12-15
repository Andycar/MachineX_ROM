.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field private static final DBG:Z = false

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_REAL_TIME_INFO:I = 0x2000

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_DUN_DATA_ACTIVITY:I = 0x20000

.field public static final LISTEN_DUN_DATA_CONNECTION_STATE:I = 0x40000

.field public static final LISTEN_FDN_UPDATED:I = 0x10000

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OEM_HOOK_RAW_EVENT:I = 0x8000

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_PRECISE_DATA_CONNECTION_STATE:I = 0x1000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100

.field public static final LISTEN_VOLTE_STATE:I = 0x4000

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStateListener"


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field private final mHandler:Landroid/os/Handler;

.field protected mSubId:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 260
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 261
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    .line 280
    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 665
    new-instance v2, Landroid/telephony/PhoneStateListener$3;

    invoke-direct {v2, p0}, Landroid/telephony/PhoneStateListener$3;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v2, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 288
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 290
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_13
    aget-wide v2, v1, v2

    iput-wide v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:J
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_17} :catch_1f

    .line 295
    :goto_17
    new-instance v2, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v2, p0, p2}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 360
    return-void

    .line 291
    :catch_1f
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 293
    const-string/jumbo v2, "slotId to subId return null"

    invoke-direct {p0, v2}, Landroid/telephony/PhoneStateListener;->log(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "subId"    # J

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 371
    return-void
.end method

.method public constructor <init>(JLandroid/os/Looper;)V
    .registers 7
    .param p1, "subId"    # J
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 665
    new-instance v0, Landroid/telephony/PhoneStateListener$3;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$3;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 380
    iput-wide p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 381
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-direct {v0, p0, p3}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 269
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 270
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 754
    const-string v0, "PhoneStateListener"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 2
    .param p1, "cfi"    # Z

    .prologue
    .line 493
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 511
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 500
    return-void
.end method

.method public onDataActivity(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 542
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 606
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 529
    return-void
.end method

.method public onDunDataActivity(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 647
    return-void
.end method

.method public onDunDataConnectionStateChanged(II)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 658
    return-void
.end method

.method public onFdnUpdated()V
    .registers 1

    .prologue
    .line 632
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 2
    .param p1, "mwi"    # Z

    .prologue
    .line 486
    return-void
.end method

.method public onOemHookRawEvent([B)V
    .registers 2
    .param p1, "rawData"    # [B

    .prologue
    .line 625
    return-void
.end method

.method public onOtaspChanged(I)V
    .registers 2
    .param p1, "otaspMode"    # I

    .prologue
    .line 569
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    .line 586
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 596
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 465
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .param p1, "asu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 554
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .registers 2
    .param p1, "stateInfo"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 615
    return-void
.end method
