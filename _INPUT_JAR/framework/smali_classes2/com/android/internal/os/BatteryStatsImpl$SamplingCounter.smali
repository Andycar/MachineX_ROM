.class public Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;
.super Lcom/android/internal/os/BatteryStatsImpl$Counter;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamplingCounter"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 762
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 757
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 758
    return-void
.end method


# virtual methods
.method public addCountAtomic(J)V
    .registers 6
    .param p1, "count"    # J

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingCounter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 766
    return-void
.end method
