.class public Landroid/hardware/camera2/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArrayUtils"

.field private static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-string v0, "ArrayUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/utils/ArrayUtils;->VERBOSE:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static contains([II)Z
    .registers 4
    .param p0, "array"    # [I
    .param p1, "elem"    # I

    .prologue
    .line 167
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I
    .registers 7
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)[I"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 80
    const/4 v2, 0x0

    .line 90
    :cond_3
    return-object v2

    .line 83
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 86
    .local v2, "returnArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public static convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;
    .registers 10
    .param p1, "convertFrom"    # [Ljava/lang/String;
    .param p2, "convertTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    .line 130
    :cond_3
    return-object v0

    .line 113
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "convertedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "str":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 119
    .local v3, "strIndex":I
    if-gez v3, :cond_3c

    .line 120
    const-string v4, "ArrayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring invalid value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 125
    :cond_3c
    array-length v4, p2

    if-ge v3, v4, :cond_11

    .line 126
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static getArrayIndex([II)I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "needle"    # I

    .prologue
    const/4 v1, -0x1

    .line 52
    if-nez p0, :cond_5

    move v0, v1

    .line 60
    :cond_4
    :goto_4
    return v0

    .line 55
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_10

    .line 56
    aget v2, p0, v0

    if-eq v2, p1, :cond_4

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    move v0, v1

    .line 60
    goto :goto_4
.end method

.method public static getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "needle":Ljava/lang/Object;, "TT;"
    const/4 v5, -0x1

    .line 35
    if-nez p0, :cond_5

    move v3, v5

    .line 47
    :cond_4
    :goto_4
    return v3

    .line 39
    :cond_5
    const/4 v3, 0x0

    .line 40
    .local v3, "index":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-object v1, v0, v2

    .line 41
    .local v1, "elem":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v1    # "elem":Ljava/lang/Object;, "TT;"
    :cond_18
    move v3, v5

    .line 47
    goto :goto_4
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_4

    .line 146
    const/4 v0, 0x0

    .line 156
    :cond_3
    return-object v0

    .line 149
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 150
    .local v0, "arr":[I
    const/4 v2, 0x0

    .line 151
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    .local v1, "elem":I
    aput v1, v0, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    goto :goto_f
.end method
