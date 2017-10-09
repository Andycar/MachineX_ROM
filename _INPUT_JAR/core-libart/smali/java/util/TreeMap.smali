.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$2;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$BoundedMap;,
        Ljava/util/TreeMap$Bound;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$MapIterator;,
        Ljava/util/TreeMap$Node;,
        Ljava/util/TreeMap$Relation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/TreeMap$1;

    invoke-direct {v0}, Ljava/util/TreeMap$1;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 87
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 121
    if-eqz p1, :cond_d

    .line 122
    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 126
    :goto_c
    return-void

    .line 124
    :cond_d
    sget-object v0, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 110
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_23
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 78
    iput v3, p0, Ljava/util/TreeMap;->size:I

    .line 79
    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    .line 144
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 145
    .local v2, "sourceComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz v2, :cond_30

    .line 146
    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 150
    :goto_10
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 148
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_30
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    goto :goto_10

    .line 153
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_35
    return-void
.end method

.method static synthetic access$000(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/TreeMap;)Ljava/util/Map$Entry;
    .registers 2
    .param p0, "x0"    # Ljava/util/TreeMap;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 3
    .param p0, "x0"    # Ljava/util/TreeMap;
    .param p1, "x1"    # Ljava/util/Map$Entry;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method static count(Ljava/util/Iterator;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1654
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 1655
    .local v0, "count":I
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1656
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1659
    :cond_d
    return v0
.end method

.method private immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_3
.end method

.method private internalPollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_6

    .line 593
    const/4 v0, 0x0

    .line 597
    :goto_5
    return-object v0

    .line 595
    :cond_6
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 596
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    goto :goto_5
.end method

.method private internalPollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v1, :cond_6

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_5
    return-object v0

    .line 619
    :cond_6
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 620
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1680
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1681
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "comparator"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 1682
    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v3, :cond_17

    .line 1683
    sget-object v3, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    iput-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    .line 1685
    :cond_17
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1686
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v2, :cond_2c

    .line 1687
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1689
    :cond_2c
    return-void
.end method

.method private rebalance(Ljava/util/TreeMap$Node;Z)V
    .registers 21
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "unbalanced":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object/from16 v9, p1

    .local v9, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_2
    if-eqz v9, :cond_39

    .line 461
    iget-object v2, v9, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 462
    .local v2, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v10, v9, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 463
    .local v10, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3a

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    .line 464
    .local v4, "leftHeight":I
    :goto_c
    if-eqz v10, :cond_3c

    iget v12, v10, Ljava/util/TreeMap$Node;->height:I

    .line 466
    .local v12, "rightHeight":I
    :goto_10
    sub-int v1, v4, v12

    .line 467
    .local v1, "delta":I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_4e

    .line 468
    iget-object v13, v10, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 469
    .local v13, "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v15, v10, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 470
    .local v15, "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v15, :cond_3e

    iget v0, v15, Ljava/util/TreeMap$Node;->height:I

    move/from16 v16, v0

    .line 471
    .local v16, "rightRightHeight":I
    :goto_22
    if-eqz v13, :cond_41

    iget v14, v13, Ljava/util/TreeMap$Node;->height:I

    .line 473
    .local v14, "rightLeftHeight":I
    :goto_26
    sub-int v11, v14, v16

    .line 474
    .local v11, "rightDelta":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_32

    if-nez v11, :cond_43

    if-nez p2, :cond_43

    .line 475
    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    .line 481
    :goto_37
    if-eqz p2, :cond_73

    .line 517
    .end local v1    # "delta":I
    .end local v2    # "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v10    # "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v11    # "rightDelta":I
    .end local v12    # "rightHeight":I
    .end local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_39
    :goto_39
    return-void

    .line 463
    .restart local v2    # "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v10    # "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_3a
    const/4 v4, 0x0

    goto :goto_c

    .line 464
    .restart local v4    # "leftHeight":I
    :cond_3c
    const/4 v12, 0x0

    goto :goto_10

    .line 470
    .restart local v1    # "delta":I
    .restart local v12    # "rightHeight":I
    .restart local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_3e
    const/16 v16, 0x0

    goto :goto_22

    .line 471
    .restart local v16    # "rightRightHeight":I
    :cond_41
    const/4 v14, 0x0

    goto :goto_26

    .line 478
    .restart local v11    # "rightDelta":I
    .restart local v14    # "rightLeftHeight":I
    :cond_43
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    goto :goto_37

    .line 485
    .end local v11    # "rightDelta":I
    .end local v13    # "rightLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_4e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_85

    .line 486
    iget-object v5, v2, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 487
    .local v5, "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v7, v2, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 488
    .local v7, "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v7, :cond_76

    iget v8, v7, Ljava/util/TreeMap$Node;->height:I

    .line 489
    .local v8, "leftRightHeight":I
    :goto_5c
    if-eqz v5, :cond_78

    iget v6, v5, Ljava/util/TreeMap$Node;->height:I

    .line 491
    .local v6, "leftLeftHeight":I
    :goto_60
    sub-int v3, v6, v8

    .line 492
    .local v3, "leftDelta":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_6c

    if-nez v3, :cond_7a

    if-nez p2, :cond_7a

    .line 493
    :cond_6c
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    .line 499
    :goto_71
    if-nez p2, :cond_39

    .line 460
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_73
    iget-object v9, v9, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto :goto_2

    .line 488
    .restart local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .restart local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_76
    const/4 v8, 0x0

    goto :goto_5c

    .line 489
    .restart local v8    # "leftRightHeight":I
    :cond_78
    const/4 v6, 0x0

    goto :goto_60

    .line 496
    .restart local v3    # "leftDelta":I
    .restart local v6    # "leftLeftHeight":I
    :cond_7a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$Node;)V

    .line 497
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$Node;)V

    goto :goto_71

    .line 503
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_85
    if-nez v1, :cond_90

    .line 504
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    .line 505
    if-eqz p2, :cond_73

    goto :goto_39

    .line 511
    :cond_90
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Ljava/util/TreeMap$Node;->height:I

    .line 512
    if-nez p2, :cond_73

    goto :goto_39
.end method

.method private replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 435
    .local v0, "parent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 436
    if-eqz p2, :cond_9

    .line 437
    iput-object v0, p2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 440
    :cond_9
    if-eqz v0, :cond_15

    .line 441
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 442
    iput-object p2, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 450
    :goto_11
    return-void

    .line 445
    :cond_12
    iput-object p2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_11

    .line 448
    :cond_15
    iput-object p2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    goto :goto_11
.end method

.method private rotateLeft(Ljava/util/TreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "root":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 523
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 524
    .local v0, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 525
    .local v1, "pivot":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 526
    .local v2, "pivotLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 529
    .local v3, "pivotRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 530
    if-eqz v2, :cond_f

    .line 531
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 534
    :cond_f
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 537
    iput-object p1, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 538
    iput-object v1, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 541
    if-eqz v0, :cond_36

    iget v4, v0, Ljava/util/TreeMap$Node;->height:I

    move v6, v4

    :goto_1b
    if-eqz v2, :cond_38

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1f
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    .line 543
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v3, :cond_2d

    iget v5, v3, Ljava/util/TreeMap$Node;->height:I

    :cond_2d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Ljava/util/TreeMap$Node;->height:I

    .line 545
    return-void

    :cond_36
    move v6, v5

    .line 541
    goto :goto_1b

    :cond_38
    move v4, v5

    goto :goto_1f
.end method

.method private rotateRight(Ljava/util/TreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "root":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 551
    iget-object v0, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 552
    .local v0, "pivot":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 553
    .local v3, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 554
    .local v1, "pivotLeft":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 557
    .local v2, "pivotRight":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 558
    if-eqz v2, :cond_f

    .line 559
    iput-object p1, v2, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 562
    :cond_f
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 565
    iput-object p1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 566
    iput-object v0, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 569
    if-eqz v3, :cond_36

    iget v4, v3, Ljava/util/TreeMap$Node;->height:I

    move v6, v4

    :goto_1b
    if-eqz v2, :cond_38

    iget v4, v2, Ljava/util/TreeMap$Node;->height:I

    :goto_1f
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Ljava/util/TreeMap$Node;->height:I

    .line 571
    iget v4, p1, Ljava/util/TreeMap$Node;->height:I

    if-eqz v1, :cond_2d

    iget v5, v1, Ljava/util/TreeMap$Node;->height:I

    :cond_2d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ljava/util/TreeMap$Node;->height:I

    .line 573
    return-void

    :cond_36
    move v6, v5

    .line 569
    goto :goto_1b

    :cond_38
    move v4, v5

    goto :goto_1f
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1669
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v2

    const-string v3, "comparator"

    invoke-virtual {p0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1670
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1671
    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1672
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1673
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1674
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1d

    .line 1676
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_38
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 659
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 190
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    .line 192
    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    .line 193
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 158
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 159
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-eqz v3, :cond_12

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v2

    :cond_12
    iput-object v2, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 160
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 161
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 162
    return-object v1

    .line 163
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :catch_1b
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v1, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 182
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 730
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 726
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    .line 684
    .local v0, "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    .end local v0    # "result":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;
    .registers 12
    .param p2, "relation"    # Ljava/util/TreeMap$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 252
    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v5, :cond_47

    .line 253
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v7, :cond_31

    instance-of v5, p1, Ljava/lang/Comparable;

    if-nez v5, :cond_31

    .line 254
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not Comparable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_31
    sget-object v5, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    if-ne p2, v5, :cond_46

    .line 257
    new-instance v5, Ljava/util/TreeMap$Node;

    invoke-direct {v5, v6, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iput-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 258
    iput v8, p0, Ljava/util/TreeMap;->size:I

    .line 259
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    .line 260
    iget-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 343
    :cond_46
    :goto_46
    :pswitch_46
    return-object v6

    .line 271
    :cond_47
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    sget-object v7, Ljava/util/TreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v7, :cond_70

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    move-object v1, v5

    .line 275
    .local v1, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_51
    iget-object v4, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    .line 277
    .local v4, "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_53
    if-eqz v1, :cond_72

    iget-object v5, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 284
    .local v2, "comparison":I
    :goto_5b
    if-nez v2, :cond_68

    .line 285
    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_e4

    .line 298
    :cond_68
    if-gez v2, :cond_87

    iget-object v0, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 299
    .local v0, "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_6c
    if-eqz v0, :cond_8a

    .line 300
    move-object v4, v0

    .line 301
    goto :goto_53

    .end local v0    # "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v2    # "comparison":I
    .end local v4    # "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_70
    move-object v1, v6

    .line 271
    goto :goto_51

    .line 277
    .restart local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v4    # "nearest":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_72
    iget-object v5, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    iget-object v7, v4, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_5b

    .line 287
    .restart local v2    # "comparison":I
    :pswitch_7b
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    :pswitch_80
    move-object v6, v4

    .line 292
    goto :goto_46

    .line 294
    :pswitch_82
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    .line 298
    :cond_87
    iget-object v0, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_6c

    .line 309
    .restart local v0    # "child":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_8a
    if-gez v2, :cond_b7

    .line 310
    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_f4

    goto :goto_53

    .line 313
    :pswitch_98
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->prev()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto :goto_46

    :pswitch_9d
    move-object v6, v4

    .line 316
    goto :goto_46

    .line 320
    :pswitch_9f
    new-instance v3, Ljava/util/TreeMap$Node;

    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    .line 321
    .local v3, "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v3, v4, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 322
    iget v5, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->size:I

    .line 323
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    .line 324
    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v3

    .line 325
    goto :goto_46

    .line 328
    .end local v3    # "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_b7
    sget-object v5, Ljava/util/TreeMap$2;->$SwitchMap$java$util$TreeMap$Relation:[I

    invoke-virtual {p2}, Ljava/util/TreeMap$Relation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_104

    goto :goto_53

    :pswitch_c3
    move-object v6, v4

    .line 331
    goto :goto_46

    .line 334
    :pswitch_c5
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->next()Ljava/util/TreeMap$Node;

    move-result-object v6

    goto/16 :goto_46

    .line 338
    :pswitch_cb
    new-instance v3, Ljava/util/TreeMap$Node;

    invoke-direct {v3, v4, p1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    .line 339
    .restart local v3    # "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object v3, v4, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 340
    iget v5, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->size:I

    .line 341
    iget v5, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/TreeMap;->modCount:I

    .line 342
    invoke-direct {p0, v4, v8}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    move-object v6, v3

    .line 343
    goto/16 :goto_46

    .line 285
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_82
        :pswitch_80
    .end packed-switch

    .line 310
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_98
        :pswitch_98
        :pswitch_46
        :pswitch_9d
        :pswitch_9d
        :pswitch_9f
    .end packed-switch

    .line 328
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_c3
        :pswitch_46
        :pswitch_c5
        :pswitch_c5
        :pswitch_cb
    .end packed-switch
.end method

.method findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 365
    .local v0, "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1a

    iget-object v2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    .line 366
    .local v1, "valuesEqual":Z
    :goto_17
    if-eqz v1, :cond_1c

    .end local v0    # "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_19
    return-object v0

    .line 365
    .end local v1    # "valuesEqual":Z
    .restart local v0    # "mine":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    .line 366
    .restart local v1    # "valuesEqual":Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    sget-object v0, Ljava/util/TreeMap$Relation;->EQUAL:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_5
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    .line 606
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 608
    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 650
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 178
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_10

    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 709
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_4
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 708
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_10
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 668
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 173
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    .line 689
    .local v0, "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$KeySet;

    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    goto :goto_4
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_5
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_a

    .line 630
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 632
    :cond_a
    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v1}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 641
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    .line 694
    .local v0, "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    :cond_5
    new-instance v0, Ljava/util/TreeMap$KeySet;

    .end local v0    # "result":Ljava/util/TreeMap$KeySet;, "Ljava/util/TreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->keySet:Ljava/util/TreeMap$KeySet;

    goto :goto_4
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->immutableCopy(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v2, Ljava/util/TreeMap$Relation;->CREATE:Ljava/util/TreeMap$Relation;

    invoke-virtual {p0, p1, v2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 241
    .local v0, "created":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 242
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 243
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 197
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method removeInternal(Ljava/util/TreeMap$Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v8, 0x0

    .line 374
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 375
    .local v1, "left":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 376
    .local v4, "right":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 377
    .local v3, "originalParent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_43

    if-eqz v4, :cond_43

    .line 388
    iget v6, v1, Ljava/util/TreeMap$Node;->height:I

    iget v7, v4, Ljava/util/TreeMap$Node;->height:I

    if-le v6, v7, :cond_3e

    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 389
    .local v0, "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_15
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "leftHeight":I
    iget-object v1, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 393
    if-eqz v1, :cond_25

    .line 394
    iget v2, v1, Ljava/util/TreeMap$Node;->height:I

    .line 395
    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 396
    iput-object v0, v1, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 397
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 399
    :cond_25
    const/4 v5, 0x0

    .line 400
    .local v5, "rightHeight":I
    iget-object v4, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 401
    if-eqz v4, :cond_32

    .line 402
    iget v5, v4, Ljava/util/TreeMap$Node;->height:I

    .line 403
    iput-object v4, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 404
    iput-object v0, v4, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 405
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 407
    :cond_32
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ljava/util/TreeMap$Node;->height:I

    .line 408
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 423
    .end local v0    # "adjacent":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    .end local v2    # "leftHeight":I
    .end local v5    # "rightHeight":I
    :goto_3d
    return-void

    .line 388
    :cond_3e
    invoke-virtual {v4}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_15

    .line 410
    :cond_43
    if-eqz v1, :cond_5b

    .line 411
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 412
    iput-object v8, p1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 420
    :goto_4a
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Ljava/util/TreeMap;->rebalance(Ljava/util/TreeMap$Node;Z)V

    .line 421
    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    .line 422
    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    goto :goto_3d

    .line 413
    :cond_5b
    if-eqz v4, :cond_63

    .line 414
    invoke-direct {p0, p1, v4}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    .line 415
    iput-object v8, p1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_4a

    .line 417
    :cond_63
    invoke-direct {p0, p1, v8}, Ljava/util/TreeMap;->replaceInParent(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Node;)V

    goto :goto_4a
.end method

.method removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    .line 427
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    .line 428
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    .line 430
    :cond_9
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 169
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 12
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_12

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 699
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_4
    if-eqz p4, :cond_15

    sget-object v6, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 700
    .local v6, "toBound":Ljava/util/TreeMap$Bound;
    :goto_8
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 698
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v6    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_12
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4

    .line 699
    .restart local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_15
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_8
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 10
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_10

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    .line 718
    .local v4, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_4
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    .line 717
    .end local v4    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_10
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_4
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0
.end method
