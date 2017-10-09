.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "cols"    # I

    .prologue
    .line 3261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 3262
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 3263
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "formats"    # [Ljava/lang/String;
    .param p3, "row"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 3308
    const/4 v0, 0x0

    .local v0, "j":I
    array-length v1, p3

    .local v1, "rowLength":I
    :goto_3
    if-ge v0, v1, :cond_23

    .line 3309
    aget-object v2, p2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3310
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3308
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3312
    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3313
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 3266
    array-length v3, p3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-le v3, v4, :cond_36

    .line 3267
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Table only has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columns. can\'t set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3270
    :cond_36
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_3c
    if-gt v0, p1, :cond_56

    .line 3271
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 3272
    .local v2, "list":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3273
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_48
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v1, v3, :cond_53

    .line 3274
    const-string v3, ""

    aput-object v3, v2, v1

    .line 3273
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 3270
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 3277
    .end local v1    # "j":I
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_56
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    array-length v5, p3

    invoke-static {p3, v3, v4, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3278
    return-void
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v12, 0x0

    .line 3281
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v1, v9, [Ljava/lang/String;

    .line 3282
    .local v1, "formats":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3283
    .local v8, "totalLength":I
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_7
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v0, v9, :cond_41

    .line 3284
    const/4 v6, 0x0

    .line 3285
    .local v6, "maxLength":I
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 3286
    .local v7, "row":[Ljava/lang/Object;
    aget-object v9, v7, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 3287
    .local v4, "length":I
    if-le v4, v6, :cond_12

    .line 3288
    move v6, v4

    goto :goto_12

    .line 3291
    .end local v4    # "length":I
    .end local v7    # "row":[Ljava/lang/Object;
    :cond_2c
    add-int/2addr v8, v6

    .line 3292
    const-string v9, "%%-%ds"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    .line 3283
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3294
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "maxLength":I
    :cond_41
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    const-string v10, "%s"

    aput-object v10, v1, v9

    .line 3295
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v9}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3296
    iget v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 3297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5c
    if-ge v2, v8, :cond_66

    .line 3298
    const-string v9, "-"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3297
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 3300
    :cond_66
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3301
    const/4 v2, 0x1

    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "mTableSize":I
    :goto_70
    if-ge v2, v5, :cond_80

    .line 3302
    iget-object v9, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 3303
    .restart local v7    # "row":[Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v7}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3301
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 3305
    .end local v7    # "row":[Ljava/lang/Object;
    :cond_80
    return-void
.end method
