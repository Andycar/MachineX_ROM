.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;
.super Ljava/lang/Object;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerInfo"
.end annotation


# static fields
.field private static final BASIC_INFO_SIZE:I = 0x7

.field private static final DAY_OF_MONTH_SIZE:I = 0x1

.field private static final DURATION_SIZE:I = 0x2

.field private static final MONTH_OF_YEAR_SIZE:I = 0x1

.field private static final RECORDING_SEQUENCE_SIZE:I = 0x1

.field private static final START_TIME_SIZE:I = 0x2


# instance fields
.field private final mDayOfMonth:I

.field private final mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

.field private final mMonthOfYear:I

.field private final mRecordingSequence:I

.field private final mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;


# direct methods
.method private constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V
    .registers 6
    .param p1, "dayOfMonth"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "startTime"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p4, "duration"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p5, "recordingSequence"    # I

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    .line 335
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    .line 336
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    .line 337
    iput-object p4, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    .line 338
    iput p5, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    .line 339
    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;ILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;
    .param p4, "x3"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/hardware/hdmi/HdmiTimerRecordSources$1;

    .prologue
    .line 301
    invoke-direct/range {p0 .. p5}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;-><init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Time;Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;I)V

    return-void
.end method


# virtual methods
.method getDataSize()I
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x7

    return v0
.end method

.method toByteArray([BI)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "index"    # I

    .prologue
    .line 343
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDayOfMonth:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 344
    add-int/lit8 p2, p2, 0x1

    .line 346
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mMonthOfYear:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 347
    add-int/lit8 p2, p2, 0x1

    .line 349
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mStartTime:Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Time;->toByteArray([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 350
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mDuration:Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;->toByteArray([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 353
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->mRecordingSequence:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 354
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->getDataSize()I

    move-result v0

    return v0
.end method
