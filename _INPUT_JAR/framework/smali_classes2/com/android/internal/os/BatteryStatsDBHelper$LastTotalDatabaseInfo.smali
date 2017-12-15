.class Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastTotalDatabaseInfo"
.end annotation


# instance fields
.field private batteryLevel:I

.field private totalPower:D


# direct methods
.method private constructor <init>(DI)V
    .registers 5
    .param p1, "totalPower"    # D
    .param p3, "batteryLevel"    # I

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D

    .line 700
    iput p3, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I

    .line 701
    return-void
.end method

.method synthetic constructor <init>(DILcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .registers 6
    .param p1, "x0"    # D
    .param p3, "x1"    # I
    .param p4, "x2"    # Lcom/android/internal/os/BatteryStatsDBHelper$1;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;-><init>(DI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .prologue
    .line 694
    iget v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I

    return v0
.end method
