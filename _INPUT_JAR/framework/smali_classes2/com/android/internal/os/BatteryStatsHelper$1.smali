.class Lcom/android/internal/os/BatteryStatsHelper$1;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHelper;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper$1;->this$0:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "rhs"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 360
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 361
    const/4 v0, 0x1

    .line 365
    :goto_9
    return v0

    .line 362
    :cond_a
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    .line 363
    const/4 v0, -0x1

    goto :goto_9

    .line 365
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 357
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/os/BatterySipper;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsHelper$1;->compare(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method
