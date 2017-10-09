.class Ljava/util/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v3, 0x7

    iput v3, p0, Ljava/util/TimSort;->minGallop:I

    .line 117
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/TimSort;->stackSize:I

    .line 135
    iput-object p1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 139
    array-length v0, p1

    .line 141
    .local v0, "len":I
    const/16 v3, 0x200

    if-ge v0, v3, :cond_28

    ushr-int/lit8 v3, v0, 0x1

    :goto_14
    new-array v1, v3, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 143
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 155
    const/16 v3, 0x78

    if-ge v0, v3, :cond_2b

    const/4 v2, 0x5

    .line 158
    .local v2, "stackLen":I
    :goto_1f
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runBase:[I

    .line 159
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/TimSort;->runLen:[I

    .line 160
    return-void

    .line 141
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "stackLen":I
    :cond_28
    const/16 v3, 0x100

    goto :goto_14

    .line 155
    .restart local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_2b
    const/16 v3, 0x606

    if-ge v0, v3, :cond_32

    const/16 v2, 0xa

    goto :goto_1f

    :cond_32
    const v3, 0x1d16f

    if-ge v0, v3, :cond_3a

    const/16 v2, 0x13

    goto :goto_1f

    :cond_3a
    const/16 v2, 0x28

    goto :goto_1f
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .registers 12
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_4

    .line 246
    add-int/lit8 p3, p3, 0x1

    .line 247
    :cond_4
    :goto_4
    if-ge p3, p2, :cond_3b

    .line 248
    aget-object v3, p0, p3

    .line 251
    .local v3, "pivot":Ljava/lang/Object;, "TT;"
    move v0, p1

    .line 252
    .local v0, "left":I
    move v4, p3

    .line 259
    .local v4, "right":I
    :goto_a
    if-ge v0, v4, :cond_1d

    .line 260
    add-int v5, v0, v4

    ushr-int/lit8 v1, v5, 0x1

    .line 261
    .local v1, "mid":I
    aget-object v5, p0, v1

    invoke-interface {p4, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1a

    .line 262
    move v4, v1

    goto :goto_a

    .line 264
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    goto :goto_a

    .line 275
    .end local v1    # "mid":I
    :cond_1d
    sub-int v2, p3, v0

    .line 277
    .local v2, "n":I
    packed-switch v2, :pswitch_data_3c

    .line 281
    add-int/lit8 v5, v0, 0x1

    invoke-static {p0, v0, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_27
    aput-object v3, p0, v0

    .line 247
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 278
    :pswitch_2c
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    aput-object v6, p0, v5

    .line 279
    :pswitch_34
    add-int/lit8 v5, v0, 0x1

    aget-object v6, p0, v0

    aput-object v6, p0, v5

    goto :goto_27

    .line 285
    .end local v0    # "left":I
    .end local v2    # "n":I
    .end local v3    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v4    # "right":I
    :cond_3b
    return-void

    .line 277
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 8
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    .line 316
    .local v0, "runHi":I
    if-ne v0, p2, :cond_6

    .line 317
    const/4 v2, 0x1

    .line 329
    :goto_5
    return v2

    .line 320
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v2, p0, v0

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3b

    move v0, v1

    .line 321
    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    :goto_13
    if-ge v0, p2, :cond_24

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_24

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 323
    :cond_24
    invoke-static {p0, p1, v0}, Ljava/util/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 329
    :cond_27
    sub-int v2, v0, p1

    goto :goto_5

    .line 325
    :goto_2a
    if-ge v0, p2, :cond_27

    aget-object v2, p0, v0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_27

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .end local v0    # "runHi":I
    .restart local v1    # "runHi":I
    :cond_3b
    move v0, v1

    .end local v1    # "runHi":I
    .restart local v0    # "runHi":I
    goto :goto_2a
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .registers 5
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v2, p1, :cond_20

    .line 884
    move v1, p1

    .line 885
    .local v1, "newSize":I
    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v1, v2

    .line 886
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr v1, v2

    .line 887
    shr-int/lit8 v2, v1, 0x4

    or-int/2addr v1, v2

    .line 888
    shr-int/lit8 v2, v1, 0x8

    or-int/2addr v1, v2

    .line 889
    shr-int/lit8 v2, v1, 0x10

    or-int/2addr v1, v2

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 892
    if-gez v1, :cond_23

    .line 893
    move v1, p1

    .line 898
    :goto_1a
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 899
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v0, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    .line 901
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newSize":I
    :cond_20
    iget-object v2, p0, Ljava/util/TimSort;->tmp:[Ljava/lang/Object;

    return-object v2

    .line 895
    .restart local v1    # "newSize":I
    :cond_23
    iget-object v2, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    array-length v2, v2

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 12
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 506
    .local v0, "lastOfs":I
    const/4 v3, 0x1

    .line 507
    .local v3, "ofs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_40

    .line 509
    sub-int v2, p3, p4

    .line 510
    .local v2, "maxOfs":I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_24

    .line 511
    move v0, v3

    .line 512
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 513
    if-gtz v3, :cond_e

    .line 514
    move v3, v2

    goto :goto_e

    .line 516
    :cond_24
    if-le v3, v2, :cond_27

    .line 517
    move v3, v2

    .line 520
    :cond_27
    add-int/2addr v0, p4

    .line 521
    add-int/2addr v3, p4

    .line 546
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 547
    :goto_2b
    if-ge v0, v3, :cond_63

    .line 548
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 550
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_61

    .line 551
    add-int/lit8 v0, v1, 0x1

    goto :goto_2b

    .line 524
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_40
    add-int/lit8 v2, p4, 0x1

    .line 525
    .restart local v2    # "maxOfs":I
    :cond_42
    :goto_42
    if-ge v3, v2, :cond_58

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_58

    .line 526
    move v0, v3

    .line 527
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 528
    if-gtz v3, :cond_42

    .line 529
    move v3, v2

    goto :goto_42

    .line 531
    :cond_58
    if-le v3, v2, :cond_5b

    .line 532
    move v3, v2

    .line 535
    :cond_5b
    move v4, v0

    .line 536
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 537
    sub-int v3, p4, v4

    goto :goto_29

    .line 553
    .end local v4    # "tmp":I
    .restart local v1    # "m":I
    :cond_61
    move v3, v1

    goto :goto_2b

    .line 556
    .end local v1    # "m":I
    :cond_63
    return v3
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 12
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v3, 0x1

    .line 577
    .local v3, "ofs":I
    const/4 v0, 0x0

    .line 578
    .local v0, "lastOfs":I
    add-int v5, p2, p4

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_42

    .line 580
    add-int/lit8 v2, p4, 0x1

    .line 581
    .local v2, "maxOfs":I
    :cond_e
    :goto_e
    if-ge v3, v2, :cond_24

    add-int v5, p2, p4

    sub-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_24

    .line 582
    move v0, v3

    .line 583
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 584
    if-gtz v3, :cond_e

    .line 585
    move v3, v2

    goto :goto_e

    .line 587
    :cond_24
    if-le v3, v2, :cond_27

    .line 588
    move v3, v2

    .line 591
    :cond_27
    move v4, v0

    .line 592
    .local v4, "tmp":I
    sub-int v0, p4, v3

    .line 593
    sub-int v3, p4, v4

    .line 617
    .end local v4    # "tmp":I
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    .line 618
    :goto_2e
    if-ge v0, v3, :cond_63

    .line 619
    sub-int v5, v3, v0

    ushr-int/lit8 v5, v5, 0x1

    add-int v1, v0, v5

    .line 621
    .local v1, "m":I
    add-int v5, p2, v1

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_60

    .line 622
    move v3, v1

    goto :goto_2e

    .line 596
    .end local v1    # "m":I
    .end local v2    # "maxOfs":I
    :cond_42
    sub-int v2, p3, p4

    .line 597
    .restart local v2    # "maxOfs":I
    :cond_44
    :goto_44
    if-ge v3, v2, :cond_5a

    add-int v5, p2, p4

    add-int/2addr v5, v3

    aget-object v5, p1, v5

    invoke-interface {p5, p0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_5a

    .line 598
    move v0, v3

    .line 599
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 600
    if-gtz v3, :cond_44

    .line 601
    move v3, v2

    goto :goto_44

    .line 603
    :cond_5a
    if-le v3, v2, :cond_5d

    .line 604
    move v3, v2

    .line 607
    :cond_5d
    add-int/2addr v0, p4

    .line 608
    add-int/2addr v3, p4

    goto :goto_2c

    .line 624
    .restart local v1    # "m":I
    :cond_60
    add-int/lit8 v0, v1, 0x1

    goto :goto_2e

    .line 627
    .end local v1    # "m":I
    :cond_63
    return v3
.end method

.method private mergeAt(I)V
    .registers 13
    .param p1, "i"    # I

    .prologue
    .line 438
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 439
    .local v2, "base1":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 440
    .local v3, "len1":I
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    .line 441
    .local v6, "base2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 450
    .local v7, "len2":I
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    .line 451
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_38

    .line 452
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 453
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 455
    :cond_38
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 461
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v10

    .line 463
    .local v10, "k":I
    add-int/2addr v2, v10

    .line 464
    sub-int/2addr v3, v10

    .line 465
    if-nez v3, :cond_50

    .line 482
    :cond_4f
    :goto_4f
    return-void

    .line 472
    :cond_50
    iget-object v0, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v2, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, v0, v1

    iget-object v5, p0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v8, v7, -0x1

    iget-object v9, p0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v4 .. v9}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v7

    .line 474
    if-eqz v7, :cond_4f

    .line 478
    if-gt v3, v7, :cond_6a

    .line 479
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeLo(IIII)V

    goto :goto_4f

    .line 481
    :cond_6a
    invoke-direct {p0, v2, v3, v6, v7}, Ljava/util/TimSort;->mergeHi(IIII)V

    goto :goto_4f
.end method

.method private mergeCollapse()V
    .registers 6

    .prologue
    .line 399
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    .line 400
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 401
    .local v0, "n":I
    if-lez v0, :cond_32

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_32

    .line 402
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2e

    .line 403
    add-int/lit8 v0, v0, -0x1

    .line 404
    :cond_2e
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 405
    :cond_32
    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_42

    .line 406
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 411
    .end local v0    # "n":I
    :cond_42
    return-void
.end method

.method private mergeForceCollapse()V
    .registers 5

    .prologue
    .line 418
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    :goto_0
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 419
    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v1, -0x2

    .line 420
    .local v0, "n":I
    if-lez v0, :cond_1b

    iget-object v1, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1b

    .line 421
    add-int/lit8 v0, v0, -0x1

    .line 422
    :cond_1b
    invoke-direct {p0, v0}, Ljava/util/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 424
    .end local v0    # "n":I
    :cond_1f
    return-void
.end method

.method private mergeHi(IIII)V
    .registers 28
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 767
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 768
    .local v3, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 769
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    add-int v2, p1, p2

    add-int/lit8 v16, v2, -0x1

    .line 772
    .local v16, "cursor1":I
    add-int/lit8 v18, p4, -0x1

    .line 773
    .local v18, "cursor2":I
    add-int v2, p3, p4

    add-int/lit8 v20, v2, -0x1

    .line 776
    .local v20, "dest":I
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .local v21, "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 777
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_39

    .line 778
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v21, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 871
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_38
    return-void

    .line 781
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_39
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_50

    .line 782
    sub-int v20, v21, p2

    .line 783
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v16, v17, p2

    .line 784
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_38

    .line 789
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_50
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 790
    .local v7, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v22, v0

    .local v22, "minGallop":I
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 793
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :goto_5e
    const/4 v14, 0x0

    .line 794
    .local v14, "count1":I
    const/4 v15, 0x0

    .line 802
    .local v15, "count2":I
    :cond_60
    aget-object v2, v9, v18

    aget-object v4, v3, v16

    invoke-interface {v7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_a1

    .line 803
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 804
    add-int/lit8 v14, v14, 0x1

    .line 805
    const/4 v15, 0x0

    .line 806
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_169

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 855
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    :cond_7d
    :goto_7d
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ge v0, v2, :cond_84

    const/16 v22, 0x1

    .end local v22    # "minGallop":I
    :cond_84
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 857
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_148

    .line 859
    sub-int v20, v20, p2

    .line 860
    sub-int v16, v16, p2

    .line 861
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    move/from16 v0, p2

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    goto :goto_38

    .line 809
    .restart local v22    # "minGallop":I
    :cond_a1
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .local v19, "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 810
    add-int/lit8 v15, v15, 0x1

    .line 811
    const/4 v14, 0x0

    .line 812
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_b8

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 813
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_7d

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_b8
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 815
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_bc
    or-int v2, v14, v15

    move/from16 v0, v22

    if-lt v2, v0, :cond_60

    .line 824
    :goto_c2
    aget-object v2, v9, v18

    add-int/lit8 v6, p2, -0x1

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v7}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v14, p2, v2

    .line 825
    if-eqz v14, :cond_e1

    .line 826
    sub-int v20, v20, v14

    .line 827
    sub-int v16, v16, v14

    .line 828
    sub-int p2, p2, v14

    .line 829
    add-int/lit8 v2, v16, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    if-eqz p2, :cond_7d

    .line 833
    :cond_e1
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "cursor2":I
    .restart local v19    # "cursor2":I
    aget-object v2, v9, v18

    aput-object v2, v3, v20

    .line 834
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_f5

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .line 835
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_7d

    .line 837
    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_f5
    aget-object v8, v3, v16

    const/4 v10, 0x0

    add-int/lit8 v12, p4, -0x1

    move/from16 v11, p4

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v15, p4, v2

    .line 838
    if-eqz v15, :cond_164

    .line 839
    sub-int v20, v21, v15

    .line 840
    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    sub-int v18, v19, v15

    .line 841
    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    sub-int p4, p4, v15

    .line 842
    add-int/lit8 v2, v18, 0x1

    add-int/lit8 v4, v20, 0x1

    invoke-static {v9, v2, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    const/4 v2, 0x1

    move/from16 v0, p4

    if-le v0, v2, :cond_7d

    .line 846
    :goto_117
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "dest":I
    .restart local v21    # "dest":I
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v2, v3, v16

    aput-object v2, v3, v20

    .line 847
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_129

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 848
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_7d

    .line 849
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_129
    add-int/lit8 v22, v22, -0x1

    .line 850
    const/4 v2, 0x7

    if-lt v14, v2, :cond_143

    const/4 v2, 0x1

    move v4, v2

    :goto_130
    const/4 v2, 0x7

    if-lt v15, v2, :cond_146

    const/4 v2, 0x1

    :goto_134
    or-int/2addr v2, v4

    if-nez v2, :cond_15e

    .line 851
    if-gez v22, :cond_13b

    .line 852
    const/16 v22, 0x0

    .line 853
    :cond_13b
    add-int/lit8 v22, v22, 0x2

    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .line 854
    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_5e

    .line 850
    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_143
    const/4 v2, 0x0

    move v4, v2

    goto :goto_130

    :cond_146
    const/4 v2, 0x0

    goto :goto_134

    .line 863
    .end local v17    # "cursor1":I
    .end local v21    # "dest":I
    .end local v22    # "minGallop":I
    .restart local v16    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_148
    if-nez p4, :cond_152

    .line 864
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Comparison method violates its general contract!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    :cond_152
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int v4, v20, v4

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_38

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    .restart local v22    # "minGallop":I
    :cond_15e
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_c2

    .end local v18    # "cursor2":I
    .end local v20    # "dest":I
    .restart local v19    # "cursor2":I
    .restart local v21    # "dest":I
    :cond_164
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v18, v19

    .end local v19    # "cursor2":I
    .restart local v18    # "cursor2":I
    goto :goto_117

    .end local v16    # "cursor1":I
    .end local v20    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v21    # "dest":I
    :cond_169
    move/from16 v20, v21

    .end local v21    # "dest":I
    .restart local v20    # "dest":I
    move/from16 v16, v17

    .end local v17    # "cursor1":I
    .restart local v16    # "cursor1":I
    goto/16 :goto_bc
.end method

.method private mergeLo(IIII)V
    .registers 27
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .prologue
    .line 650
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/TimSort;->a:[Ljava/lang/Object;

    .line 651
    .local v10, "a":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v4

    .line 652
    .local v4, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    const/4 v5, 0x0

    .line 655
    .local v5, "cursor1":I
    move/from16 v11, p3

    .line 656
    .local v11, "cursor2":I
    move/from16 v19, p1

    .line 659
    .local v19, "dest":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .local v20, "dest":I
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "cursor2":I
    .local v18, "cursor2":I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 660
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_31

    .line 661
    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 750
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_30
    return-void

    .line 664
    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_31
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_4a

    .line 665
    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, p4

    invoke-static {v10, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    add-int v3, v20, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 667
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto :goto_30

    .line 670
    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_4a
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/TimSort;->c:Ljava/util/Comparator;

    .line 671
    .local v8, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/TimSort;->minGallop:I

    move/from16 v21, v0

    .local v21, "minGallop":I
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 674
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :goto_58
    const/4 v15, 0x0

    .line 675
    .local v15, "count1":I
    const/16 v16, 0x0

    .line 683
    .local v16, "count2":I
    :cond_5b
    aget-object v3, v10, v11

    aget-object v6, v4, v5

    invoke-interface {v8, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_98

    .line 684
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    aget-object v3, v10, v11

    aput-object v3, v10, v19

    .line 685
    add-int/lit8 v16, v16, 0x1

    .line 686
    const/4 v15, 0x0

    .line 687
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_157

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .line 736
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    :cond_78
    :goto_78
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_7f

    const/16 v21, 0x1

    .end local v21    # "minGallop":I
    :cond_7f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/TimSort;->minGallop:I

    .line 738
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_139

    .line 740
    move/from16 v0, v19

    move/from16 v1, p4

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    add-int v3, v19, p4

    aget-object v6, v4, v5

    aput-object v6, v10, v3

    goto :goto_30

    .line 690
    .restart local v21    # "minGallop":I
    :cond_98
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "cursor1":I
    .local v17, "cursor1":I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 691
    add-int/lit8 v15, v15, 0x1

    .line 692
    const/16 v16, 0x0

    .line 693
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_b0

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 694
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto :goto_78

    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_b0
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 696
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    :goto_b4
    or-int v3, v15, v16

    move/from16 v0, v21

    if-lt v3, v0, :cond_5b

    move/from16 v18, v11

    .line 705
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :goto_bc
    aget-object v3, v10, v18

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-static/range {v3 .. v8}, Ljava/util/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v15

    .line 706
    if-eqz v15, :cond_d9

    .line 707
    move/from16 v0, v19

    invoke-static {v4, v5, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    add-int v19, v19, v15

    .line 709
    add-int/2addr v5, v15

    .line 710
    sub-int p2, p2, v15

    .line 711
    const/4 v3, 0x1

    move/from16 v0, p2

    if-gt v0, v3, :cond_d9

    move/from16 v11, v18

    .line 712
    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto :goto_78

    .line 714
    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    :cond_d9
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v11, v18, 0x1

    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    aget-object v3, v10, v18

    aput-object v3, v10, v19

    .line 715
    add-int/lit8 p4, p4, -0x1

    if-nez p4, :cond_e8

    move/from16 v19, v20

    .line 716
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_78

    .line 718
    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    :cond_e8
    aget-object v9, v4, v5

    const/4 v13, 0x0

    move/from16 v12, p4

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Ljava/util/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    .line 719
    if-eqz v16, :cond_154

    .line 720
    move/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v10, v11, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    add-int v19, v20, v16

    .line 722
    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    add-int v11, v11, v16

    .line 723
    sub-int p4, p4, v16

    .line 724
    if-eqz p4, :cond_78

    .line 727
    :goto_103
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "dest":I
    .restart local v20    # "dest":I
    add-int/lit8 v17, v5, 0x1

    .end local v5    # "cursor1":I
    .restart local v17    # "cursor1":I
    aget-object v3, v4, v5

    aput-object v3, v10, v19

    .line 728
    add-int/lit8 p2, p2, -0x1

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_118

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 729
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_78

    .line 730
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_118
    add-int/lit8 v21, v21, -0x1

    .line 731
    const/4 v3, 0x7

    if-lt v15, v3, :cond_134

    const/4 v3, 0x1

    move v6, v3

    :goto_11f
    const/4 v3, 0x7

    move/from16 v0, v16

    if-lt v0, v3, :cond_137

    const/4 v3, 0x1

    :goto_125
    or-int/2addr v3, v6

    if-nez v3, :cond_14c

    .line 732
    if-gez v21, :cond_12c

    .line 733
    const/16 v21, 0x0

    .line 734
    :cond_12c
    add-int/lit8 v21, v21, 0x2

    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v5, v17

    .line 735
    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_58

    .line 731
    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    :cond_134
    const/4 v3, 0x0

    move v6, v3

    goto :goto_11f

    :cond_137
    const/4 v3, 0x0

    goto :goto_125

    .line 742
    .end local v17    # "cursor1":I
    .end local v20    # "dest":I
    .end local v21    # "minGallop":I
    .restart local v5    # "cursor1":I
    .restart local v19    # "dest":I
    :cond_139
    if-nez p2, :cond_143

    .line 743
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Comparison method violates its general contract!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 748
    :cond_143
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v4, v5, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_30

    .end local v5    # "cursor1":I
    .end local v19    # "dest":I
    .restart local v17    # "cursor1":I
    .restart local v20    # "dest":I
    .restart local v21    # "minGallop":I
    :cond_14c
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v18, v11

    .end local v11    # "cursor2":I
    .restart local v18    # "cursor2":I
    move/from16 v5, v17

    .end local v17    # "cursor1":I
    .restart local v5    # "cursor1":I
    goto/16 :goto_bc

    .end local v18    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v11    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_154
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    goto :goto_103

    .end local v11    # "cursor2":I
    .end local v19    # "dest":I
    .restart local v18    # "cursor2":I
    .restart local v20    # "dest":I
    :cond_157
    move/from16 v19, v20

    .end local v20    # "dest":I
    .restart local v19    # "dest":I
    move/from16 v11, v18

    .end local v18    # "cursor2":I
    .restart local v11    # "cursor2":I
    goto/16 :goto_b4
.end method

.method private static minRunLength(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "r":I
    :goto_1
    const/16 v1, 0x20

    if-lt p0, v1, :cond_b

    .line 369
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 370
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 372
    :cond_b
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .registers 5
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .prologue
    .line 382
    .local p0, "this":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    iget-object v0, p0, Ljava/util/TimSort;->runBase:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 383
    iget-object v0, p0, Ljava/util/TimSort;->runLen:[I

    iget v1, p0, Ljava/util/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 384
    iget v0, p0, Ljava/util/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TimSort;->stackSize:I

    .line 385
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .prologue
    .line 340
    add-int/lit8 p2, p2, -0x1

    move v0, p2

    .end local p2    # "hi":I
    .local v0, "hi":I
    move v1, p1

    .line 341
    .end local p1    # "lo":I
    .local v1, "lo":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 342
    aget-object v2, p0, v1

    .line 343
    .local v2, "t":Ljava/lang/Object;
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "lo":I
    .restart local p1    # "lo":I
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 344
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "hi":I
    .restart local p2    # "hi":I
    aput-object v2, p0, v0

    move v0, p2

    .end local p2    # "hi":I
    .restart local v0    # "hi":I
    move v1, p1

    .line 345
    .end local p1    # "lo":I
    .restart local v1    # "lo":I
    goto :goto_4

    .line 346
    .end local v2    # "t":Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 12
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_6

    .line 174
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 221
    :cond_5
    :goto_5
    return-void

    .line 178
    :cond_6
    array-length v6, p0

    invoke-static {v6, p1, p2}, Ljava/util/Arrays;->checkStartAndEnd(III)V

    .line 179
    sub-int v3, p2, p1

    .line 180
    .local v3, "nRemaining":I
    const/4 v6, 0x2

    if-lt v3, v6, :cond_5

    .line 184
    const/16 v6, 0x20

    if-ge v3, v6, :cond_1d

    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 186
    .local v1, "initRunLen":I
    add-int v6, p1, v1

    invoke-static {p0, p1, p2, v6, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_5

    .line 195
    .end local v1    # "initRunLen":I
    :cond_1d
    new-instance v5, Ljava/util/TimSort;

    invoke-direct {v5, p0, p3}, Ljava/util/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 196
    .local v5, "ts":Ljava/util/TimSort;, "Ljava/util/TimSort<TT;>;"
    invoke-static {v3}, Ljava/util/TimSort;->minRunLength(I)I

    move-result v2

    .line 199
    .local v2, "minRun":I
    :cond_26
    invoke-static {p0, p1, p2, p3}, Ljava/util/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v4

    .line 202
    .local v4, "runLen":I
    if-ge v4, v2, :cond_37

    .line 203
    if-gt v3, v2, :cond_45

    move v0, v3

    .line 204
    .local v0, "force":I
    :goto_2f
    add-int v6, p1, v0

    add-int v7, p1, v4

    invoke-static {p0, p1, v6, v7, p3}, Ljava/util/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 205
    move v4, v0

    .line 209
    .end local v0    # "force":I
    :cond_37
    invoke-direct {v5, p1, v4}, Ljava/util/TimSort;->pushRun(II)V

    .line 210
    invoke-direct {v5}, Ljava/util/TimSort;->mergeCollapse()V

    .line 213
    add-int/2addr p1, v4

    .line 214
    sub-int/2addr v3, v4

    .line 215
    if-nez v3, :cond_26

    .line 219
    invoke-direct {v5}, Ljava/util/TimSort;->mergeForceCollapse()V

    goto :goto_5

    :cond_45
    move v0, v2

    .line 203
    goto :goto_2f
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 170
    return-void
.end method
