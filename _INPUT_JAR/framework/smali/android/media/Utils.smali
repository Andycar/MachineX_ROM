.class Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    new-instance v1, Landroid/media/Utils$2;

    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static divUp(II)I
    .registers 3
    .param p0, "num"    # I
    .param p1, "den"    # I

    .prologue
    .line 176
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method private static divUp(JJ)J
    .registers 8
    .param p0, "num"    # J
    .param p2, "den"    # J

    .prologue
    .line 180
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 137
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_3
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_3
.end method

.method static factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .registers 8
    .param p1, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 148
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :goto_6
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_7
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_6
.end method

.method static gcd(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 112
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 113
    const/4 v1, 0x1

    .line 126
    :goto_5
    return v1

    .line 115
    :cond_6
    if-gez p1, :cond_9

    .line 116
    neg-int p1, p1

    .line 118
    :cond_9
    if-gez p0, :cond_c

    .line 119
    neg-int p0, p0

    .line 121
    :cond_c
    :goto_c
    if-eqz p0, :cond_13

    .line 122
    rem-int v0, p1, p0

    .line 123
    .local v0, "c":I
    move p1, p0

    .line 124
    move p0, v0

    .line 125
    goto :goto_c

    .end local v0    # "c":I
    :cond_13
    move v1, p1

    .line 126
    goto :goto_5
.end method

.method static intRangeFor(D)Landroid/util/Range;
    .registers 6
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;[",
            "Landroid/util/Range",
            "<TT;>;)[",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "one":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "another":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    const/4 v2, 0x0

    .line 63
    .local v2, "ix":I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 64
    .local v5, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Range<TT;>;>;"
    move-object v0, p1

    .local v0, "arr$":[Landroid/util/Range;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v3, :cond_45

    aget-object v4, v0, v1

    .line 65
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_d
    array-length v6, p0

    if-ge v2, v6, :cond_23

    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_23

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 69
    :cond_23
    :goto_23
    array-length v6, p0

    if-ge v2, v6, :cond_42

    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_42

    .line 71
    aget-object v6, p0, v2

    invoke-virtual {v4, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 74
    :cond_42
    array-length v6, p0

    if-ne v2, v6, :cond_52

    .line 81
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_45
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/util/Range;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/util/Range;

    return-object v6

    .line 77
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_52
    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_6b

    .line 78
    aget-object v6, p0, v2

    invoke-virtual {v4, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static lcm(II)J
    .registers 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 187
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lce is not defined for zero arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_c
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static longRangeFor(D)Landroid/util/Range;
    .registers 6
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 10
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 229
    .local v3, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 230
    .local v2, "ix":I
    if-ltz v2, :cond_30

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 244
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_2f
    return-object p1

    .line 235
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_30
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 236
    .local v4, "value":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3f} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3f} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3f} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3f} :catch_43

    move-result-object p1

    goto :goto_2f

    .line 239
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":I
    :catch_41
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_2f

    .line 241
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v5

    .line 243
    :goto_44
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not parse integer range \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 238
    :catch_63
    move-exception v5

    goto :goto_44

    .line 237
    :catch_65
    move-exception v5

    goto :goto_44
.end method

.method static parseIntSafely(Ljava/lang/Object;I)I
    .registers 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # I

    .prologue
    .line 215
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 216
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p1

    .line 223
    .end local v2    # "s":Ljava/lang/String;
    .end local p1    # "fallback":I
    :goto_8
    return p1

    .line 219
    .restart local p1    # "fallback":I
    :catch_9
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_8

    .line 218
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v3

    .line 222
    :goto_c
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not parse integer \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 217
    :catch_2b
    move-exception v3

    goto :goto_c
.end method

.method static parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 12
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 250
    .local v4, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 251
    .local v3, "ix":I
    if-ltz v3, :cond_30

    .line 252
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xa

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 265
    .end local v3    # "ix":I
    .end local v4    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :goto_2f
    return-object p1

    .line 256
    .restart local v3    # "ix":I
    .restart local v4    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_30
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 257
    .local v6, "value":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3f} :catch_65
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3f} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3f} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3f} :catch_43

    move-result-object p1

    goto :goto_2f

    .line 260
    .end local v3    # "ix":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "value":J
    :catch_41
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_2f

    .line 262
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v5

    .line 264
    :goto_44
    const-string v5, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not parse long range \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 259
    :catch_63
    move-exception v5

    goto :goto_44

    .line 258
    :catch_65
    move-exception v5

    goto :goto_44
.end method

.method static parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 10
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 271
    .local v3, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 272
    .local v2, "ix":I
    if-ltz v2, :cond_24

    .line 273
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 286
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_23
    return-object p1

    .line 277
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_24
    invoke-static {v3}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v4

    .line 278
    .local v4, "value":Landroid/util/Rational;
    invoke-static {v4, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2b} :catch_51
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2b} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2b} :catch_2f

    move-result-object p1

    goto :goto_23

    .line 281
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":Landroid/util/Rational;
    :catch_2d
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_23

    .line 283
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v5

    .line 285
    :goto_30
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not parse rational range \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 280
    :catch_4f
    move-exception v5

    goto :goto_30

    .line 279
    :catch_51
    move-exception v5

    goto :goto_30
.end method

.method static parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .registers 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # Landroid/util/Size;

    .prologue
    .line 203
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object p1

    .line 210
    .end local p1    # "fallback":Landroid/util/Size;
    :goto_8
    return-object p1

    .line 206
    .restart local p1    # "fallback":Landroid/util/Size;
    :catch_9
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_8

    .line 205
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v2

    .line 209
    :goto_c
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse size \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 204
    :catch_2b
    move-exception v2

    goto :goto_c
.end method

.method static parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 10
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 291
    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 292
    .local v3, "s":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 293
    .local v2, "ix":I
    if-ltz v2, :cond_25

    .line 294
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 307
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    :goto_24
    return-object v5

    .line 298
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_25
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    .line 299
    .local v4, "value":Landroid/util/Size;
    invoke-static {v4, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_2c} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2c} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2c} :catch_30

    move-result-object v5

    goto :goto_24

    .line 302
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":Landroid/util/Size;
    :catch_2e
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_24

    .line 304
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_30
    move-exception v6

    .line 306
    :goto_31
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not parse size range \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 301
    :catch_50
    move-exception v6

    goto :goto_31

    .line 300
    :catch_52
    move-exception v6

    goto :goto_31
.end method

.method static scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .registers 5
    .param p1, "num"    # I
    .param p2, "den"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-ne p1, p2, :cond_3

    .line 164
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_2
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_2
.end method

.method private static scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .registers 11
    .param p0, "ratio"    # Landroid/util/Rational;
    .param p1, "num"    # I
    .param p2, "den"    # I

    .prologue
    .line 152
    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    move-result v0

    .line 153
    .local v0, "common":I
    div-int/2addr p1, v0

    .line 154
    div-int/2addr p2, v0

    .line 155
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    return-object v1
.end method

.method public static sortDistinctRanges([Landroid/util/Range;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    new-instance v0, Landroid/media/Utils$1;

    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 52
    return-void
.end method
