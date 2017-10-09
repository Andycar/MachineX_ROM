.class final Lcom/android/settings/applications/ProcessStatsDetail$2;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings/applications/ProcStatsEntry$Service;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$2;->compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "lhs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    .local p2, "rhs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-wide v0, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 224
    .local v0, "topLhs":J
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-wide v2, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 225
    .local v2, "topRhs":J
    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 226
    const/4 v4, 0x1

    .line 230
    :goto_2
    return v4

    .end local v0    # "topLhs":J
    .end local v2    # "topRhs":J
    :cond_0
    move-wide v0, v6

    .line 223
    goto :goto_0

    .restart local v0    # "topLhs":J
    :cond_1
    move-wide v2, v6

    .line 224
    goto :goto_1

    .line 227
    .restart local v2    # "topRhs":J
    :cond_2
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 228
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    move v4, v5

    .line 230
    goto :goto_2
.end method
