.class Lcom/android/internal/app/ProcessStats$2;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
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
        "Lcom/android/internal/app/ProcessStats$ProcessState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ProcessStats;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ProcessStats;)V
    .registers 2

    .prologue
    .line 2563
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$2;->this$0:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessState;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "rhs"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 2566
    iget-wide v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 2567
    const/4 v0, -0x1

    .line 2571
    :goto_9
    return v0

    .line 2568
    :cond_a
    iget-wide v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 2569
    const/4 v0, 0x1

    goto :goto_9

    .line 2571
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2563
    check-cast p1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessStats$2;->compare(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessState;)I

    move-result v0

    return v0
.end method
