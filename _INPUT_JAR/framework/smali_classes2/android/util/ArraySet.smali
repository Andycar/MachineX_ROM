.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 226
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 228
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 230
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 235
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    if-nez p1, :cond_11

    .line 237
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 238
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 242
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 243
    return-void

    .line 240
    :cond_11
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    goto :goto_d
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .registers 2
    .param p1, "set"    # Landroid/util/ArraySet;

    .prologue
    .line 249
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 250
    if-eqz p1, :cond_8

    .line 251
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 253
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7
    .param p1, "size"    # I

    .prologue
    .line 156
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3d

    .line 157
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 158
    :try_start_7
    sget-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_30

    .line 159
    sget-object v0, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 160
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 161
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 162
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 163
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 164
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    .line 167
    monitor-exit v2

    .line 188
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_2f
    return-void

    .line 169
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3a

    .line 186
    :cond_31
    :goto_31
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 187
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_2f

    .line 169
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    .line 170
    :cond_3d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_31

    .line 171
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 172
    :try_start_43
    sget-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_6f

    .line 173
    sget-object v0, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 174
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 175
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 176
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 177
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 178
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    .line 181
    monitor-exit v2

    goto :goto_2f

    .line 183
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_43 .. :try_end_6e} :catchall_6c

    throw v1

    :cond_6f
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6c

    goto :goto_31
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 191
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 192
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 193
    :try_start_b
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_29

    .line 194
    const/4 v1, 0x0

    sget-object v3, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 195
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 196
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_19
    if-lt v0, v4, :cond_21

    .line 197
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 199
    :cond_21
    sput-object p1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 200
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    .line 204
    .end local v0    # "i":I
    :cond_29
    monitor-exit v2

    .line 220
    :cond_2a
    :goto_2a
    return-void

    .line 204
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2b

    throw v1

    .line 205
    :cond_2e
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 206
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 207
    :try_start_35
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    if-ge v1, v3, :cond_53

    .line 208
    const/4 v1, 0x0

    sget-object v3, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 209
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 210
    add-int/lit8 v0, p2, -0x1

    .restart local v0    # "i":I
    :goto_43
    if-lt v0, v4, :cond_4b

    .line 211
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 213
    :cond_4b
    sput-object p1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 214
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    .line 218
    .end local v0    # "i":I
    :cond_53
    monitor-exit v2

    goto :goto_2a

    :catchall_55
    move-exception v1

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_b

    .line 586
    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    .line 633
    :cond_b
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 80
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 83
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 84
    const/4 v3, -0x1

    .line 114
    :cond_5
    :goto_5
    return v3

    .line 87
    :cond_6
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 90
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 95
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 101
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1a
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_31

    .line 102
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v3, v1

    goto :goto_5

    .line 101
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 106
    :cond_31
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_4a

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_4a

    .line 107
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    move v3, v2

    goto :goto_5

    .line 106
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 114
    :cond_4a
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method private indexOfNull()I
    .registers 7

    .prologue
    .line 118
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 121
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 122
    const/4 v3, -0x1

    .line 152
    :cond_5
    :goto_5
    return v3

    .line 125
    :cond_6
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 128
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 133
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    .line 139
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_17
    if-ge v1, v0, :cond_2a

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2a

    .line 140
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_27

    move v3, v1

    goto :goto_5

    .line 139
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 144
    :cond_2a
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2c
    if-ltz v2, :cond_3f

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_3f

    .line 145
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_3c

    move v3, v2

    goto :goto_5

    .line 144
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 152
    :cond_3f
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 337
    if-nez p1, :cond_f

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v1

    .line 344
    .local v1, "index":I
    :goto_b
    if-ltz v1, :cond_18

    move v5, v6

    .line 378
    :goto_e
    return v5

    .line 341
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 342
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_b

    .line 348
    :cond_18
    xor-int/lit8 v1, v1, -0x1

    .line 349
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v8, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4a

    .line 350
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    if-lt v7, v2, :cond_76

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v5, v7

    .line 355
    .local v2, "n":I
    :cond_2d
    :goto_2d
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 356
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 357
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 359
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_45

    .line 361
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 362
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_45
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 368
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4a
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v5, :cond_66

    .line 371
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 372
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    :cond_66
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v0, v5, v1

    .line 376
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 377
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/util/ArraySet;->mSize:I

    .line 378
    const/4 v5, 0x1

    goto :goto_e

    .line 350
    :cond_76
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v7, v5, :cond_2d

    move v2, v5

    goto :goto_2d
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    const/4 v4, 0x0

    .line 386
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 387
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 388
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v2, :cond_20

    .line 389
    if-lez v0, :cond_1f

    .line 390
    iget-object v2, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 391
    iget-object v2, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 399
    :cond_1f
    return-void

    .line 395
    :cond_20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_1f

    .line 396
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 657
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 658
    goto :goto_f

    .line 659
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 261
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    .line 262
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 263
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 264
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 267
    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 294
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 644
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 645
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 646
    const/4 v1, 0x0

    .line 649
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public ensureCapacity(I)V
    .registers 7
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_24

    .line 275
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 276
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 277
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 278
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v2, :cond_1f

    .line 279
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 280
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :cond_1f
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 284
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 510
    if-ne p0, p1, :cond_5

    .line 533
    :cond_4
    :goto_4
    return v4

    .line 513
    :cond_5
    instance-of v6, p1, Ljava/util/Set;

    if-eqz v6, :cond_32

    move-object v3, p1

    .line 514
    check-cast v3, Ljava/util/Set;

    .line 515
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_18

    move v4, v5

    .line 516
    goto :goto_4

    .line 520
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    :try_start_19
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v6, :cond_4

    .line 521
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 522
    .local v2, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_24} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_24} :catch_2f

    move-result v6

    if-nez v6, :cond_29

    move v4, v5

    .line 523
    goto :goto_4

    .line 520
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 526
    .end local v2    # "mine":Ljava/lang/Object;, "TE;"
    :catch_2c
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v4, v5

    .line 527
    goto :goto_4

    .line 528
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v4, v5

    .line 529
    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_32
    move v4, v5

    .line 533
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 541
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 542
    .local v0, "hashes":[I
    const/4 v2, 0x0

    .line 543
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_6
    if-ge v1, v3, :cond_e

    .line 544
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 546
    :cond_e
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 304
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_7

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 321
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
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
    .line 638
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 409
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 410
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 411
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 412
    const/4 v1, 0x1

    .line 414
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 665
    .local v1, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 666
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 667
    goto :goto_5

    .line 668
    .end local v2    # "value":Ljava/lang/Object;
    :cond_15
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 423
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    .line 424
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_20

    .line 427
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 428
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    iput-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 429
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 430
    iput v7, p0, Landroid/util/ArraySet;->mSize:I

    .line 467
    :cond_1f
    :goto_1f
    return-object v3

    .line 432
    :cond_20
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_6c

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_6c

    .line 436
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-le v4, v0, :cond_3a

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 440
    .local v0, "n":I
    :cond_3a
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 441
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 442
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 444
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 445
    if-lez p1, :cond_53

    .line 447
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 448
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_53
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_1f

    .line 453
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 454
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    .line 457
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_6c
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 458
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_8e

    .line 461
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 462
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    :cond_8e
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_1f
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 674
    .local v1, "removed":Z
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_18

    .line 675
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 676
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 677
    const/4 v1, 0x1

    .line 674
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 680
    :cond_18
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 475
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    .line 480
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 481
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 487
    array-length v1, p1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_1a

    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 490
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 492
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1a
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    array-length v1, p1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-le v1, v2, :cond_2b

    .line 494
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 496
    :cond_2b
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 558
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 559
    const-string/jumbo v3, "{}"

    .line 576
    :goto_9
    return-object v3

    .line 562
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_36

    .line 565
    if-lez v1, :cond_24

    .line 566
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 569
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_30

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 572
    :cond_30
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 575
    .end local v2    # "value":Ljava/lang/Object;
    :cond_36
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
