.class Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# instance fields
.field calorie:D

.field distance:D

.field runDownStepCnt:J

.field runFlatStepCnt:J

.field runUpStepCnt:J

.field speed:D

.field status:I

.field totalStepCnt:J

.field walkDownStepCnt:J

.field walkFlatStepCnt:J

.field walkUpStepCnt:J

.field walkingFrequency:D


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 49
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 51
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 53
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 55
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 57
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 59
    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 61
    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 63
    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    .line 65
    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    .line 67
    iput-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    .line 73
    return-void
.end method
