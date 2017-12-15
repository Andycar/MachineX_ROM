.class public Landroid/hardware/camera2/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static listContains(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_3
    return v0

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "single":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p0, :cond_5

    .line 47
    :goto_4
    return v1

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_13

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_4

    :cond_13
    move v0, v1

    goto :goto_11
.end method

.method public static listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "choices":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 88
    if-nez p0, :cond_5

    move-object v1, v4

    .line 98
    :cond_4
    :goto_4
    return-object v1

    .line 92
    :cond_5
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_15

    aget-object v1, v0, v2

    .line 93
    .local v1, "choice":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v1    # "choice":Ljava/lang/Object;, "TT;"
    :cond_15
    move-object v1, v4

    .line 98
    goto :goto_4
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_4

    .line 55
    const/4 v5, 0x0

    .line 73
    :goto_3
    return-object v5

    .line 58
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 62
    .local v4, "size":I
    const/4 v1, 0x0

    .line 63
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v5, v4, -0x1

    if-eq v1, v5, :cond_2d

    .line 67
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_17

    .line 71
    .end local v0    # "elem":Ljava/lang/Object;, "TT;"
    :cond_30
    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method
