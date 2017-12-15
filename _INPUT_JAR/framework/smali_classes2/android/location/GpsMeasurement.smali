.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "GpsMeasurement"


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1138
    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    .line 164
    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsMeasurement;I)I
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic access$1002(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$102(Landroid/location/GpsMeasurement;B)B
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p1
.end method

.method static synthetic access$1102(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/location/GpsMeasurement;F)F
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # F

    .prologue
    .line 28
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p1
.end method

.method static synthetic access$1702(Landroid/location/GpsMeasurement;J)J
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic access$1802(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic access$2002(Landroid/location/GpsMeasurement;B)B
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide p1
.end method

.method static synthetic access$2102(Landroid/location/GpsMeasurement;I)I
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p1
.end method

.method static synthetic access$2202(Landroid/location/GpsMeasurement;S)S
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # S

    .prologue
    .line 28
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p1
.end method

.method static synthetic access$2302(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide p1
.end method

.method static synthetic access$2402(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide p1
.end method

.method static synthetic access$2502(Landroid/location/GpsMeasurement;B)B
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # B

    .prologue
    .line 28
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p1
.end method

.method static synthetic access$2602(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic access$2702(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide p1
.end method

.method static synthetic access$2802(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$2902(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide p1
.end method

.method static synthetic access$3002(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GpsMeasurement;S)S
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # S

    .prologue
    .line 28
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return p1
.end method

.method static synthetic access$3102(Landroid/location/GpsMeasurement;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/GpsMeasurement;J)J
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsMeasurement;J)J
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsMeasurement;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsMeasurement;S)S
    .registers 2
    .param p0, "x0"    # Landroid/location/GpsMeasurement;
    .param p1, "x1"    # S

    .prologue
    .line 28
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    packed-switch v0, :pswitch_data_14

    .line 425
    :pswitch_5
    const-string v0, "<Invalid>"

    :goto_7
    return-object v0

    .line 417
    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    .line 419
    :pswitch_b
    const-string v0, "Valid"

    goto :goto_7

    .line 421
    :pswitch_e
    const-string v0, "Reset"

    goto :goto_7

    .line 423
    :pswitch_11
    const-string v0, "CycleSlip"

    goto :goto_7

    .line 415
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method

.method private getLossOfLockString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 763
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    packed-switch v0, :pswitch_data_12

    .line 771
    const-string v0, "<Invalid>"

    :goto_7
    return-object v0

    .line 765
    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    .line 767
    :pswitch_b
    const-string v0, "Ok"

    goto :goto_7

    .line 769
    :pswitch_e
    const-string v0, "CycleSlip"

    goto :goto_7

    .line 763
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 938
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    packed-switch v0, :pswitch_data_12

    .line 946
    const-string v0, "<Invalid>"

    :goto_7
    return-object v0

    .line 940
    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    .line 942
    :pswitch_b
    const-string v0, "Detected"

    goto :goto_7

    .line 944
    :pswitch_e
    const-string v0, "NotUsed"

    goto :goto_7

    .line 938
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private getStateString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    packed-switch v0, :pswitch_data_18

    .line 296
    :pswitch_5
    const-string v0, "<Invalid>"

    :goto_7
    return-object v0

    .line 286
    :pswitch_8
    const-string v0, "Unknown"

    goto :goto_7

    .line 288
    :pswitch_b
    const-string v0, "BitSync"

    goto :goto_7

    .line 290
    :pswitch_e
    const-string v0, "CodeLock"

    goto :goto_7

    .line 292
    :pswitch_11
    const-string v0, "SubframeSync"

    goto :goto_7

    .line 294
    :pswitch_14
    const-string v0, "TowDecoded"

    goto :goto_7

    .line 284
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_b
        :pswitch_5
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_14
    .end packed-switch
.end method

.method private initialize()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 1342
    iput v2, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1343
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setPrn(B)V

    .line 1344
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    .line 1345
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setState(S)V

    .line 1346
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    .line 1347
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    .line 1348
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    .line 1349
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    .line 1350
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    .line 1351
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    .line 1352
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    .line 1353
    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    .line 1354
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    .line 1355
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    .line 1356
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    .line 1357
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    .line 1358
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    .line 1359
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    .line 1360
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    .line 1361
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    .line 1362
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    .line 1363
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    .line 1364
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    .line 1365
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    .line 1366
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    .line 1367
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    .line 1368
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    .line 1369
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    .line 1370
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    .line 1371
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    .line 1372
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    .line 1373
    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    .line 1374
    return-void
.end method

.method private isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .prologue
    .line 1385
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private resetFlag(I)V
    .registers 4
    .param p1, "flag"    # I

    .prologue
    .line 1381
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1382
    return-void
.end method

.method private setFlag(I)V
    .registers 3
    .param p1, "flag"    # I

    .prologue
    .line 1377
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1378
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1222
    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .registers 3

    .prologue
    .line 436
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .registers 2

    .prologue
    .line 389
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .registers 3

    .prologue
    .line 451
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .registers 3

    .prologue
    .line 1067
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .registers 3

    .prologue
    .line 1102
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public getBitNumber()I
    .registers 2

    .prologue
    .line 788
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return v0
.end method

.method public getCarrierCycles()J
    .registers 3

    .prologue
    .line 645
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .registers 2

    .prologue
    .line 612
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .registers 3

    .prologue
    .line 682
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .registers 3

    .prologue
    .line 715
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0InDbHz()D
    .registers 3

    .prologue
    .line 343
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .registers 3

    .prologue
    .line 546
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .registers 3

    .prologue
    .line 579
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .registers 3

    .prologue
    .line 857
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .registers 3

    .prologue
    .line 890
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public getElevationInDeg()D
    .registers 3

    .prologue
    .line 997
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .registers 3

    .prologue
    .line 1032
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public getLossOfLock()B
    .registers 2

    .prologue
    .line 738
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return v0
.end method

.method public getMultipathIndicator()B
    .registers 2

    .prologue
    .line 913
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return v0
.end method

.method public getPrn()B
    .registers 2

    .prologue
    .line 218
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return v0
.end method

.method public getPseudorangeInMeters()D
    .registers 3

    .prologue
    .line 477
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .registers 3

    .prologue
    .line 358
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .registers 3

    .prologue
    .line 373
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .registers 3

    .prologue
    .line 511
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .registers 3

    .prologue
    .line 312
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .registers 3

    .prologue
    .line 326
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .registers 3

    .prologue
    .line 963
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()S
    .registers 2

    .prologue
    .line 257
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    return v0
.end method

.method public getTimeFromLastBitInMs()S
    .registers 2

    .prologue
    .line 821
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return v0
.end method

.method public getTimeOffsetInNs()D
    .registers 3

    .prologue
    .line 240
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .registers 2

    .prologue
    .line 1055
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .registers 2

    .prologue
    .line 1090
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBitNumber()Z
    .registers 2

    .prologue
    .line 779
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .registers 2

    .prologue
    .line 635
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyInHz()Z
    .registers 2

    .prologue
    .line 602
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .registers 2

    .prologue
    .line 668
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .registers 2

    .prologue
    .line 705
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseInChips()Z
    .registers 2

    .prologue
    .line 534
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .registers 2

    .prologue
    .line 569
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftInHz()Z
    .registers 2

    .prologue
    .line 844
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .registers 2

    .prologue
    .line 880
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationInDeg()Z
    .registers 2

    .prologue
    .line 986
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .registers 2

    .prologue
    .line 1020
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeInMeters()Z
    .registers 2

    .prologue
    .line 467
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .registers 2

    .prologue
    .line 500
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .registers 2

    .prologue
    .line 954
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeFromLastBitInMs()Z
    .registers 2

    .prologue
    .line 811
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isUsedInFix()Z
    .registers 2

    .prologue
    .line 1128
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    .line 211
    return-void
.end method

.method public resetAzimuthInDeg()V
    .registers 3

    .prologue
    .line 1082
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1083
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 1084
    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .registers 3

    .prologue
    .line 1117
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1118
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 1119
    return-void
.end method

.method public resetBitNumber()V
    .registers 2

    .prologue
    .line 803
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 804
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 805
    return-void
.end method

.method public resetCarrierCycles()V
    .registers 3

    .prologue
    .line 660
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 661
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 662
    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .registers 2

    .prologue
    .line 627
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 628
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 629
    return-void
.end method

.method public resetCarrierPhase()V
    .registers 3

    .prologue
    .line 697
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 698
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 699
    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .registers 3

    .prologue
    .line 730
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 731
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 732
    return-void
.end method

.method public resetCodePhaseInChips()V
    .registers 3

    .prologue
    .line 561
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 562
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 563
    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .registers 3

    .prologue
    .line 594
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 595
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 596
    return-void
.end method

.method public resetDopplerShiftInHz()V
    .registers 3

    .prologue
    .line 872
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 873
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 874
    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .registers 3

    .prologue
    .line 905
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 906
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 907
    return-void
.end method

.method public resetElevationInDeg()V
    .registers 3

    .prologue
    .line 1012
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1013
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 1014
    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .registers 3

    .prologue
    .line 1047
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1048
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 1049
    return-void
.end method

.method public resetPseudorangeInMeters()V
    .registers 3

    .prologue
    .line 492
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 493
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 494
    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .registers 3

    .prologue
    .line 526
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 527
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 528
    return-void
.end method

.method public resetSnrInDb()V
    .registers 3

    .prologue
    .line 978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 979
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 980
    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .registers 2

    .prologue
    .line 836
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 837
    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 838
    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .registers 4
    .param p1, "measurement"    # Landroid/location/GpsMeasurement;

    .prologue
    .line 170
    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 171
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 172
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 173
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 174
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 175
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 176
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 177
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 178
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 180
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 181
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 182
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 184
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 185
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 186
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 187
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 188
    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 189
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 190
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 191
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 192
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 193
    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 194
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 195
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 196
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 197
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 198
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 199
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 200
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 201
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 202
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 203
    iget-boolean v0, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 204
    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 443
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 444
    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .registers 5
    .param p1, "value"    # S

    .prologue
    .line 396
    packed-switch p1, :pswitch_data_22

    .line 404
    :pswitch_3
    const-string v0, "GpsMeasurement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'Accumulated Delta Range state\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 408
    :goto_1e
    return-void

    .line 401
    :pswitch_1f
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    goto :goto_1e

    .line 396
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 460
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 461
    return-void
.end method

.method public setAzimuthInDeg(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 1074
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1075
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 1076
    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 1109
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1110
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 1111
    return-void
.end method

.method public setBitNumber(I)V
    .registers 3
    .param p1, "bitNumber"    # I

    .prologue
    .line 795
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 796
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 797
    return-void
.end method

.method public setCarrierCycles(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 652
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 653
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 654
    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .registers 3
    .param p1, "carrierFrequencyInHz"    # F

    .prologue
    .line 619
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 620
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 621
    return-void
.end method

.method public setCarrierPhase(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 689
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 690
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 691
    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 722
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 723
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 724
    return-void
.end method

.method public setCn0InDbHz(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 350
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 351
    return-void
.end method

.method public setCodePhaseInChips(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 553
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 554
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 555
    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 586
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 587
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 588
    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 864
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 865
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 866
    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 897
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 898
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 899
    return-void
.end method

.method public setElevationInDeg(D)V
    .registers 4
    .param p1, "elevationInDeg"    # D

    .prologue
    .line 1004
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1005
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 1006
    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 1039
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1040
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 1041
    return-void
.end method

.method public setLossOfLock(B)V
    .registers 5
    .param p1, "value"    # B

    .prologue
    .line 745
    packed-switch p1, :pswitch_data_22

    .line 752
    const-string v0, "GpsMeasurement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'loss of lock\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 756
    :goto_1e
    return-void

    .line 749
    :pswitch_1f
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    goto :goto_1e

    .line 745
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public setMultipathIndicator(B)V
    .registers 5
    .param p1, "value"    # B

    .prologue
    .line 920
    packed-switch p1, :pswitch_data_22

    .line 927
    const-string v0, "GpsMeasurement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'muti-path indicator\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 931
    :goto_1e
    return-void

    .line 924
    :pswitch_1f
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    goto :goto_1e

    .line 920
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public setPrn(B)V
    .registers 2
    .param p1, "value"    # B

    .prologue
    .line 225
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 226
    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 484
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 485
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 486
    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 365
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 366
    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 380
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 381
    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 518
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 519
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 520
    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 319
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 320
    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 333
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 334
    return-void
.end method

.method public setSnrInDb(D)V
    .registers 4
    .param p1, "snrInDb"    # D

    .prologue
    .line 970
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 971
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 972
    return-void
.end method

.method public setState(S)V
    .registers 5
    .param p1, "value"    # S

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_22

    .line 273
    :pswitch_3
    const-string v0, "GpsMeasurement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitizing invalid \'sync state\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 277
    :goto_1e
    return-void

    .line 270
    :pswitch_1f
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    goto :goto_1e

    .line 264
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method public setTimeFromLastBitInMs(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 828
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 829
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 830
    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 247
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 248
    return-void
.end method

.method public setUsedInFix(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 1135
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 1136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1227
    const-string v1, "   %-29s = %s\n"

    .line 1228
    .local v1, "format":Ljava/lang/String;
    const-string v2, "   %-29s = %-25s   %-40s = %s\n"

    .line 1229
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GpsMeasurement:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "Prn"

    aput-object v6, v5, v10

    iget-byte v6, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "TimeOffsetInNs"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "State"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ReceivedGpsTowInNs"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "ReceivedGpsTowUncertaintyInNs"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "Cn0InDbHz"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "PseudorangeRateInMetersPerSec"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "PseudorangeRateUncertaintyInMetersPerSec"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "AccumulatedDeltaRangeState"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "AccumulatedDeltaRangeInMeters"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "AccumulatedDeltaRangeUncertaintyInMeters"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "PseudorangeInMeters"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    move-result v3

    if-eqz v3, :cond_2e2

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_100
    aput-object v3, v6, v11

    const-string v3, "PseudorangeUncertaintyInMeters"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    move-result v3

    if-eqz v3, :cond_2e5

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_112
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "CodePhaseInChips"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    move-result v3

    if-eqz v3, :cond_2e8

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_130
    aput-object v3, v6, v11

    const-string v3, "CodePhaseUncertaintyInChips"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    move-result v3

    if-eqz v3, :cond_2eb

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_142
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    const-string v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v3, "CarrierFrequencyInHz"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    move-result v3

    if-eqz v3, :cond_2ee

    iget v3, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_15f
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v3, "CarrierCycles"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_2f1

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_17c
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "CarrierPhase"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_2f4

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_19a
    aput-object v3, v6, v11

    const-string v3, "CarrierPhaseUncertainty"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_2f7

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1ac
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "LossOfLock"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v3, "BitNumber"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    move-result v3

    if-eqz v3, :cond_2fa

    iget v3, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1de
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v3, "TimeFromLastBitInMs"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    move-result v3

    if-eqz v3, :cond_2fd

    iget-short v3, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_1fb
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "DopplerShiftInHz"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    move-result v3

    if-eqz v3, :cond_300

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_219
    aput-object v3, v6, v11

    const-string v3, "DopplerShiftUncertaintyInHz"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    move-result v3

    if-eqz v3, :cond_303

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_22b
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const-string v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "MultipathIndicator"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const-string v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v3, "SnrInDb"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    move-result v3

    if-eqz v3, :cond_306

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_25d
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "ElevationInDeg"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    move-result v3

    if-eqz v3, :cond_309

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_27b
    aput-object v3, v6, v11

    const-string v3, "ElevationUncertaintyInDeg"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    move-result v3

    if-eqz v3, :cond_30c

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_28d
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "AzimuthInDeg"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    move-result v3

    if-eqz v3, :cond_30e

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2ab
    aput-object v3, v6, v11

    const-string v3, "AzimuthUncertaintyInDeg"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    move-result v3

    if-eqz v3, :cond_2bd

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_2bd
    aput-object v4, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    const-string v3, "   %-29s = %s\n"

    new-array v4, v12, [Ljava/lang/Object;

    const-string v5, "UsedInFix"

    aput-object v5, v4, v10

    iget-boolean v5, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2e2
    move-object v3, v4

    .line 1265
    goto/16 :goto_100

    :cond_2e5
    move-object v3, v4

    goto/16 :goto_112

    :cond_2e8
    move-object v3, v4

    .line 1272
    goto/16 :goto_130

    :cond_2eb
    move-object v3, v4

    goto/16 :goto_142

    :cond_2ee
    move-object v3, v4

    .line 1279
    goto/16 :goto_15f

    :cond_2f1
    move-object v3, v4

    .line 1284
    goto/16 :goto_17c

    :cond_2f4
    move-object v3, v4

    .line 1289
    goto/16 :goto_19a

    :cond_2f7
    move-object v3, v4

    goto/16 :goto_1ac

    :cond_2fa
    move-object v3, v4

    .line 1298
    goto/16 :goto_1de

    :cond_2fd
    move-object v3, v4

    .line 1303
    goto/16 :goto_1fb

    :cond_300
    move-object v3, v4

    .line 1308
    goto/16 :goto_219

    :cond_303
    move-object v3, v4

    goto/16 :goto_22b

    :cond_306
    move-object v3, v4

    .line 1317
    goto/16 :goto_25d

    :cond_309
    move-object v3, v4

    .line 1322
    goto/16 :goto_27b

    :cond_30c
    move-object v3, v4

    goto :goto_28d

    :cond_30e
    move-object v3, v4

    .line 1329
    goto :goto_2ab
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1186
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1188
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1189
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1191
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1192
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1193
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1194
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1195
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1197
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1198
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1199
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1200
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1201
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1202
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1203
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1204
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1205
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1206
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1207
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1210
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1211
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1212
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1213
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1214
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1215
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1216
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1217
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    :goto_a0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    return-void

    .line 1217
    :cond_a4
    const/4 v0, 0x0

    goto :goto_a0
.end method
