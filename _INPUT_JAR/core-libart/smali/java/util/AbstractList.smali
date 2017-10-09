.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SubAbstractList;,
        Ljava/util/AbstractList$SubAbstractListRandomAccess;,
        Ljava/util/AbstractList$FullListIterator;,
        Ljava/util/AbstractList$SimpleListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 376
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 377
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 450
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "location":I
    .local v1, "location":I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    move p1, v1

    .end local v1    # "location":I
    .restart local p1    # "location":I
    goto :goto_4

    .line 453
    :cond_15
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 466
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractList;->removeRange(II)V

    .line 467
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 482
    if-ne p0, p1, :cond_5

    .line 500
    :cond_4
    :goto_4
    return v5

    .line 485
    :cond_5
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_3b

    move-object v4, p1

    .line 486
    check-cast v4, Ljava/util/List;

    .line 487
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v8

    if-eq v7, v8, :cond_18

    move v5, v6

    .line 488
    goto :goto_4

    .line 491
    :cond_18
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 492
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 494
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_34

    if-eqz v1, :cond_20

    :goto_32
    move v5, v6

    .line 495
    goto :goto_4

    .line 494
    :cond_34
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_32

    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    .end local v2    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3b
    move v5, v6

    .line 500
    goto :goto_4
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 524
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v2, 0x1

    .line 525
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 526
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 528
    .local v1, "object":Ljava/lang/Object;
    mul-int/lit8 v4, v2, 0x1f

    if-nez v1, :cond_17

    const/4 v3, 0x0

    :goto_14
    add-int v2, v4, v3

    .line 529
    goto :goto_5

    .line 528
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_14

    .line 530
    .end local v1    # "object":Ljava/lang/Object;
    :cond_1c
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 543
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 544
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1b

    .line 545
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 546
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 547
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    .line 557
    :goto_1a
    return v1

    .line 551
    :cond_1b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 552
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 553
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    goto :goto_1a

    .line 557
    :cond_2c
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$SimpleListIterator;

    invoke-direct {v0, p0}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 582
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 583
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1f

    .line 584
    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 585
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 586
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 596
    :goto_1e
    return v1

    .line 590
    :cond_1f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 591
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 592
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_1e

    .line 596
    :cond_30
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$FullListIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$FullListIterator;-><init>(Ljava/util/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected removeRange(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 655
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 656
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_10

    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 660
    :cond_10
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
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
    .line 729
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_20

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p2, v0, :cond_20

    .line 730
    if-gt p1, p2, :cond_1a

    .line 731
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_14

    .line 732
    new-instance v0, Ljava/util/AbstractList$SubAbstractListRandomAccess;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractListRandomAccess;-><init>(Ljava/util/AbstractList;II)V

    .line 734
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/util/AbstractList$SubAbstractList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    goto :goto_13

    .line 736
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 738
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
