.class Lcom/android/internal/os/BatteryStatsImpl$Uid$1;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .registers 3

    .prologue
    .line 4189
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .registers 3

    .prologue
    .line 4190
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4189
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;->instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-result-object v0

    return-object v0
.end method
