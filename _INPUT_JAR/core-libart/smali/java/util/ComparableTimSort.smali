.class Ljava/util/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .registers 6
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 109
    iput-object p1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 112
    array-length v0, p1

    .line 114
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_24

    ushr-int/lit8 v3, v0, 0x1

    :goto_12
    new-array v1, v3, [Ljava/lang/Object;

    .line 116
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 128
    const/16 v3, 0x78

    if-ge v0, v3, :cond_27

    const/4 v2, 0x5

    .line 131
    .local v2, "stackLen":I
    :goto_1b
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runBase:[I

    .line 132
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    .line 133
    return-void

    .line 114
    .end local v1    # "newArray":[Ljava/lang/Object;
    .end local v2    # "stackLen":I
    :cond_24
    const/16 v3, 0x100

    goto :goto_12

    .line 128
    .restart local v1    # "newArray":[Ljava/lang/Object;
    :cond_27
    const/16 v3, 0x606

    if-ge v0, v3, :cond_2e

    const/16 v2, 0xa

    goto :goto_1b

    :cond_2e
    const v3, 0x1d16f

    if-ge v0, v3, :cond_36

    const/16 v2, 0x13

    goto :goto_1b

    :cond_36
    const/16 v2, 0x28

    goto :goto_1b
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .registers 11
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .prologue
    .line 211
    if-ne p3, p1, :cond_4

    .line 212
    add-int/lit8 p3, p3, 0x1

    .line 213
    :cond_4
    :goto_4
    if-ge p3, p2, :cond_3d

    .line 215
    aget-object v3, p0, p3

    check-cast v3, Ljava/lang/Comparable;

    .line 218
    .local v3, "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v0, p1

    .line 219
    .local v0, "left":I
    move v4, p3

    .line 226
    .local v4, "right":I
    :goto_c
    if-ge v0, v4, :cond_1f

    .line 227
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 228
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1c

    .line 229
    move v4, v1

    goto :goto_c

    .line 231
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    goto :goto_c

    .line 242
    .end local v1    # "mid":I
    :cond_1f
    sub-int v2, p3, v0

    .line 244
    .local v2, "n":I
    packed-switch v2, :pswitch_data_3e

    .line 248
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :goto_29
    aput-object v3, p0, v0

    .line 213
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 245
    :pswitch_2e
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 246
    :pswitch_36
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_29

    .line 252
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v4    # "right":I
    :cond_3d
    return-void

    .line 244
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 281
    add-int/lit8 v0, p1, 0x1

    .line 282
    .local v0, "runHi":I
    if-ne v0, p2, :cond_6

    .line 283
    const/4 v2, 0x1

    .line 295
    :goto_5
    return v2

    .line 286
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    aget-object v3, p0, p1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_41

    move v0, v1

    .line 287
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_15
    if-ge v0, p2, :cond_28

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_28

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 289
    :cond_28
    invoke-static {p0, p1, v0}, Ljava/util/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 295
    :cond_2b
    sub-int v2, v0, p1

    goto :goto_5

    .line 291
    :goto_2e
    if-ge v0, p2, :cond_2b

    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2b

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_41
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_2e
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I

    .prologue
    .line 849
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_1e

    .line 851
    move v1, p1

    .line 852
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 853
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 854
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 855
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 856
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 857
    add-int/lit8 v1, v1, 0x1

    .line 859
    if-gez v1, :cond_21

    .line 860
    move v1, p1

    .line 865
    :goto_1a
    new-array v0, v1, [Ljava/lang/Object;

    .line 866
    .local v0, "newArray":[Ljava/lang/Object;
    iput-object v0, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 868
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newSize":I
    :cond_1e
    iget-object v2, p0, Ljava/util/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 862
    .restart local v1    # "newSize":I
    :cond_21
    iget-object v2, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 475
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_40

    .line 477
    sub-int v2, p3, p4

    .line 478
    .local v2, "maxOfs":I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_24

    .line 479
    move v0, v3

    .line 480
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 481
    if-gtz v3, :cond_e

    .line 482
    move v3, v2

    goto :goto_e

    .line 484
    :cond_24
    if-le v3, v2, :cond_27

    .line 485
    move v3, v2

    .line 488
    :cond_27
    add-int/2addr v0, p4

    .line 489
    add-int/2addr v3, p4

    .line 514
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 515
    :goto_2b
    if-ge v0, v3, :cond_63

    .line 516
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 518
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_61

    .line 519
    add-int/lit8 v0, v1, 0x1

    goto :goto_2b

    .line 492
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_40
    add-int/lit8 v2, p4, 0x1

    .line 493
    .restart local v2    # "maxOfs":I
    :cond_42
    :goto_42
    if-ge v3, v2, :cond_58

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_58

    .line 494
    move v0, v3

    .line 495
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 496
    if-gtz v3, :cond_42

    .line 497
    move v3, v2

    goto :goto_42

    .line 499
    :cond_58
    if-le v3, v2, :cond_5b

    .line 500
    move v3, v2

    .line 503
    :cond_5b
    move v4, v0

    .line 504
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 505
    sub-int v3, p4, v4

    goto :goto_29

    .line 521
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_61
    move v3, v1

    goto :goto_2b

    .line 524
    .end local v1    # "m":I
    :cond_63
    return v3
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 544
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 545
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_42

    .line 547
    add-int/lit8 v2, p4, 0x1

    .line 548
    .local v2, "maxOfs":I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_24

    .line 549
    move v0, v3

    .line 550
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 551
    if-gtz v3, :cond_e

    .line 552
    move v3, v2

    goto :goto_e

    .line 554
    :cond_24
    if-le v3, v2, :cond_27

    .line 555
    move v3, v2

    .line 558
    :cond_27
    move v4, v0

    .line 559
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 560
    sub-int v3, p4, v4

    .line 584
    .end local v4    # "tmp":I
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    .line 585
    :goto_2e
    if-ge v0, v3, :cond_63

    .line 586
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 588
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_60

    .line 589
    move v3, v1

    goto :goto_2e

    .line 563
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_42
    sub-int v2, p3, p4

    .line 564
    .restart local v2    # "maxOfs":I
    :cond_44
    :goto_44
    if-ge v3, v2, :cond_5a

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5a

    .line 565
    move v0, v3

    .line 566
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 567
    if-gtz v3, :cond_44

    .line 568
    move v3, v2

    goto :goto_44

    .line 570
    :cond_5a
    if-le v3, v2, :cond_5d

    .line 571
    move v3, v2

    .line 574
    :cond_5d
    add-int/2addr v0, p4

    .line 575
    add-int/2addr v3, p4

    goto :goto_2c

    .line 591
    .restart local v1    # "m":I
    :cond_60
    add-int/lit8 v0, v1, 0x1

    goto :goto_2e

    .line 594
    .end local v1    # "m":I
    :cond_63
    return v3
.end method

.method private mergeAt(I)V
    .registers 11
    .param p1, "i"    # I

    .prologue
    .line 405
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    aget v0, v5, p1

    .line 406
    .local v0, "base1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v3, v5, p1

    .line 407
    .local v3, "len1":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    aget v1, v5, v6

    .line 408
    .local v1, "base2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    aget v4, v5, v6

    .line 417
    .local v4, "len2":I
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int v6, v3, v4

    aput v6, v5, p1

    .line 418
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x3

    if-ne p1, v5, :cond_38

    .line 419
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runBase:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 420
    iget-object v5, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v8, p1, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 422
    :cond_38
    iget v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 428
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v3, v7}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 430
    .local v2, "k":I
    add-int/2addr v0, v2

    .line 431
    sub-int/2addr v3, v2

    .line 432
    if-nez v3, :cond_50

    .line 450
    :cond_4f
    :goto_4f
    return-void

    .line 439
    :cond_50
    iget-object v5, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v0, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Comparable;

    iget-object v6, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    invoke-static {v5, v6, v1, v4, v7}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v4

    .line 442
    if-eqz v4, :cond_4f

    .line 446
    if-gt v3, v4, :cond_6a

    .line 447
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_4f

    .line 449
    :cond_6a
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/util/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_4f
.end method

.method private mergeCollapse()V
    .registers 6

    .prologue
    .line 365
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    .line 366
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 367
    .local v0, "n":I
    if-lez v0, :cond_32

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_32

    .line 368
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2e

    .line 369
    add-int/lit8 v0, v0, -0x1

    .line 370
    :cond_2e
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 371
    :cond_32
    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_42

    .line 372
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 377
    .end local v0    # "n":I
    :cond_42
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 5

    .prologue
    .line 384
    :goto_0
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 385
    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 386
    .local v0, "n":I
    if-lez v0, :cond_1b

    iget-object v1, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1b

    .line 387
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_1b
    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 390
    .end local v0    # "n":I
    :cond_1f
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 21
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 736
    .local v2, "a":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v12

    .line 737
    .local v12, "tmp":[Ljava/lang/Object;
    const/4 v13, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    add-int v13, p1, p2

    add-int/lit8 v5, v13, -0x1

    .line 740
    .local v5, "cursor1":I
    add-int/lit8 v7, p4, -0x1

    .line 741
    .local v7, "cursor2":I
    add-int v13, p3, p4

    add-int/lit8 v9, v13, -0x1

    .line 744
    .local v9, "dest":I
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .local v6, "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 745
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_37

    .line 746
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v10, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 838
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_36
    return-void

    .line 749
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_37
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_4e

    .line 750
    sub-int v9, v10, p2

    .line 751
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v5, v6, p2

    .line 752
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_36

    .line 757
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_4e
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v11, "minGallop":I
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 760
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_54
    const/4 v3, 0x0

    .line 761
    .local v3, "count1":I
    const/4 v4, 0x0

    .line 769
    .local v4, "count2":I
    :cond_56
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    aget-object v14, v2, v5

    invoke-interface {v13, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_92

    .line 770
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 771
    add-int/lit8 v3, v3, 0x1

    .line 772
    const/4 v4, 0x0

    .line 773
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_14a

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 822
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    :cond_73
    :goto_73
    const/4 v13, 0x1

    if-ge v11, v13, :cond_77

    const/4 v11, 0x1

    .end local v11    # "minGallop":I
    :cond_77
    move-object/from16 v0, p0

    iput v11, v0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 824
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_12d

    .line 826
    sub-int v9, v9, p2

    .line 827
    sub-int v5, v5, p2

    .line 828
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    move/from16 v0, p2

    invoke-static {v2, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    goto :goto_36

    .line 776
    .restart local v11    # "minGallop":I
    :cond_92
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .local v8, "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 777
    add-int/lit8 v4, v4, 0x1

    .line 778
    const/4 v3, 0x0

    .line 779
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_a7

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 780
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_73

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_a7
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 782
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    :goto_a9
    or-int v13, v3, v4

    if-lt v13, v11, :cond_56

    .line 791
    :goto_ad
    aget-object v13, v12, v7

    check-cast v13, Ljava/lang/Comparable;

    add-int/lit8 v14, p2, -0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v13, v2, v0, v1, v14}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v3, p2, v13

    .line 792
    if-eqz v3, :cond_cc

    .line 793
    sub-int/2addr v9, v3

    .line 794
    sub-int/2addr v5, v3

    .line 795
    sub-int p2, p2, v3

    .line 796
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v2, v13, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    if-eqz p2, :cond_73

    .line 800
    :cond_cc
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "cursor2":I
    .restart local v8    # "cursor2":I
    aget-object v13, v12, v7

    aput-object v13, v2, v9

    .line 801
    add-int/lit8 p4, p4, -0x1

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_de

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .line 802
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_73

    .line 804
    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_de
    aget-object v13, v2, v5

    check-cast v13, Ljava/lang/Comparable;

    const/4 v14, 0x0

    add-int/lit8 v15, p4, -0x1

    move/from16 v0, p4

    invoke-static {v13, v12, v14, v0, v15}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    sub-int v4, p4, v13

    .line 805
    if-eqz v4, :cond_147

    .line 806
    sub-int v9, v10, v4

    .line 807
    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    sub-int v7, v8, v4

    .line 808
    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    sub-int p4, p4, v4

    .line 809
    add-int/lit8 v13, v7, 0x1

    add-int/lit8 v14, v9, 0x1

    invoke-static {v12, v13, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    const/4 v13, 0x1

    move/from16 v0, p4

    if-le v0, v13, :cond_73

    .line 813
    :goto_101
    add-int/lit8 v10, v9, -0x1

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "cursor1":I
    .restart local v6    # "cursor1":I
    aget-object v13, v2, v5

    aput-object v13, v2, v9

    .line 814
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_111

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 815
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_73

    .line 816
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_111
    add-int/lit8 v11, v11, -0x1

    .line 817
    const/4 v13, 0x7

    if-lt v3, v13, :cond_128

    const/4 v13, 0x1

    move v14, v13

    :goto_118
    const/4 v13, 0x7

    if-lt v4, v13, :cond_12b

    const/4 v13, 0x1

    :goto_11c
    or-int/2addr v13, v14

    if-nez v13, :cond_143

    .line 818
    if-gez v11, :cond_122

    .line 819
    const/4 v11, 0x0

    .line 820
    :cond_122
    add-int/lit8 v11, v11, 0x2

    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .line 821
    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_54

    .line 817
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_128
    const/4 v13, 0x0

    move v14, v13

    goto :goto_118

    :cond_12b
    const/4 v13, 0x0

    goto :goto_11c

    .line 830
    .end local v6    # "cursor1":I
    .end local v10    # "dest":I
    .end local v11    # "minGallop":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_12d
    if-nez p4, :cond_137

    .line 831
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Comparison method violates its general contract!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 836
    :cond_137
    const/4 v13, 0x0

    add-int/lit8 v14, p4, -0x1

    sub-int v14, v9, v14

    move/from16 v0, p4

    invoke-static {v12, v13, v2, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_36

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    .restart local v11    # "minGallop":I
    :cond_143
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_ad

    .end local v7    # "cursor2":I
    .end local v9    # "dest":I
    .restart local v8    # "cursor2":I
    .restart local v10    # "dest":I
    :cond_147
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v7, v8

    .end local v8    # "cursor2":I
    .restart local v7    # "cursor2":I
    goto :goto_101

    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .restart local v6    # "cursor1":I
    .restart local v10    # "dest":I
    :cond_14a
    move v9, v10

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    move v5, v6

    .end local v6    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_a9
.end method

.method private mergeLo(IIII)V
    .registers 19
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 618
    iget-object v1, p0, Ljava/util/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 619
    .local v1, "a":[Ljava/lang/Object;
    move/from16 v0, p2

    invoke-direct {p0, v0}, Ljava/util/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 620
    .local v11, "tmp":[Ljava/lang/Object;
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, p1, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, "cursor1":I
    move/from16 v6, p3

    .line 624
    .local v6, "cursor2":I
    move v8, p1

    .line 627
    .local v8, "dest":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .local v7, "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 628
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_26

    .line 629
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 717
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_25
    return-void

    .line 632
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_26
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_39

    .line 633
    move/from16 v0, p4

    invoke-static {v1, v7, v1, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    add-int v12, v9, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 635
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_25

    .line 638
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_39
    iget v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .local v10, "minGallop":I
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 641
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :goto_3d
    const/4 v2, 0x0

    .line 642
    .local v2, "count1":I
    const/4 v3, 0x0

    .line 650
    .local v3, "count2":I
    :cond_3f
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    aget-object v13, v11, v4

    invoke-interface {v12, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_73

    .line 651
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 652
    add-int/lit8 v3, v3, 0x1

    .line 653
    const/4 v2, 0x0

    .line 654
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_115

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 703
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    :cond_5c
    :goto_5c
    const/4 v12, 0x1

    if-ge v10, v12, :cond_60

    const/4 v10, 0x1

    .end local v10    # "minGallop":I
    :cond_60
    iput v10, p0, Ljava/util/ComparableTimSort;->minGallop:I

    .line 705
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_fd

    .line 707
    move/from16 v0, p4

    invoke-static {v1, v6, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    add-int v12, v8, p4

    aget-object v13, v11, v4

    aput-object v13, v1, v12

    goto :goto_25

    .line 657
    .restart local v10    # "minGallop":I
    :cond_73
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .local v5, "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 658
    add-int/lit8 v2, v2, 0x1

    .line 659
    const/4 v3, 0x0

    .line 660
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_88

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 661
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto :goto_5c

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_88
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 663
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    :goto_8a
    or-int v12, v2, v3

    if-lt v12, v10, :cond_3f

    .line 672
    :goto_8e
    aget-object v12, v1, v6

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-static {v12, v11, v4, v0, v13}, Ljava/util/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 673
    if-eqz v2, :cond_a7

    .line 674
    invoke-static {v11, v4, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/2addr v8, v2

    .line 676
    add-int/2addr v4, v2

    .line 677
    sub-int p2, p2, v2

    .line 678
    const/4 v12, 0x1

    move/from16 v0, p2

    if-le v0, v12, :cond_5c

    .line 681
    :cond_a7
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cursor2":I
    .restart local v7    # "cursor2":I
    aget-object v12, v1, v6

    aput-object v12, v1, v8

    .line 682
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_b6

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .line 683
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_5c

    .line 685
    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_b6
    aget-object v12, v11, v4

    check-cast v12, Ljava/lang/Comparable;

    const/4 v13, 0x0

    move/from16 v0, p4

    invoke-static {v12, v1, v7, v0, v13}, Ljava/util/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v3

    .line 686
    if-eqz v3, :cond_112

    .line 687
    invoke-static {v1, v7, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    add-int v8, v9, v3

    .line 689
    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    add-int v6, v7, v3

    .line 690
    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    sub-int p4, p4, v3

    .line 691
    if-eqz p4, :cond_5c

    .line 694
    :goto_ce
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "cursor1":I
    .restart local v5    # "cursor1":I
    aget-object v12, v11, v4

    aput-object v12, v1, v8

    .line 695
    add-int/lit8 p2, p2, -0x1

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_e1

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 696
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_5c

    .line 697
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_e1
    add-int/lit8 v10, v10, -0x1

    .line 698
    const/4 v12, 0x7

    if-lt v2, v12, :cond_f8

    const/4 v12, 0x1

    move v13, v12

    :goto_e8
    const/4 v12, 0x7

    if-lt v3, v12, :cond_fb

    const/4 v12, 0x1

    :goto_ec
    or-int/2addr v12, v13

    if-nez v12, :cond_10e

    .line 699
    if-gez v10, :cond_f2

    .line 700
    const/4 v10, 0x0

    .line 701
    :cond_f2
    add-int/lit8 v10, v10, 0x2

    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .line 702
    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_3d

    .line 698
    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    :cond_f8
    const/4 v12, 0x0

    move v13, v12

    goto :goto_e8

    :cond_fb
    const/4 v12, 0x0

    goto :goto_ec

    .line 709
    .end local v5    # "cursor1":I
    .end local v9    # "dest":I
    .end local v10    # "minGallop":I
    .restart local v4    # "cursor1":I
    .restart local v8    # "dest":I
    :cond_fd
    if-nez p2, :cond_107

    .line 710
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Comparison method violates its general contract!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 715
    :cond_107
    move/from16 v0, p2

    invoke-static {v11, v4, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_25

    .end local v4    # "cursor1":I
    .end local v8    # "dest":I
    .restart local v5    # "cursor1":I
    .restart local v9    # "dest":I
    .restart local v10    # "minGallop":I
    :cond_10e
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v4, v5

    .end local v5    # "cursor1":I
    .restart local v4    # "cursor1":I
    goto/16 :goto_8e

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_112
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto :goto_ce

    .end local v6    # "cursor2":I
    .end local v8    # "dest":I
    .restart local v7    # "cursor2":I
    .restart local v9    # "dest":I
    :cond_115
    move v8, v9

    .end local v9    # "dest":I
    .restart local v8    # "dest":I
    move v6, v7

    .end local v7    # "cursor2":I
    .restart local v6    # "cursor2":I
    goto/16 :goto_8a
.end method

.method private static minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "r":I
    :goto_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    .line 335
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 336
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 338
    :cond_b
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runBase:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 349
    iget-object v0, p0, Ljava/util/ComparableTimSort;->runLen:[I

    iget v1, p0, Ljava/util/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 350
    iget v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ComparableTimSort;->stackSize:I

    .line 351
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 306
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 307
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 308
    aget-object v2, p0, v1

    .line 309
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 310
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .line 311
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_4

    .line 312
    .end local v2    # "t":Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .registers 3
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 142
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 143
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .registers 11
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 146
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 147
    sub-int v3, p2, p1

    .line 148
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-ge v3, v6, :cond_a

    .line 189
    :goto_9
    return-void

    .line 152
    :cond_a
    const/16 v6, 0x20

    if-ge v3, v6, :cond_18

    .line 153
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 154
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_9

    .line 163
    .end local v1    # "initRunLen":I
    :cond_18
    new-instance v5, Ljava/util/ComparableTimSort;

    invoke-direct {v5, p0}, Ljava/util/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 164
    .local v5, "ts":Ljava/util/ComparableTimSort;
    invoke-static {v3}, Ljava/util/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 167
    .local v2, "minRun":I
    :cond_21
    invoke-static {p0, p1, p2}, Ljava/util/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v4

    .line 170
    .local v4, "runLen":I
    if-ge v4, v2, :cond_32

    .line 171
    if-gt v3, v2, :cond_40

    move v0, v3

    .line 172
    .local v0, "force":I
    :goto_2a
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7}, Ljava/util/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 173
    move v4, v0

    .line 177
    .end local v0    # "force":I
    :cond_32
    invoke-direct {v5, p1, v4}, Ljava/util/ComparableTimSort;->pushRun(II)V

    .line 178
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeCollapse()V

    .line 181
    add-int/2addr p1, v4

    .line 182
    sub-int/2addr v3, v4

    .line 183
    if-nez v3, :cond_21

    .line 187
    invoke-direct {v5}, Ljava/util/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_9

    :cond_40
    move v0, v2

    .line 171
    goto :goto_2a
.end method
