.class public Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerStatusData"
.end annotation


# instance fields
.field private mDurationHour:I

.field private mDurationMinute:I

.field private mExtraError:I

.field private mMediaInfo:I

.field private mNotProgrammedError:I

.field private mOverlapped:Z

.field private mProgrammed:Z

.field private mProgrammedInfo:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bcdByteToInt(B)I
    .registers 2
    .param p0, "value"    # B

    .prologue
    .line 105
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method static parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    .registers 5
    .param p0, "result"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;-><init>()V

    .line 81
    .local v0, "data":Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    shr-int/lit8 v1, p0, 0x1f

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_43

    move v1, v2

    :goto_e
    iput-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    .line 83
    shr-int/lit8 v1, p0, 0x1d

    and-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    .line 85
    shr-int/lit8 v1, p0, 0x1c

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_45

    :goto_1c
    iput-boolean v2, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    .line 86
    iget-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    if-eqz v1, :cond_47

    .line 87
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    .line 88
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 89
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    .line 98
    :goto_3e
    and-int/lit16 v1, p0, 0xff

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    .line 99
    return-object v0

    :cond_43
    move v1, v3

    .line 81
    goto :goto_e

    :cond_45
    move v2, v3

    .line 85
    goto :goto_1c

    .line 92
    :cond_47
    shr-int/lit8 v1, p0, 0x18

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    .line 93
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 94
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    move-result v1

    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    goto :goto_3e
.end method


# virtual methods
.method public getDurationHour()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    return v0
.end method

.method public getDurationMinute()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    return v0
.end method

.method public getExtraError()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    return v0
.end method

.method public getMediaInfo()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    return v0
.end method

.method public getNotProgammedError()I
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Has no not-programmed error. Call getProgrammedInfo() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_e
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    return v0
.end method

.method public getProgrammedInfo()I
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No programmed info. Call getNotProgammedError() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_e
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    return v0
.end method

.method public isOverlapped()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    return v0
.end method

.method public isProgrammed()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    return v0
.end method
