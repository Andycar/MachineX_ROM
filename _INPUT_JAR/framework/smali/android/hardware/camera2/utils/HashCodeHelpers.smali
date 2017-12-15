.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static hashCode(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static hashCode(III)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .prologue
    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static hashCode(IIII)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "w"    # I

    .prologue
    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static hashCode(IIIII)I
    .registers 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
    .param p3, "w"    # I
    .param p4, "t"    # I

    .prologue
    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    aput p4, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "a":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "h":I
    if-nez p1, :cond_d

    const/4 v1, 0x0

    .line 108
    .local v1, "x":I
    :goto_7
    shl-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, v0

    xor-int v0, v2, v1

    .line 110
    return v0

    .line 107
    .end local v1    # "x":I
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "h":I
    if-nez p2, :cond_d

    const/4 v1, 0x0

    .line 117
    .local v1, "x":I
    :goto_7
    shl-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, v0

    xor-int v0, v2, v1

    .line 119
    return v0

    .line 116
    .end local v1    # "x":I
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/lang/Object;, "TT;"
    .local p3, "d":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, "h":I
    if-nez p3, :cond_d

    const/4 v1, 0x0

    .line 126
    .local v1, "x":I
    :goto_7
    shl-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, v0

    xor-int v0, v2, v1

    .line 128
    return v0

    .line 125
    .end local v1    # "x":I
    :cond_d
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public static hashCode([F)I
    .registers 8
    .param p0, "array"    # [F

    .prologue
    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v2, 0x0

    .line 74
    :cond_3
    return v2

    .line 68
    :cond_4
    const/4 v2, 0x1

    .line 69
    .local v2, "h":I
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v4, :cond_3

    aget v1, v0, v3

    .line 70
    .local v1, "f":F
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 71
    .local v5, "x":I
    shl-int/lit8 v6, v2, 0x5

    sub-int/2addr v6, v2

    xor-int v2, v6, v5

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static hashCode([I)I
    .registers 7
    .param p0, "array"    # [I

    .prologue
    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v1, 0x0

    .line 51
    :cond_3
    return v1

    .line 45
    :cond_4
    const/4 v1, 0x1

    .line 46
    .local v1, "h":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_3

    aget v4, v0, v2

    .line 48
    .local v4, "x":I
    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    .line 87
    if-nez p0, :cond_4

    .line 97
    :goto_3
    return v6

    .line 91
    :cond_4
    const/4 v1, 0x1

    .line 92
    .local v1, "h":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_1c

    aget-object v4, v0, v2

    .line 93
    .local v4, "o":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_17

    move v5, v6

    .line 94
    .local v5, "x":I
    :goto_f
    shl-int/lit8 v7, v1, 0x5

    sub-int/2addr v7, v1

    xor-int v1, v7, v5

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 93
    .end local v5    # "x":I
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_f

    .end local v4    # "o":Ljava/lang/Object;, "TT;"
    :cond_1c
    move v6, v1

    .line 97
    goto :goto_3
.end method
