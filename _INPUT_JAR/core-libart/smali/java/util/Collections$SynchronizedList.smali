.class Ljava/util/Collections$SynchronizedList;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 509
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 510
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 514
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 515
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 646
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_10

    .line 647
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    move-object p0, v0

    .line 649
    .end local p0    # "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    :cond_10
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 628
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 520
    monitor-exit v1

    .line 521
    return-void

    .line 520
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 526
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 530
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 532
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 538
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 542
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 544
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 550
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 551
    :try_start_3
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 552
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/Object;

    .line 553
    .local v0, "array":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 554
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    .line 555
    if-eqz p1, :cond_26

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_32

    .line 557
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v1

    .line 568
    :goto_1f
    return v3

    .line 554
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v3

    .line 556
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 562
    .end local v1    # "i":I
    :cond_26
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_27
    if-ge v1, v2, :cond_32

    .line 563
    aget-object v3, v0, v1

    if-nez v3, :cond_2f

    move v3, v1

    .line 564
    goto :goto_1f

    .line 562
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 568
    :cond_32
    const/4 v3, -0x1

    goto :goto_1f
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 574
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v4, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 575
    :try_start_3
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 576
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/Object;

    .line 577
    .local v0, "array":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 578
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_21

    .line 579
    if-eqz p1, :cond_27

    .line 580
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_34

    .line 581
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v1

    .line 592
    :goto_20
    return v3

    .line 578
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3

    .line 580
    .restart local v0    # "array":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 586
    .end local v1    # "i":I
    :cond_27
    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_29
    if-ltz v1, :cond_34

    .line 587
    aget-object v3, v0, v1

    if-nez v3, :cond_31

    move v3, v1

    .line 588
    goto :goto_20

    .line 586
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 592
    :cond_34
    const/4 v3, -0x1

    goto :goto_20
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 598
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 604
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 610
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 616
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Ljava/util/Collections$SynchronizedList;, "Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_3
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 622
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
