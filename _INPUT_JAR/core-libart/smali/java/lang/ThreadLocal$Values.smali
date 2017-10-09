.class Ljava/lang/ThreadLocal$Values;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field private static final TOMBSTONE:Ljava/lang/Object;


# instance fields
.field private clean:I

.field private mask:I

.field private maximumLoad:I

.field private size:I

.field private table:[Ljava/lang/Object;

.field private tombstones:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    .line 182
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 183
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 184
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal$Values;)V
    .registers 3
    .param p1, "fromParent"    # Ljava/lang/ThreadLocal$Values;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iget-object v0, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 191
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->mask:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    .line 192
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->size:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 193
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 194
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    .line 195
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->clean:I

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 196
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$Values;->inheritValues(Ljava/lang/ThreadLocal$Values;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/ThreadLocal$Values;

    .prologue
    .line 144
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/ThreadLocal$Values;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/ThreadLocal$Values;

    .prologue
    .line 144
    iget v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    return v0
.end method

.method private cleanUp()V
    .registers 8

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->rehash()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 292
    :cond_6
    :goto_6
    return-void

    .line 260
    :cond_7
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-eqz v5, :cond_6

    .line 267
    iget v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 268
    .local v1, "index":I
    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 269
    .local v4, "table":[Ljava/lang/Object;
    array-length v0, v4

    .local v0, "counter":I
    :goto_10
    if-lez v0, :cond_40

    .line 271
    aget-object v2, v4, v1

    .line 273
    .local v2, "k":Ljava/lang/Object;
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-eq v2, v5, :cond_1a

    if-nez v2, :cond_21

    .line 269
    :cond_1a
    :goto_1a
    shr-int/lit8 v0, v0, 0x1

    .line 270
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_10

    :cond_21
    move-object v3, v2

    .line 279
    check-cast v3, Ljava/lang/ref/Reference;

    .line 281
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 283
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 284
    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 285
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 286
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1a

    .line 291
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_40
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    goto :goto_6
.end method

.method private inheritValues(Ljava/lang/ThreadLocal$Values;)V
    .registers 11
    .param p1, "fromParent"    # Ljava/lang/ThreadLocal$Values;

    .prologue
    const/4 v8, 0x0

    .line 205
    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 206
    .local v4, "table":[Ljava/lang/Object;
    array-length v5, v4

    add-int/lit8 v0, v5, -0x2

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_5a

    .line 207
    aget-object v1, v4, v0

    .line 209
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_10

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v1, v5, :cond_13

    .line 206
    :cond_10
    :goto_10
    add-int/lit8 v0, v0, -0x2

    goto :goto_6

    :cond_13
    move-object v3, v1

    .line 215
    check-cast v3, Ljava/lang/ref/Reference;

    .line 218
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/InheritableThreadLocal;

    .line 219
    .local v2, "key":Ljava/lang/InheritableThreadLocal;
    if-eqz v2, :cond_2d

    .line 223
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/InheritableThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_10

    .line 226
    :cond_2d
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 227
    add-int/lit8 v5, v0, 0x1

    aput-object v8, v4, v5

    .line 228
    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v6, v5, v0

    .line 229
    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    aput-object v8, v5, v6

    .line 231
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 232
    iget v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 234
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 235
    iget v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_10

    .line 238
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/InheritableThreadLocal;
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    :cond_5a
    return-void
.end method

.method private initializeTable(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 244
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    .line 247
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    .line 248
    return-void
.end method

.method private next(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 531
    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private rehash()Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    iget v9, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    iget v10, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/2addr v9, v10

    iget v10, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    if-ge v9, v10, :cond_c

    .line 357
    :goto_b
    return v7

    .line 306
    :cond_c
    iget-object v9, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    array-length v9, v9

    shr-int/lit8 v0, v9, 0x1

    .line 314
    .local v0, "capacity":I
    move v4, v0

    .line 316
    .local v4, "newCapacity":I
    iget v9, p0, Ljava/lang/ThreadLocal$Values;->size:I

    shr-int/lit8 v10, v0, 0x1

    if-le v9, v10, :cond_1a

    .line 319
    mul-int/lit8 v4, v0, 0x2

    .line 322
    :cond_1a
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 325
    .local v5, "oldTable":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    .line 328
    iput v7, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 331
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    if-nez v7, :cond_27

    move v7, v8

    .line 332
    goto :goto_b

    .line 336
    :cond_27
    array-length v7, v5

    add-int/lit8 v1, v7, -0x2

    .local v1, "i":I
    :goto_2a
    if-ltz v1, :cond_51

    .line 337
    aget-object v2, v5, v1

    .line 338
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_34

    sget-object v7, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v7, :cond_37

    .line 336
    :cond_34
    :goto_34
    add-int/lit8 v1, v1, -0x2

    goto :goto_2a

    :cond_37
    move-object v6, v2

    .line 345
    check-cast v6, Ljava/lang/ref/Reference;

    .line 347
    .local v6, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadLocal;

    .line 348
    .local v3, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-eqz v3, :cond_4a

    .line 350
    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p0, v3, v7}, Ljava/lang/ThreadLocal$Values;->add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_34

    .line 353
    :cond_4a
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_34

    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v6    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_51
    move v7, v8

    .line 357
    goto :goto_b
.end method


# virtual methods
.method add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    # getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    .line 367
    .local v0, "index":I
    :goto_8
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 368
    .local v1, "k":Ljava/lang/Object;
    if-nez v1, :cond_1d

    .line 369
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    aput-object v3, v2, v0

    .line 370
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    .line 371
    return-void

    .line 366
    :cond_1d
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_8
.end method

.method getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v7, -0x1

    .line 425
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    .line 426
    .local v3, "table":[Ljava/lang/Object;
    # getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v5

    iget v6, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v5, v6

    .line 429
    .local v1, "index":I
    aget-object v5, v3, v1

    if-nez v5, :cond_33

    .line 430
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    .line 433
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_2f

    aget-object v5, v3, v1

    if-nez v5, :cond_2f

    .line 434
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    .line 435
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 436
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 438
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    .line 491
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2e
    return-object v4

    .line 443
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2f
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_2e

    .line 449
    .end local v4    # "value":Ljava/lang/Object;
    :cond_33
    const/4 v0, -0x1

    .line 452
    .local v0, "firstTombstone":I
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    .line 453
    :goto_38
    aget-object v2, v3, v1

    .line 454
    .local v2, "reference":Ljava/lang/Object;
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    if-ne v2, v5, :cond_45

    .line 455
    add-int/lit8 v5, v1, 0x1

    aget-object v4, v3, v5

    goto :goto_2e

    .line 459
    :cond_45
    if-nez v2, :cond_8a

    .line 460
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v4

    .line 463
    .restart local v4    # "value":Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    if-ne v5, v3, :cond_86

    .line 466
    if-le v0, v7, :cond_6e

    aget-object v5, v3, v0

    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v5, v6, :cond_6e

    .line 468
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v0

    .line 469
    add-int/lit8 v5, v0, 0x1

    aput-object v4, v3, v5

    .line 470
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 471
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_2e

    .line 479
    :cond_6e
    aget-object v5, v3, v1

    if-nez v5, :cond_86

    .line 480
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v5

    aput-object v5, v3, v1

    .line 481
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v5

    .line 482
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 484
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    goto :goto_2e

    .line 490
    :cond_86
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    goto :goto_2e

    .line 494
    .end local v4    # "value":Ljava/lang/Object;
    :cond_8a
    if-ne v0, v7, :cond_91

    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v5, :cond_91

    .line 496
    move v0, v1

    .line 452
    :cond_91
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_38
.end method

.method put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 9
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v5, -0x1

    .line 381
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    .line 385
    const/4 v0, -0x1

    .line 387
    .local v0, "firstTombstone":I
    # getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v3

    iget v4, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v1, v3, v4

    .line 388
    .local v1, "index":I
    :goto_d
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 390
    .local v2, "k":Ljava/lang/Object;
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v3

    if-ne v2, v3, :cond_1e

    .line 392
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    .line 410
    :goto_1d
    return-void

    .line 396
    :cond_1e
    if-nez v2, :cond_52

    .line 397
    if-ne v0, v5, :cond_37

    .line 399
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v1

    .line 400
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object p2, v3, v4

    .line 401
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1d

    .line 406
    :cond_37
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v4

    aput-object v4, v3, v0

    .line 407
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aput-object p2, v3, v4

    .line 408
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 409
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    goto :goto_1d

    .line 414
    :cond_52
    if-ne v0, v5, :cond_59

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    if-ne v2, v3, :cond_59

    .line 415
    move v0, v1

    .line 387
    :cond_59
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v1

    goto :goto_d
.end method

.method remove(Ljava/lang/ThreadLocal;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    .line 507
    # getter for: Ljava/lang/ThreadLocal;->hash:I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$200(Ljava/lang/ThreadLocal;)I

    move-result v2

    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    and-int v0, v2, v3

    .line 508
    .local v0, "index":I
    :goto_b
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 510
    .local v1, "reference":Ljava/lang/Object;
    # getter for: Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    .line 512
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 513
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 514
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    .line 515
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    .line 521
    :cond_2e
    return-void

    .line 519
    :cond_2f
    if-eqz v1, :cond_2e

    .line 507
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    move-result v0

    goto :goto_b
.end method
