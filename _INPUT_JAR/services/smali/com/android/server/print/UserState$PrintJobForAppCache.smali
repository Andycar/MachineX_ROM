.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 3

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/print/UserState;
    .param p2, "x1"    # Lcom/android/server/print/UserState$1;

    .prologue
    .line 1566
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState$PrintJobForAppCache;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1660
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1661
    :try_start_7
    const-string v7, "  "

    .line 1662
    .local v7, "tab":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1663
    .local v2, "bucketCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_6a

    .line 1664
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1665
    .local v0, "appId":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1666
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1667
    .local v1, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 1668
    .local v6, "printJobCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_49
    if-ge v4, v6, :cond_67

    .line 1669
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1670
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 1668
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 1663
    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1673
    .end local v0    # "appId":I
    .end local v1    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v4    # "j":I
    .end local v6    # "printJobCount":I
    :cond_6a
    monitor-exit v9

    .line 1674
    return-void

    .line 1673
    .end local v2    # "bucketCount":I
    .end local v3    # "i":I
    .end local v7    # "tab":Ljava/lang/String;
    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v8
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1615
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1616
    :try_start_8
    iget-object v6, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1617
    .local v3, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_15

    .line 1618
    monitor-exit v5

    move-object v1, v4

    .line 1628
    :goto_14
    return-object v1

    .line 1620
    :cond_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1621
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v2, :cond_34

    .line 1622
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 1623
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1624
    monitor-exit v5

    goto :goto_14

    .line 1627
    .end local v0    # "i":I
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    .end local v2    # "printJobCount":I
    .end local v3    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v4

    .line 1621
    .restart local v0    # "i":I
    .restart local v1    # "printJob":Landroid/print/PrintJobInfo;
    .restart local v2    # "printJobCount":I
    .restart local v3    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1627
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_34
    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2e

    move-object v1, v4

    .line 1628
    goto :goto_14
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .registers 9
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1632
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1633
    const/4 v3, 0x0

    .line 1634
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v5, -0x2

    if-ne p1, v5, :cond_30

    .line 1635
    :try_start_b
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_46

    move-result v1

    .line 1636
    .local v1, "bucketCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_13
    if-ge v2, v1, :cond_2b

    .line 1637
    :try_start_15
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1638
    .local v0, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v4, :cond_53

    .line 1639
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_50

    .line 1641
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_24
    :try_start_24
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1636
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_13

    .end local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_2b
    move-object v3, v4

    .line 1652
    .end local v1    # "bucketCount":I
    .end local v2    # "i":I
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_2c
    :goto_2c
    if-eqz v3, :cond_49

    .line 1653
    monitor-exit v6

    .line 1655
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_2f
    return-object v3

    .line 1644
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_30
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1645
    .restart local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v0, :cond_2c

    .line 1646
    if-nez v3, :cond_42

    .line 1647
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    move-object v3, v4

    .line 1649
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_42
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    .line 1656
    .end local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_46
    move-exception v5

    :goto_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    throw v5

    .line 1655
    :cond_49
    :try_start_49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    move-object v3, v5

    goto :goto_2f

    .line 1656
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v1    # "bucketCount":I
    .restart local v2    # "i":I
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_50
    move-exception v5

    move-object v3, v4

    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_47

    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_53
    move-object v3, v4

    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_24
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .registers 9
    .param p1, "creator"    # Landroid/os/IBinder;
    .param p2, "appId"    # I
    .param p3, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    const/4 v2, 0x0

    .line 1573
    :try_start_1
    new-instance v3, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2b

    .line 1586
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1587
    :try_start_11
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1588
    .local v0, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_25

    .line 1589
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .restart local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1592
    :cond_25
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    monitor-exit v3

    .line 1594
    const/4 v2, 0x1

    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_2a
    return v2

    .line 1582
    :catch_2b
    move-exception v1

    .line 1584
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_2a

    .line 1593
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 9
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 1598
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1599
    :try_start_7
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1601
    .local v3, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_17

    .line 1602
    monitor-exit v5

    .line 1612
    :goto_16
    return-void

    .line 1604
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1605
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v2, :cond_38

    .line 1606
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 1607
    .local v1, "oldPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1608
    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1605
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1611
    .end local v1    # "oldPrintJob":Landroid/print/PrintJobInfo;
    :cond_38
    monitor-exit v5

    goto :goto_16

    .end local v0    # "i":I
    .end local v2    # "printJobCount":I
    .end local v3    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v4
.end method
