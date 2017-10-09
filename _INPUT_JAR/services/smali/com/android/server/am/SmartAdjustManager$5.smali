.class Lcom/android/server/am/SmartAdjustManager$5;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V
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
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;)V
    .registers 2

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$5;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .registers 11
    .param p1, "app1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "app2"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, -0x1

    .line 1582
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1583
    .local v0, "packageName1":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1584
    .local v1, "packageName2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager$5;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v5, v5, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1585
    .local v2, "pkg1":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager$5;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v5, v5, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1586
    .local v3, "pkg2":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-nez v2, :cond_4e

    .line 1587
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_4d

    .line 1588
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not exspected!!!!, something error!!!, running process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in active packages list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_4d
    :goto_4d
    return v4

    .line 1592
    :cond_4e
    if-nez v3, :cond_7f

    .line 1593
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_4d

    .line 1594
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not exspected!!!!, something error!!!, running process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in active packages list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1599
    :cond_7f
    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    iget v6, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    if-lt v5, v6, :cond_4d

    .line 1601
    iget v4, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    iget v5, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    if-le v4, v5, :cond_8d

    .line 1602
    const/4 v4, 0x1

    goto :goto_4d

    .line 1603
    :cond_8d
    const/4 v4, 0x0

    goto :goto_4d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1577
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SmartAdjustManager$5;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
