.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public cpuFgTime:J

.field public cpuTime:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public gpsTime:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usageTime:J

.field public userId:I

.field public value:D

.field public values:[D

.field public wakeLockTime:J

.field public wifiRunningTime:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V
    .registers 6
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "values"    # [D

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p3, p0, Lcom/android/internal/os/BatterySipper;->values:[D

    .line 67
    if-eqz p3, :cond_c

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->value:D

    .line 68
    :cond_c
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 69
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .registers 6
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_16

    .line 85
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_e

    .line 87
    const/4 v0, 0x1

    .line 93
    :goto_d
    return v0

    .line 88
    :cond_e
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_16

    .line 89
    const/4 v0, -0x1

    goto :goto_d

    .line 93
    :cond_16
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->value:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_d
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public computeMobilemspp()V
    .registers 7

    .prologue
    .line 77
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long v0, v2, v4

    .line 78
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_11
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    .line 79
    return-void

    .line 78
    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_11
.end method

.method public getPackages()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_6

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    goto :goto_5
.end method

.method public getValues()[D
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->values:[D

    return-object v0
.end method
