.class final Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/settings/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/settings/applications/ProcStatsEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 79
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 85
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$1;->compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result v0

    return v0
.end method
