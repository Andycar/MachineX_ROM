.class public final Llibcore/icu/CollationKeyICU;
.super Ljava/text/CollationKey;
.source "CollationKeyICU.java"


# instance fields
.field private final bytes:[B

.field private hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/text/CollationKey;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Ljava/text/CollationKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/text/CollationKey;)I
    .registers 12
    .param p1, "other"    # Ljava/text/CollationKey;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 37
    instance-of v8, p1, Llibcore/icu/CollationKeyICU;

    if-eqz v8, :cond_1b

    .line 38
    check-cast p1, Llibcore/icu/CollationKeyICU;

    .end local p1    # "other":Ljava/text/CollationKey;
    iget-object v2, p1, Llibcore/icu/CollationKeyICU;->bytes:[B

    .line 43
    .local v2, "rhsBytes":[B
    :goto_b
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v8, :cond_14

    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    if-nez v8, :cond_20

    .line 44
    :cond_14
    if-eqz v2, :cond_19

    array-length v6, v2

    if-nez v6, :cond_1a

    :cond_19
    move v5, v7

    .line 71
    :cond_1a
    :goto_1a
    return v5

    .line 40
    .end local v2    # "rhsBytes":[B
    .restart local p1    # "other":Ljava/text/CollationKey;
    :cond_1b
    invoke-virtual {p1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    .restart local v2    # "rhsBytes":[B
    goto :goto_b

    .line 49
    .end local p1    # "other":Ljava/text/CollationKey;
    :cond_20
    if-eqz v2, :cond_25

    array-length v8, v2

    if-nez v8, :cond_27

    :cond_25
    move v5, v6

    .line 50
    goto :goto_1a

    .line 54
    :cond_27
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_45

    .line 56
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v8, v8, v1

    and-int/lit16 v3, v8, 0xff

    .line 57
    .local v3, "s":I
    aget-byte v8, v2, v1

    and-int/lit16 v4, v8, 0xff

    .line 58
    .local v4, "t":I
    if-lt v3, v4, :cond_1a

    .line 61
    if-le v3, v4, :cond_42

    move v5, v6

    .line 62
    goto :goto_1a

    .line 55
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 65
    .end local v3    # "s":I
    .end local v4    # "t":I
    :cond_45
    iget-object v8, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v8, v8

    array-length v9, v2

    if-lt v8, v9, :cond_1a

    .line 68
    iget-object v5, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v5, v5

    array-length v8, v2

    if-le v5, v8, :cond_53

    move v5, v6

    .line 69
    goto :goto_1a

    :cond_53
    move v5, v7

    .line 71
    goto :goto_1a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p1, p0, :cond_5

    .line 81
    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 78
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/text/CollationKey;

    if-nez v2, :cond_b

    move v0, v1

    .line 79
    goto :goto_4

    .line 81
    :cond_b
    check-cast p1, Ljava/text/CollationKey;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/CollationKeyICU;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 95
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_2d

    .line 96
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v3, :cond_26

    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_26

    .line 97
    iget-object v3, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v2, v3

    .line 98
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x20

    div-int/lit8 v3, v3, 0x20

    add-int/lit8 v1, v3, 0x1

    .line 99
    .local v1, "inc":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v2, :cond_26

    .line 100
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    mul-int/lit8 v3, v3, 0x25

    iget-object v4, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 101
    add-int/2addr v0, v1

    goto :goto_17

    .line 104
    .end local v0    # "i":I
    .end local v1    # "inc":I
    .end local v2    # "len":I
    :cond_26
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    if-nez v3, :cond_2d

    .line 105
    const/4 v3, 0x1

    iput v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    .line 108
    :cond_2d
    iget v3, p0, Llibcore/icu/CollationKeyICU;->hashCode:I

    return v3
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_b

    .line 113
    :cond_9
    const/4 v0, 0x0

    .line 115
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Llibcore/icu/CollationKeyICU;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_a
.end method
