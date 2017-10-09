.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;,
        Ljava/util/concurrent/ConcurrentHashMap$CounterCell;,
        Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$ValuesView;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySetView;,
        Ljava/util/concurrent/ConcurrentHashMap$CollectionView;,
        Ljava/util/concurrent/ConcurrentHashMap$MapEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$BaseIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$Traverser;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeBin;,
        Ljava/util/concurrent/ConcurrentHashMap$TreeNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ReservationNode;,
        Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$Node;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x70000001

.field static final NCPU:I

.field static final RESERVED:I = -0x7fffffff

.field static final SEED_INCREMENT:I = 0x61c88647

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field private static final TRANSFERORIGIN:J

.field static final TREEBIN:I = -0x80000000

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field static final counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL

.field static final threadCounterHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private volatile transient transferOrigin:I

.field private transient values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 405
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    sput v5, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    .line 408
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/io/ObjectStreamField;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segments"

    const-class v9, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segmentMask"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segmentShift"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    sput-object v5, Ljava/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 3046
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v5, Ljava/util/concurrent/ConcurrentHashMap;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3057
    new-instance v5, Ljava/lang/ThreadLocal;

    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v5, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    .line 3174
    :try_start_41
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    .line 3175
    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3176
    .local v3, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "sizeCtl"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    .line 3178
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "transferIndex"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    .line 3180
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "transferOrigin"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERORIGIN:J

    .line 3182
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "baseCount"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    .line 3184
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "cellsBusy"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    .line 3186
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 3187
    .local v1, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    const-string v6, "value"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    .line 3189
    const-class v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3190
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v6, v5

    sput-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    .line 3191
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 3192
    .local v4, "scale":I
    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v4

    if-eqz v5, :cond_c4

    .line 3193
    new-instance v5, Ljava/lang/Error;

    const-string v6, "data type scale not a power of two"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_bd} :catch_bd

    .line 3195
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scale":I
    :catch_bd
    move-exception v2

    .line 3196
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 3194
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "scale":I
    :cond_c4
    :try_start_c4
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    sput v5, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cc} :catch_bd

    .line 3198
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 633
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 634
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .line 646
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 647
    if-gez p1, :cond_b

    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 649
    :cond_b
    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_14

    const/high16 v0, 0x40000000    # 2.0f

    .line 652
    .local v0, "cap":I
    :goto_11
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 653
    return-void

    .line 649
    .end local v0    # "cap":I
    :cond_14
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    goto :goto_11
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 681
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 682
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 12
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 703
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 704
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    if-ltz p1, :cond_c

    if-gtz p3, :cond_12

    .line 705
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 706
    :cond_12
    if-ge p1, p3, :cond_15

    .line 707
    move p1, p3

    .line 708
    :cond_15
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-long v6, p1

    long-to-float v1, v6

    div-float/2addr v1, p2

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-long v2, v4

    .line 709
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_29

    const/high16 v0, 0x40000000    # 2.0f

    .line 711
    .local v0, "cap":I
    :goto_26
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 712
    return-void

    .line 709
    .end local v0    # "cap":I
    :cond_29
    long-to-int v1, v2

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    goto :goto_26
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 661
    const/16 v0, 0x10

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 662
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 663
    return-void
.end method

.method private final addCount(JI)V
    .registers 37
    .param p1, "x"    # J
    .param p3, "check"    # I

    .prologue
    .line 1575
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v26, v0

    .local v26, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v26, :cond_1a

    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .local v10, "b":J
    add-long v12, v10, p1

    .local v12, "s":J
    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 1578
    .end local v10    # "b":J
    .end local v12    # "s":J
    :cond_1a
    const/16 v31, 0x1

    .line 1579
    .local v31, "uncontended":Z
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;

    .local v27, "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    if-eqz v27, :cond_49

    if-eqz v26, :cond_49

    move-object/from16 v0, v26

    array-length v6, v0

    add-int/lit8 v28, v6, -0x1

    .local v28, "m":I
    if-ltz v28, :cond_49

    move-object/from16 v0, v27

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    and-int v6, v6, v28

    aget-object v15, v26, v6

    .local v15, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v15, :cond_49

    sget-object v14, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v0, v15, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v18, v0

    .local v18, "v":J
    add-long v20, v18, p1

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v31

    if-nez v31, :cond_55

    .line 1584
    .end local v15    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v18    # "v":J
    .end local v28    # "m":I
    :cond_49
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v27

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->fullAddCount(JLjava/util/concurrent/ConcurrentHashMap$CounterHashCode;Z)V

    .line 1607
    .end local v27    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .end local v31    # "uncontended":Z
    :cond_54
    return-void

    .line 1587
    .restart local v15    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v18    # "v":J
    .restart local v27    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .restart local v28    # "m":I
    .restart local v31    # "uncontended":Z
    :cond_55
    const/4 v6, 0x1

    move/from16 v0, p3

    if-le v0, v6, :cond_54

    .line 1589
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v12

    .line 1591
    .end local v15    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v18    # "v":J
    .end local v27    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .end local v28    # "m":I
    .end local v31    # "uncontended":Z
    .restart local v12    # "s":J
    :cond_5e
    if-ltz p3, :cond_54

    .line 1593
    :goto_60
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v24, v0

    .local v24, "sc":I
    move/from16 v0, v24

    int-to-long v6, v0

    cmp-long v6, v12, v6

    if-ltz v6, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v30, v0

    .local v30, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v30, :cond_54

    move-object/from16 v0, v30

    array-length v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_54

    .line 1595
    if-gez v24, :cond_b1

    .line 1596
    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_54

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferOrigin:I

    if-le v6, v7, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v29, v0

    .local v29, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v29, :cond_54

    .line 1599
    sget-object v20, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v22, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v25, v24, -0x1

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v25}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1600
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1604
    .end local v29    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_ac
    :goto_ac
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v12

    goto :goto_60

    .line 1602
    :cond_b1
    sget-object v20, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v22, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/16 v25, -0x2

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v25}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1603
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_ac
.end method

.method static final casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z
    .registers 10
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "c":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p3, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v2, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 9
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 513
    instance-of v6, p0, Ljava/lang/Comparable;

    if-eqz v6, :cond_3a

    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_d

    .line 528
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :goto_c
    return-object v1

    .line 517
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_3a

    .line 518
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v6, v5

    if-ge v2, v6, :cond_3a

    .line 519
    aget-object v4, v5, v2

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_37

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v7, Ljava/lang/Comparable;

    if-ne v6, v7, :cond_37

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_37

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_37

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-eq v6, v1, :cond_c

    .line 518
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 528
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/reflect/Type;
    .end local v5    # "ts":[Ljava/lang/reflect/Type;
    :cond_3a
    const/4 v1, 0x0

    goto :goto_c
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .end local p1    # "k":Ljava/lang/Object;
    :goto_9
    return v0

    .restart local p1    # "k":Ljava/lang/Object;
    :cond_a
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9
.end method

.method private final fullAddCount(JLjava/util/concurrent/ConcurrentHashMap$CounterHashCode;Z)V
    .registers 36
    .param p1, "x"    # J
    .param p3, "hc"    # Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 3076
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p3, :cond_8b

    .line 3077
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;

    .end local p3    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    invoke-direct/range {p3 .. p3}, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;-><init>()V

    .line 3078
    .restart local p3    # "hc":Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v6, 0x61c88647

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v29

    .line 3079
    .local v29, "s":I
    if-nez v29, :cond_88

    const/16 v21, 0x1

    :goto_14
    move/from16 v0, v21

    move-object/from16 v1, p3

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    .line 3080
    .local v21, "h":I
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->threadCounterHashCode:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3084
    .end local v29    # "s":I
    :goto_21
    const/16 v19, 0x0

    .line 3087
    .local v19, "collide":Z
    :cond_23
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v18, v0

    .local v18, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v18, :cond_119

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "n":I
    if-lez v26, :cond_119

    .line 3088
    add-int/lit8 v4, v26, -0x1

    and-int v4, v4, v21

    aget-object v5, v18, v4

    .local v5, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-nez v5, :cond_a9

    .line 3089
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_99

    .line 3090
    new-instance v27, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v27

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    .line 3091
    .local v27, "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_99

    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    move-result v4

    if-eqz v4, :cond_99

    .line 3093
    const/16 v20, 0x0

    .line 3096
    .local v20, "created":Z
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .local v28, "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v28, :cond_7a

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "m":I
    if-lez v25, :cond_7a

    add-int/lit8 v4, v25, -0x1

    and-int v24, v4, v21

    .local v24, "j":I
    aget-object v4, v28, v24

    if-nez v4, :cond_7a

    .line 3099
    aput-object v27, v28, v24
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_92

    .line 3100
    const/16 v20, 0x1

    .line 3103
    .end local v24    # "j":I
    .end local v25    # "m":I
    :cond_7a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 3105
    if-eqz v20, :cond_23

    .line 3158
    .end local v20    # "created":Z
    .end local v26    # "n":I
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_81
    :goto_81
    move/from16 v0, v21

    move-object/from16 v1, p3

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    .line 3159
    return-void

    .end local v18    # "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v19    # "collide":Z
    .end local v21    # "h":I
    .restart local v29    # "s":I
    :cond_88
    move/from16 v21, v29

    .line 3079
    goto :goto_14

    .line 3083
    .end local v29    # "s":I
    :cond_8b
    move-object/from16 v0, p3

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterHashCode;->code:I

    move/from16 v21, v0

    .restart local v21    # "h":I
    goto :goto_21

    .line 3103
    .restart local v18    # "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .restart local v19    # "collide":Z
    .restart local v20    # "created":Z
    .restart local v26    # "n":I
    .restart local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :catchall_92
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    .line 3110
    .end local v20    # "created":Z
    .end local v27    # "r":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_99
    const/16 v19, 0x0

    .line 3135
    :cond_9b
    :goto_9b
    shl-int/lit8 v4, v21, 0xd

    xor-int v21, v21, v4

    .line 3136
    ushr-int/lit8 v4, v21, 0x11

    xor-int v21, v21, v4

    .line 3137
    shl-int/lit8 v4, v21, 0x5

    xor-int v21, v21, v4

    goto/16 :goto_23

    .line 3112
    .restart local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_a9
    if-nez p4, :cond_ae

    .line 3113
    const/16 p4, 0x1

    goto :goto_9b

    .line 3114
    :cond_ae
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v8, v5, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_81

    .line 3116
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_ca

    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    move/from16 v0, v26

    if-lt v0, v4, :cond_cd

    .line 3117
    :cond_ca
    const/16 v19, 0x0

    goto :goto_9b

    .line 3118
    :cond_cd
    if-nez v19, :cond_d2

    .line 3119
    const/16 v19, 0x1

    goto :goto_9b

    .line 3120
    :cond_d2
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_9b

    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 3123
    :try_start_e6
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_109

    .line 3124
    shl-int/lit8 v4, v26, 0x1

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .line 3125
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_f6
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_103

    .line 3126
    aget-object v4, v18, v22

    aput-object v4, v28, v22

    .line 3125
    add-int/lit8 v22, v22, 0x1

    goto :goto_f6

    .line 3127
    :cond_103
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_109
    .catchall {:try_start_e6 .. :try_end_109} :catchall_112

    .line 3130
    .end local v22    # "i":I
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 3132
    const/16 v19, 0x0

    .line 3133
    goto/16 :goto_23

    .line 3130
    :catchall_112
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    .line 3139
    .end local v5    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v8    # "v":J
    .end local v26    # "n":I
    :cond_119
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v4, :cond_167

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_167

    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_167

    .line 3141
    const/16 v23, 0x0

    .line 3143
    .local v23, "init":Z
    :try_start_137
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_157

    .line 3144
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object/from16 v28, v0

    .line 3145
    .restart local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    and-int/lit8 v4, v21, 0x1

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    move-wide/from16 v0, p1

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v6, v28, v4

    .line 3146
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_155
    .catchall {:try_start_137 .. :try_end_155} :catchall_160

    .line 3147
    const/16 v23, 0x1

    .line 3150
    .end local v28    # "rs":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    :cond_157
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    .line 3152
    if-eqz v23, :cond_23

    goto/16 :goto_81

    .line 3150
    :catchall_160
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v4

    .line 3155
    .end local v23    # "init":Z
    :cond_167
    sget-object v10, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .restart local v8    # "v":J
    add-long v16, v8, p1

    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_81
.end method

.method private final initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1542
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_7

    array-length v0, v8

    if-nez v0, :cond_32

    .line 1543
    :cond_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    if-gez v4, :cond_f

    .line 1544
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 1545
    :cond_f
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    :try_start_1b
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v8, :cond_22

    array-length v0, v8

    if-nez v0, :cond_30

    .line 1548
    :cond_22
    if-lez v4, :cond_33

    move v6, v4

    .line 1550
    .local v6, "n":I
    :goto_25
    new-array v7, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1551
    .local v7, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v8, v7

    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_36

    .line 1552
    ushr-int/lit8 v0, v6, 0x2

    sub-int v4, v6, v0

    .line 1555
    .end local v6    # "n":I
    .end local v7    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_30
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1560
    .end local v4    # "sc":I
    :cond_32
    return-object v8

    .line 1548
    .restart local v4    # "sc":I
    :cond_33
    const/16 v6, 0x10

    goto :goto_25

    .line 1555
    :catchall_36
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0
.end method

.method public static newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 4
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 35
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1244
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1245
    const-wide/16 v26, 0x0

    .line 1246
    .local v26, "size":J
    const/16 v22, 0x0

    .line 1248
    .local v22, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    .line 1249
    .local v18, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v32

    .line 1250
    .local v32, "v":Ljava/lang/Object;, "TV;"
    if-eqz v18, :cond_34

    if-eqz v32, :cond_34

    .line 1251
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1252
    .end local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v23, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const-wide/16 v6, 0x1

    add-long v26, v26, v6

    move-object/from16 v22, v23

    .line 1256
    .end local v23    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v22    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_c

    .line 1257
    :cond_34
    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-nez v5, :cond_40

    .line 1258
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1327
    :goto_3f
    return-void

    .line 1261
    :cond_40
    const-wide/32 v6, 0x20000000

    cmp-long v5, v26, v6

    if-ltz v5, :cond_84

    .line 1262
    const/high16 v20, 0x40000000    # 2.0f

    .line 1268
    .local v20, "n":I
    :goto_49
    move/from16 v0, v20

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v30, v0

    check-cast v30, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1269
    .local v30, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    add-int/lit8 v19, v20, -0x1

    .line 1270
    .local v19, "mask":I
    const-wide/16 v10, 0x0

    .line 1271
    .local v10, "added":J
    :goto_55
    if-eqz v22, :cond_132

    .line 1273
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v21, v0

    .line 1274
    .local v21, "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v22

    iget v14, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v14, "h":I
    and-int v17, v14, v19

    .line 1275
    .local v17, "j":I
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    .local v13, "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v13, :cond_94

    .line 1276
    const/16 v16, 0x1

    .line 1316
    .local v16, "insertAtFront":Z
    :cond_6f
    :goto_6f
    if-eqz v16, :cond_81

    .line 1317
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1318
    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1319
    move-object/from16 v0, v30

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1321
    :cond_81
    move-object/from16 v22, v21

    .line 1322
    goto :goto_55

    .line 1264
    .end local v10    # "added":J
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v19    # "mask":I
    .end local v20    # "n":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_84
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v28, v0

    .line 1265
    .local v28, "sz":I
    ushr-int/lit8 v5, v28, 0x1

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v20

    .restart local v20    # "n":I
    goto :goto_49

    .line 1278
    .end local v28    # "sz":I
    .restart local v10    # "added":J
    .restart local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v14    # "h":I
    .restart local v17    # "j":I
    .restart local v19    # "mask":I
    .restart local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v30    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_94
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1279
    iget v5, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v5, :cond_b6

    move-object/from16 v29, v13

    .line 1280
    check-cast v29, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    .line 1281
    .local v29, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v22

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v5

    if-nez v5, :cond_b3

    .line 1282
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1283
    :cond_b3
    const/16 v16, 0x0

    .line 1284
    .restart local v16    # "insertAtFront":Z
    goto :goto_6f

    .line 1286
    .end local v16    # "insertAtFront":Z
    .end local v29    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_b6
    const/4 v12, 0x0

    .line 1287
    .local v12, "binCount":I
    const/16 v16, 0x1

    .line 1289
    .restart local v16    # "insertAtFront":Z
    move-object/from16 v24, v13

    .local v24, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_bb
    if-eqz v24, :cond_dd

    .line 1290
    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v5, v14, :cond_116

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v0

    .local v25, "qk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_db

    if-eqz v25, :cond_116

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1293
    :cond_db
    const/16 v16, 0x0

    .line 1298
    .end local v25    # "qk":Ljava/lang/Object;, "TK;"
    :cond_dd
    if-eqz v16, :cond_6f

    const/16 v5, 0x8

    if-lt v12, v5, :cond_6f

    .line 1299
    const/16 v16, 0x0

    .line 1300
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1301
    move-object/from16 v0, v22

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1302
    const/4 v15, 0x0

    .local v15, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v31, 0x0

    .line 1303
    .local v31, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v24, v22

    :goto_f1
    if-eqz v24, :cond_124

    .line 1304
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, v24

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v0, v24

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, v24

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 1306
    .local v4, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v31

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v31, :cond_11f

    .line 1307
    move-object v15, v4

    .line 1310
    :goto_10d
    move-object/from16 v31, v4

    .line 1303
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_f1

    .line 1296
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_116
    add-int/lit8 v12, v12, 0x1

    .line 1289
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v24, v0

    goto :goto_bb

    .line 1309
    .restart local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11f
    move-object/from16 v0, v31

    iput-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_10d

    .line 1312
    .end local v4    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_124
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v5, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto/16 :goto_6f

    .line 1323
    .end local v12    # "binCount":I
    .end local v13    # "first":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v21    # "next":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v24    # "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v31    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_132
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1324
    ushr-int/lit8 v5, v20, 0x2

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iput v5, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1325
    move-object/from16 v0, p0

    iput-wide v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    goto/16 :goto_3f
.end method

.method static final setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "v":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    return-void
.end method

.method static final spread(I)I
    .registers 3
    .param p0, "h"    # I

    .prologue
    .line 490
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .registers 4
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 498
    add-int/lit8 v0, p0, -0x1

    .line 499
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 500
    ushr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 501
    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 502
    ushr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    .line 503
    ushr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    .line 504
    if-gez v0, :cond_17

    const/4 v1, 0x1

    :cond_16
    :goto_16
    return v1

    :cond_17
    if-ge v0, v1, :cond_16

    add-int/lit8 v1, v0, 0x1

    goto :goto_16
.end method

.method private final transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1664
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v46, v0

    .line 1665
    .local v46, "n":I
    sget v6, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_58

    ushr-int/lit8 v6, v46, 0x3

    sget v7, Ljava/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int v56, v6, v7

    .local v56, "stride":I
    :goto_10
    const/16 v6, 0x10

    move/from16 v0, v56

    if-ge v0, v6, :cond_18

    .line 1666
    const/16 v56, 0x10

    .line 1667
    :cond_18
    if-nez p2, :cond_82

    .line 1670
    shl-int/lit8 v6, v46, 0x1

    :try_start_1c
    new-array v0, v6, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v49, v0

    check-cast v49, [Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_22} :catch_5b

    .line 1671
    .local v49, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 p2, v49

    .line 1676
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1677
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferOrigin:I

    .line 1678
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    .line 1679
    new-instance v54, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1680
    .local v54, "rev":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    move/from16 v38, v46

    .local v38, "k":I
    :goto_41
    if-lez v38, :cond_82

    .line 1681
    move/from16 v0, v38

    move/from16 v1, v56

    if-le v0, v1, :cond_64

    sub-int v47, v38, v56

    .line 1682
    .local v47, "nextk":I
    :goto_4b
    move/from16 v45, v47

    .local v45, "m":I
    :goto_4d
    move/from16 v0, v45

    move/from16 v1, v38

    if-ge v0, v1, :cond_67

    .line 1683
    aput-object v54, p2, v45

    .line 1682
    add-int/lit8 v45, v45, 0x1

    goto :goto_4d

    .end local v38    # "k":I
    .end local v45    # "m":I
    .end local v47    # "nextk":I
    .end local v49    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v54    # "rev":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    .end local v56    # "stride":I
    :cond_58
    move/from16 v56, v46

    .line 1665
    goto :goto_10

    .line 1672
    .restart local v56    # "stride":I
    :catch_5b
    move-exception v28

    .line 1673
    .local v28, "ex":Ljava/lang/Throwable;
    const v6, 0x7fffffff

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .line 1718
    .end local v28    # "ex":Ljava/lang/Throwable;
    :cond_63
    :goto_63
    return-void

    .line 1681
    .restart local v38    # "k":I
    .restart local v49    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v54    # "rev":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    :cond_64
    const/16 v47, 0x0

    goto :goto_4b

    .line 1684
    .restart local v45    # "m":I
    .restart local v47    # "nextk":I
    :cond_67
    add-int v45, v46, v47

    :goto_69
    add-int v6, v46, v38

    move/from16 v0, v45

    if-ge v0, v6, :cond_74

    .line 1685
    aput-object v54, p2, v45

    .line 1684
    add-int/lit8 v45, v45, 0x1

    goto :goto_69

    .line 1686
    :cond_74
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERORIGIN:J

    move/from16 v38, v47

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v6, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    goto :goto_41

    .line 1689
    .end local v38    # "k":I
    .end local v45    # "m":I
    .end local v47    # "nextk":I
    .end local v49    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v54    # "rev":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    :cond_82
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v48, v0

    .line 1690
    .local v48, "nextn":I
    new-instance v31, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1691
    .local v31, "fwd":Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;, "Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode<TK;TV;>;"
    const/16 v24, 0x1

    .line 1692
    .local v24, "advance":Z
    const/16 v37, 0x0

    .local v37, "i":I
    const/16 v26, 0x0

    .line 1694
    .local v26, "bound":I
    :cond_96
    :goto_96
    if-eqz v24, :cond_cd

    .line 1695
    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    move/from16 v1, v26

    if-lt v0, v1, :cond_a3

    .line 1696
    const/16 v24, 0x0

    goto :goto_96

    .line 1697
    :cond_a3
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    .local v10, "nextIndex":I
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->transferOrigin:I

    if-gt v10, v6, :cond_b2

    .line 1698
    const/16 v37, -0x1

    .line 1699
    const/16 v24, 0x0

    goto :goto_96

    .line 1701
    :cond_b2
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    move/from16 v0, v56

    if-le v10, v0, :cond_cb

    sub-int v11, v10, v56

    .local v11, "nextBound":I
    :goto_bc
    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1705
    move/from16 v26, v11

    .line 1706
    add-int/lit8 v37, v10, -0x1

    .line 1707
    const/16 v24, 0x0

    goto :goto_96

    .line 1701
    .end local v11    # "nextBound":I
    :cond_cb
    const/4 v11, 0x0

    goto :goto_bc

    .line 1710
    .end local v10    # "nextIndex":I
    :cond_cd
    if-ltz v37, :cond_db

    move/from16 v0, v37

    move/from16 v1, v46

    if-ge v0, v1, :cond_db

    add-int v6, v37, v46

    move/from16 v0, v48

    if-lt v6, v0, :cond_10a

    .line 1712
    :cond_db
    sget-object v12, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v14, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move/from16 v16, v0

    .local v16, "sc":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "sc":I
    .local v17, "sc":I
    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 1713
    const/4 v6, -0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_63

    .line 1714
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1715
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1716
    shl-int/lit8 v6, v46, 0x1

    ushr-int/lit8 v7, v46, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto/16 :goto_63

    .line 1722
    .end local v17    # "sc":I
    :cond_10a
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v29

    .local v29, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v29, :cond_135

    .line 1723
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1724
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-static {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1725
    add-int v6, v37, v46

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1726
    const/16 v24, 0x1

    goto/16 :goto_96

    .line 1729
    :cond_135
    move-object/from16 v0, v29

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v30, v0

    .local v30, "fh":I
    const v6, -0x70000001

    move/from16 v0, v30

    if-ne v0, v6, :cond_146

    .line 1730
    const/16 v24, 0x1

    goto/16 :goto_96

    .line 1732
    :cond_146
    monitor-enter v29

    .line 1733
    :try_start_147
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v6

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_1f4

    .line 1735
    if-ltz v30, :cond_1fa

    .line 1736
    and-int v55, v30, v46

    .line 1737
    .local v55, "runBit":I
    move-object/from16 v39, v29

    .line 1738
    .local v39, "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v0, v29

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v50, v0

    .local v50, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_15f
    if-eqz v50, :cond_178

    .line 1739
    move-object/from16 v0, v50

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v25, v6, v46

    .line 1740
    .local v25, "b":I
    move/from16 v0, v25

    move/from16 v1, v55

    if-eq v0, v1, :cond_171

    .line 1741
    move/from16 v55, v25

    .line 1742
    move-object/from16 v39, v50

    .line 1738
    :cond_171
    move-object/from16 v0, v50

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v50, v0

    goto :goto_15f

    .line 1745
    .end local v25    # "b":I
    :cond_178
    if-nez v55, :cond_1bc

    .line 1746
    move-object/from16 v41, v39

    .line 1747
    .local v41, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v35, 0x0

    .line 1753
    .local v35, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_17e
    move-object/from16 v50, v29

    move-object/from16 v36, v35

    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v36, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v42, v41

    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local v42, "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_184
    move-object/from16 v0, v50

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_1d3

    .line 1754
    move-object/from16 v0, v50

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v51, v0

    .local v51, "ph":I
    move-object/from16 v0, v50

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v52, v0

    .local v52, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v50

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v53, v0

    .line 1755
    .local v53, "pv":Ljava/lang/Object;, "TV;"
    and-int v6, v51, v46

    if-nez v6, :cond_1c1

    .line 1756
    new-instance v41, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v41

    move/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    move-object/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v35, v36

    .line 1753
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_1b1
    move-object/from16 v0, v50

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v50, v0

    move-object/from16 v36, v35

    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v42, v41

    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_184

    .line 1750
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v51    # "ph":I
    .end local v52    # "pk":Ljava/lang/Object;, "TK;"
    .end local v53    # "pv":Ljava/lang/Object;, "TV;"
    :cond_1bc
    move-object/from16 v35, v39

    .line 1751
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/16 v41, 0x0

    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_17e

    .line 1758
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v51    # "ph":I
    .restart local v52    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v53    # "pv":Ljava/lang/Object;, "TV;"
    :cond_1c1
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, v35

    move/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v42

    .end local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto :goto_1b1

    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v51    # "ph":I
    .end local v52    # "pk":Ljava/lang/Object;, "TK;"
    .end local v53    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1d3
    move-object/from16 v35, v36

    .local v35, "hn":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v42

    .line 1794
    .end local v35    # "hn":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v36    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v39    # "lastRun":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v42    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v50    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v55    # "runBit":I
    :goto_1d7
    move-object/from16 v0, p2

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1795
    add-int v6, v37, v46

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-static {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1796
    move-object/from16 v0, p1

    move/from16 v1, v37

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1797
    const/16 v24, 0x1

    .line 1799
    :cond_1f4
    monitor-exit v29

    goto/16 :goto_96

    :catchall_1f7
    move-exception v6

    monitor-exit v29
    :try_end_1f9
    .catchall {:try_start_147 .. :try_end_1f9} :catchall_1f7

    throw v6

    .line 1761
    :cond_1fa
    :try_start_1fa
    move-object/from16 v0, v29

    instance-of v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_29d

    .line 1762
    move-object/from16 v0, v29

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v57, v0

    .line 1763
    .local v57, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/16 v43, 0x0

    .local v43, "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v44, 0x0

    .line 1764
    .local v44, "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v33, 0x0

    .local v33, "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v34, 0x0

    .line 1765
    .local v34, "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v40, 0x0

    .local v40, "lc":I
    const/16 v32, 0x0

    .line 1766
    .local v32, "hc":I
    move-object/from16 v0, v57

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v27, v0

    .local v27, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_218
    if-eqz v27, :cond_26b

    .line 1767
    move-object/from16 v0, v27

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v19, v0

    .line 1768
    .local v19, "h":I
    new-instance v18, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, v27

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v23}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 1770
    .local v18, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    and-int v6, v19, v46

    if-nez v6, :cond_255

    .line 1771
    move-object/from16 v0, v44

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v44, :cond_24e

    .line 1772
    move-object/from16 v43, v18

    .line 1775
    :goto_243
    move-object/from16 v44, v18

    .line 1776
    add-int/lit8 v40, v40, 0x1

    .line 1766
    :goto_247
    move-object/from16 v0, v27

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v27, v0

    goto :goto_218

    .line 1774
    :cond_24e
    move-object/from16 v0, v18

    move-object/from16 v1, v44

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_243

    .line 1779
    :cond_255
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v34, :cond_264

    .line 1780
    move-object/from16 v33, v18

    .line 1783
    :goto_25f
    move-object/from16 v34, v18

    .line 1784
    add-int/lit8 v32, v32, 0x1

    goto :goto_247

    .line 1782
    :cond_264
    move-object/from16 v0, v18

    move-object/from16 v1, v34

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_25f

    .line 1787
    .end local v18    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v19    # "h":I
    :cond_26b
    const/4 v6, 0x6

    move/from16 v0, v40

    if-gt v0, v6, :cond_27f

    invoke-static/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v41

    .line 1789
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_274
    const/4 v6, 0x6

    move/from16 v0, v32

    if-gt v0, v6, :cond_28e

    invoke-static/range {v33 .. v33}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v35

    .line 1791
    .local v35, "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_27d
    goto/16 :goto_1d7

    .line 1787
    .end local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_27f
    if-eqz v32, :cond_28b

    new-instance v41, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_274

    :cond_28b
    move-object/from16 v41, v57

    goto :goto_274

    .line 1789
    .restart local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_28e
    if-eqz v40, :cond_29a

    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    :try_end_299
    .catchall {:try_start_1fa .. :try_end_299} :catchall_1f7

    goto :goto_27d

    :cond_29a
    move-object/from16 v35, v57

    goto :goto_27d

    .line 1793
    .end local v27    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v32    # "hc":I
    .end local v33    # "hi":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v34    # "hiTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v40    # "lc":I
    .end local v41    # "ln":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v43    # "lo":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v44    # "loTail":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v57    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_29d
    const/16 v35, 0x0

    .restart local v35    # "hn":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object/from16 v41, v35

    .local v41, "ln":Ljava/lang/Object;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    goto/16 :goto_1d7
.end method

.method private final treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V
    .registers 21
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_30

    .line 1813
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "n":I
    const/16 v2, 0x40

    move/from16 v0, v16

    if-ge v0, v2, :cond_31

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_30

    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v6, "sc":I
    if-ltz v6, :cond_30

    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1816
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1837
    .end local v6    # "sc":I
    .end local v16    # "n":I
    :cond_30
    :goto_30
    return-void

    .line 1818
    .restart local v16    # "n":I
    :cond_31
    invoke-static/range {p1 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v13

    .local v13, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v13, :cond_30

    .line 1819
    monitor-enter v13

    .line 1820
    :try_start_38
    invoke-static/range {p1 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    if-ne v2, v13, :cond_71

    .line 1821
    const/4 v15, 0x0

    .local v15, "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/16 v17, 0x0

    .line 1822
    .local v17, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v14, v13

    .local v14, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_42
    if-eqz v14, :cond_65

    .line 1823
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v8, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v9, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v10, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .line 1826
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v17

    iput-object v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v17, :cond_5d

    .line 1827
    move-object v15, v7

    .line 1830
    :goto_58
    move-object/from16 v17, v7

    .line 1822
    iget-object v14, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_42

    .line 1829
    :cond_5d
    move-object/from16 v0, v17

    iput-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_58

    .line 1834
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_62
    move-exception v2

    monitor-exit v13
    :try_end_64
    .catchall {:try_start_38 .. :try_end_64} :catchall_62

    throw v2

    .line 1832
    .restart local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v17    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_65
    :try_start_65
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v2, v15}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1834
    .end local v14    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v15    # "hd":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_71
    monitor-exit v13
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_62

    goto :goto_30
.end method

.method private final tryPresize(I)V
    .registers 13
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v10, 0x40000000    # 2.0f

    .line 1631
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_32

    move v6, v10

    .line 1634
    .local v6, "c":I
    :cond_7
    :goto_7
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    if-ltz v4, :cond_46

    .line 1635
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1636
    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v9, :cond_12

    array-length v7, v9

    .local v7, "n":I
    if-nez v7, :cond_42

    .line 1637
    .end local v7    # "n":I
    :cond_12
    if-le v4, v6, :cond_3c

    move v7, v4

    .line 1638
    .restart local v7    # "n":I
    :goto_15
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1640
    :try_start_21
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, v9, :cond_2f

    .line 1642
    new-array v8, v7, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v8, [Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 1643
    .local v8, "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3e

    .line 1644
    ushr-int/lit8 v0, v7, 0x2

    sub-int v4, v7, v0

    .line 1647
    .end local v8    # "nt":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2f
    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_7

    .line 1631
    .end local v4    # "sc":I
    .end local v6    # "c":I
    .end local v7    # "n":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_32
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v6

    goto :goto_7

    .restart local v4    # "sc":I
    .restart local v6    # "c":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_3c
    move v7, v6

    .line 1637
    goto :goto_15

    .line 1647
    .restart local v7    # "n":I
    :catchall_3e
    move-exception v0

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0

    .line 1651
    :cond_42
    if-le v6, v4, :cond_46

    if-lt v7, v10, :cond_47

    .line 1657
    .end local v7    # "n":I
    .end local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_46
    return-void

    .line 1653
    .restart local v7    # "n":I
    .restart local v9    # "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_47
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v9, v0, :cond_7

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v5, -0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1655
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_7
.end method

.method static untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1843
    .local p0, "b":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 1844
    .local v3, "tl":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_1b

    .line 1845
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1846
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_18

    .line 1847
    move-object v0, v1

    .line 1850
    :goto_14
    move-object v3, v1

    .line 1844
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    .line 1849
    :cond_18
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_14

    .line 1852
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1b
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 15
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v12, 0x0

    const/16 v9, 0x10

    .line 1200
    const/4 v6, 0x0

    .line 1201
    .local v6, "sshift":I
    const/4 v7, 0x1

    .line 1202
    .local v7, "ssize":I
    :goto_5
    if-ge v7, v9, :cond_c

    .line 1203
    add-int/lit8 v6, v6, 0x1

    .line 1204
    shl-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1206
    :cond_c
    rsub-int/lit8 v4, v6, 0x20

    .line 1207
    .local v4, "segmentShift":I
    add-int/lit8 v3, v7, -0x1

    .line 1208
    .local v3, "segmentMask":I
    new-array v5, v9, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    check-cast v5, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1210
    .local v5, "segments":[Ljava/util/concurrent/ConcurrentHashMap$Segment;, "[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v9, v5

    if-ge v0, v9, :cond_24

    .line 1211
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-direct {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v9, v5, v0

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1212
    :cond_24
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segments"

    invoke-virtual {v9, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1213
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segmentShift"

    invoke-virtual {v9, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1214
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segmentMask"

    invoke-virtual {v9, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1215
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1218
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_5f

    .line 1219
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v9, v8

    const/4 v10, 0x0

    array-length v11, v8

    invoke-direct {v1, v8, v9, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1220
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_4e
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_5f

    .line 1221
    iget-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1222
    iget-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_4e

    .line 1225
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_5f
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1227
    const/4 v5, 0x0

    .line 1228
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 15

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v11, 0x0

    .line 990
    const-wide/16 v2, 0x0

    .line 991
    .local v2, "delta":J
    const/4 v6, 0x0

    .line 992
    .local v6, "i":I
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v9, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    move v7, v6

    .line 993
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_7
    if-eqz v9, :cond_4d

    array-length v10, v9

    if-ge v7, v10, :cond_4d

    .line 995
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    .line 996
    .local v4, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v4, :cond_16

    .line 997
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_14
    move v7, v6

    .line 1016
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_7

    .line 998
    :cond_16
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v5, "fh":I
    const v10, -0x70000001

    if-ne v5, v10, :cond_23

    .line 999
    invoke-virtual {p0, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    .line 1000
    const/4 v6, 0x0

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_14

    .line 1003
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_23
    monitor-enter v4

    .line 1004
    :try_start_24
    invoke-static {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v4, :cond_5b

    .line 1005
    if-ltz v5, :cond_35

    move-object v8, v4

    .line 1008
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_2d
    if-eqz v8, :cond_42

    .line 1009
    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    .line 1010
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2d

    .line 1005
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_35
    instance-of v10, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_40

    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object v10, v0

    iget-object v8, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_58

    goto :goto_2d

    :cond_40
    move-object v8, v11

    goto :goto_2d

    .line 1012
    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_42
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    const/4 v10, 0x0

    :try_start_45
    invoke-static {v9, v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1014
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_48
    monitor-exit v4

    goto :goto_14

    :catchall_4a
    move-exception v10

    :goto_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v10

    .line 1017
    .end local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "fh":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_4d
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_57

    .line 1018
    const/4 v10, -0x1

    invoke-direct {p0, v2, v3, v10}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 1019
    :cond_57
    return-void

    .line 1014
    .restart local v4    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "fh":I
    :catchall_58
    move-exception v10

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_4b

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_5b
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_48
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1395
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 774
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 788
    if-nez p1, :cond_9

    .line 789
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 791
    :cond_9
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_27

    .line 792
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v5, v2

    array-length v6, v2

    invoke-direct {v0, v2, v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 793
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_27

    .line 795
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_26

    if-eqz v3, :cond_14

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 796
    :cond_26
    const/4 v4, 0x1

    .line 799
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_27
    return v4
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 1418
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    move v2, v3

    .line 1419
    .local v2, "f":I
    :goto_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    .line 1418
    .end local v2    # "f":I
    :cond_e
    array-length v2, v1

    goto :goto_6
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
    .line 1087
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    .local v0, "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    .end local v0    # "es":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap$EntrySetView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v11, 0x0

    .line 1152
    if-eq p1, p0, :cond_5f

    .line 1153
    instance-of v12, p1, Ljava/util/Map;

    if-nez v12, :cond_8

    .line 1174
    :cond_7
    :goto_7
    return v11

    :cond_8
    move-object v4, p1

    .line 1155
    check-cast v4, Ljava/util/Map;

    .line 1157
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v8, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v8, :cond_2e

    move v1, v11

    .line 1158
    .local v1, "f":I
    :goto_10
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v8, v1, v11, v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1159
    .local v3, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :cond_15
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_30

    .line 1160
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1161
    .local v10, "val":Ljava/lang/Object;, "TV;"
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1162
    .local v9, "v":Ljava/lang/Object;
    if-eqz v9, :cond_7

    if-eq v9, v10, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_7

    .line 1157
    .end local v1    # "f":I
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "val":Ljava/lang/Object;, "TV;"
    :cond_2e
    array-length v1, v8

    goto :goto_10

    .line 1165
    .restart local v1    # "f":I
    .restart local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_30
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1167
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .local v5, "mk":Ljava/lang/Object;
    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "mv":Ljava/lang/Object;
    if-eqz v6, :cond_7

    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "v":Ljava/lang/Object;
    if-eqz v9, :cond_7

    if-eq v6, v9, :cond_38

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38

    goto :goto_7

    .line 1174
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "f":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v4    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v5    # "mk":Ljava/lang/Object;
    .end local v6    # "mv":Ljava/lang/Object;
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v8    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    :cond_5f
    const/4 v11, 0x1

    goto :goto_7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 746
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v3

    .line 747
    .local v3, "h":I
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v6, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2b

    array-length v4, v6

    .local v4, "n":I
    if-lez v4, :cond_2b

    add-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    .local v0, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2b

    .line 749
    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v1, "eh":I
    if-ne v1, v3, :cond_2c

    .line 750
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_29

    if-eqz v2, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 751
    :cond_29
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 761
    .end local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    .end local v4    # "n":I
    :cond_2b
    :goto_2b
    return-object v7

    .line 753
    .restart local v0    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v1    # "eh":I
    .restart local v4    # "n":I
    :cond_2c
    if-gez v1, :cond_37

    .line 754
    invoke-virtual {v0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_2b

    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_2b

    .line 755
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_37
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_2b

    .line 756
    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v8, v3, :cond_37

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .restart local v2    # "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_4b

    if-eqz v2, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 758
    :cond_4b
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1100
    .local v0, "h":I
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_22

    .line 1101
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v3

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1102
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_d
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_22

    .line 1103
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_d

    .line 1105
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_22
    return v0
.end method

.method final helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;)[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1614
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p2, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    instance-of v0, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_2e

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;

    .end local p2    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    iget-object v6, p2, Ljava/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v6, "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2e

    .line 1616
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->nextTable:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne v6, v0, :cond_2d

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-ne p1, v0, :cond_2d

    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferIndex:I

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->transferOrigin:I

    if-le v0, v1, :cond_2d

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    .local v4, "sc":I
    const/4 v0, -0x1

    if-ge v4, v0, :cond_2d

    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1619
    invoke-direct {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->transfer([Ljava/util/concurrent/ConcurrentHashMap$Node;[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 1622
    .end local v4    # "sc":I
    .end local v6    # "nextTab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2d
    :goto_2d
    return-object v6

    :cond_2e
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2d
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 730
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .local v0, "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    goto :goto_4
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_8

    .line 1488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1489
    :cond_8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 1406
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    move v2, v3

    .line 1407
    .local v2, "f":I
    :goto_6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    .line 1406
    .end local v2    # "f":I
    :cond_e
    array-length v2, v1

    goto :goto_6
.end method

.method public mappingCount()J
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 1437
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 1438
    .local v0, "n":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    move-wide v0, v2

    .end local v0    # "n":J
    :cond_b
    return-wide v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 816
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    .line 893
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 894
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_f

    .line 895
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_28
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1339
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 23
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    :cond_4
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 822
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    .line 823
    .local v9, "hash":I
    const/4 v4, 0x0

    .line 824
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 826
    .local v15, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_17
    :goto_17
    if-eqz v15, :cond_1c

    array-length v11, v15

    .local v11, "n":I
    if-nez v11, :cond_21

    .line 827
    .end local v11    # "n":I
    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap;->initTable()[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    goto :goto_17

    .line 828
    .restart local v11    # "n":I
    :cond_21
    add-int/lit8 v16, v11, -0x1

    and-int v10, v16, v9

    .local v10, "i":I
    invoke-static {v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_52

    .line 829
    const/16 v16, 0x0

    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v9, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v10, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->casTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 880
    :cond_46
    const-wide/16 v16, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    .line 881
    const/16 v16, 0x0

    :goto_51
    return-object v16

    .line 833
    :cond_52
    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v8, "fh":I
    const v16, -0x70000001

    move/from16 v0, v16

    if-ne v8, v0, :cond_62

    .line 834
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v15

    goto :goto_17

    .line 836
    :cond_62
    const/4 v12, 0x0

    .line 837
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v7

    .line 838
    :try_start_64
    invoke-static {v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v0, v7, :cond_e5

    .line 839
    if-ltz v8, :cond_c2

    .line 840
    const/4 v4, 0x1

    .line 841
    move-object v5, v7

    .line 843
    .local v5, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_70
    iget v0, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v9, :cond_a3

    iget-object v6, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v6, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_88

    if-eqz v6, :cond_a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 846
    :cond_88
    iget-object v12, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 847
    if-nez p3, :cond_90

    .line 848
    move-object/from16 v0, p2

    iput-object v0, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .end local v6    # "ek":Ljava/lang/Object;, "TK;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_90
    :goto_90
    move-object/from16 v16, v12

    .line 870
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_64 .. :try_end_93} :catchall_bc

    .line 871
    if-eqz v4, :cond_17

    .line 872
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v4, v0, :cond_a0

    .line 873
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljava/util/concurrent/ConcurrentHashMap$Node;I)V

    .line 874
    :cond_a0
    if-eqz v16, :cond_46

    goto :goto_51

    .line 851
    .restart local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_a3
    move-object v14, v5

    .line 852
    .local v14, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :try_start_a4
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v5, :cond_bf

    .line 853
    new-instance v16, Ljava/util/concurrent/ConcurrentHashMap$Node;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v9, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    move-object/from16 v0, v16

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_90

    .line 870
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_bc
    move-exception v16

    monitor-exit v7
    :try_end_be
    .catchall {:try_start_a4 .. :try_end_be} :catchall_bc

    throw v16

    .line 841
    .restart local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_bf
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 859
    .end local v5    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_c2
    :try_start_c2
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v16, v0

    if-eqz v16, :cond_e5

    .line 861
    const/4 v4, 0x2

    .line 862
    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v13, :cond_e5

    .line 864
    iget-object v12, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 865
    if-nez p3, :cond_e2

    .line 866
    move-object/from16 v0, p2

    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_e2
    .catchall {:try_start_c2 .. :try_end_e2} :catchall_bc

    :cond_e2
    move-object/from16 v16, v12

    goto :goto_92

    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e5
    move-object/from16 v16, v12

    goto :goto_92
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, p1, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1348
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 1349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1350
    :cond_8
    if-eqz p2, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 1373
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1374
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_c

    .line 1360
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1361
    :cond_c
    invoke-virtual {p0, p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    .line 917
    .local v9, "hash":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v18, v0

    .line 919
    .local v18, "tab":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_e
    :goto_e
    if-eqz v18, :cond_21

    move-object/from16 v0, v18

    array-length v11, v0

    .local v11, "n":I
    if-eqz v11, :cond_21

    add-int/lit8 v20, v11, -0x1

    and-int v10, v20, v9

    .local v10, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v7, :cond_24

    .line 983
    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_21
    const/16 v20, 0x0

    :cond_23
    :goto_23
    return-object v20

    .line 922
    .restart local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v10    # "i":I
    .restart local v11    # "n":I
    :cond_24
    iget v8, v7, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    .local v8, "fh":I
    const v20, -0x70000001

    move/from16 v0, v20

    if-ne v8, v0, :cond_36

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$Node;)[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v18

    goto :goto_e

    .line 925
    :cond_36
    const/4 v12, 0x0

    .line 926
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    const/16 v19, 0x0

    .line 927
    .local v19, "validated":Z
    monitor-enter v7

    .line 928
    :try_start_3a
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->tabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;I)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_10e

    .line 929
    if-ltz v8, :cond_b2

    .line 930
    const/16 v19, 0x1

    .line 931
    move-object v4, v7

    .local v4, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    const/4 v14, 0x0

    .line 933
    .local v14, "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4a
    iget v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v9, :cond_ac

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v5, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v5, v0, :cond_62

    if-eqz v5, :cond_ac

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ac

    .line 936
    :cond_62
    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 937
    .local v6, "ev":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_74

    move-object/from16 v0, p3

    if-eq v0, v6, :cond_74

    if-eqz v6, :cond_7b

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7b

    .line 939
    :cond_74
    move-object v12, v6

    .line 940
    if-eqz p2, :cond_92

    .line 941
    move-object/from16 v0, p2

    iput-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_7b
    :goto_7b
    move-object/from16 v20, v12

    .line 972
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_3a .. :try_end_7e} :catchall_9d

    .line 973
    if-eqz v19, :cond_e

    .line 974
    if-eqz v20, :cond_21

    .line 975
    if-nez p2, :cond_23

    .line 976
    const-wide/16 v22, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    goto :goto_23

    .line 942
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_92
    if-eqz v14, :cond_a0

    .line 943
    :try_start_94
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v14, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_7b

    .line 972
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :catchall_9d
    move-exception v20

    monitor-exit v7
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_9d

    throw v20

    .line 945
    .restart local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_a0
    :try_start_a0
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_7b

    .line 949
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    :cond_ac
    move-object v14, v4

    .line 950
    iget-object v4, v4, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v4, :cond_4a

    goto :goto_7b

    .line 954
    .end local v4    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "pred":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_b2
    instance-of v0, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_10e

    .line 955
    const/16 v19, 0x1

    .line 956
    move-object v0, v7

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    move-object/from16 v17, v0

    .line 958
    .local v17, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v16, v0

    .local v16, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_10e

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    .local v13, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_10e

    .line 960
    iget-object v15, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    .line 961
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_e7

    move-object/from16 v0, p3

    if-eq v0, v15, :cond_e7

    if-eqz v15, :cond_10e

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10e

    .line 963
    :cond_e7
    move-object v12, v15

    .line 964
    if-eqz p2, :cond_f1

    .line 965
    move-object/from16 v0, p2

    iput-object v0, v13, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v12

    goto :goto_7d

    .line 966
    :cond_f1
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_10a

    .line 967
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->untreeify(Ljava/util/concurrent/ConcurrentHashMap$Node;)Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->setTabAt([Ljava/util/concurrent/ConcurrentHashMap$Node;ILjava/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_10a
    .catchall {:try_start_a0 .. :try_end_10a} :catchall_9d

    :cond_10a
    move-object/from16 v20, v12

    goto/16 :goto_7d

    .end local v13    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    .end local v16    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v17    # "t":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    :cond_10e
    move-object/from16 v20, v12

    goto/16 :goto_7d
.end method

.method public size()I
    .registers 5

    .prologue
    .line 720
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    .line 721
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v2, 0x0

    :goto_b
    return v2

    :cond_c
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const v2, 0x7fffffff

    goto :goto_b

    :cond_17
    long-to-int v2, v0

    goto :goto_b
.end method

.method final sumCount()J
    .registers 9

    .prologue
    .line 3061
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->counterCells:[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;

    .line 3062
    .local v1, "as":[Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    iget-wide v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->baseCount:J

    .line 3063
    .local v4, "sum":J
    if-eqz v1, :cond_14

    .line 3064
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 3065
    aget-object v0, v1, v2

    .local v0, "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    if-eqz v0, :cond_11

    .line 3066
    iget-wide v6, v0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v4, v6

    .line 3064
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3069
    .end local v0    # "a":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
    .end local v2    # "i":I
    :cond_14
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 1121
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v5, :cond_43

    move v0, v7

    .line 1122
    .local v0, "f":I
    :goto_6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v1, v5, v0, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 1123
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_38

    .line 1128
    :goto_1b
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .line 1129
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    .line 1130
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_23

    const-string v2, "(this Map)"

    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1131
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1132
    if-ne v6, p0, :cond_2f

    const-string v6, "(this Map)"

    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_2f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    if-nez v3, :cond_45

    .line 1138
    :cond_38
    const/16 v7, 0x7d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1121
    .end local v0    # "f":I
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_43
    array-length v0, v5

    goto :goto_6

    .line 1135
    .restart local v0    # "f":I
    .restart local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .restart local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_45
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    .local v0, "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    .end local v0    # "vs":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/concurrent/ConcurrentHashMap$ValuesView;

    goto :goto_4
.end method
