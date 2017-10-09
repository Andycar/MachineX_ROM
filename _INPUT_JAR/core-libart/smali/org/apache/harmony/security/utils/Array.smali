.class public Lorg/apache/harmony/security/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getBytesAsString([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_1e

    .line 39
    aget-byte v2, p0, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 42
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "array"    # [B
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x0

    const/16 v11, 0x20

    .line 56
    const/4 v9, 0x5

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v6, v12

    const/4 v9, 0x1

    const-string v10, "000"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "00"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "0"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, ""

    aput-object v10, v6, v9

    .line 63
    .local v6, "offsetPrefix":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "charForm":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 66
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_2c
    array-length v9, p0

    if-ge v3, v9, :cond_8c

    .line 67
    rem-int/lit8 v9, v3, 0x10

    if-nez v9, :cond_4d

    .line 68
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "offset":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v0, v12, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 77
    .end local v5    # "offset":Ljava/lang/String;
    :cond_4d
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    aget-byte v9, p0, v3

    invoke-static {v9, v12}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    aget-byte v9, p0, v3

    and-int/lit16 v1, v9, 0xff

    .line 82
    .local v1, "currentByte":I
    const v9, 0xffff

    and-int/2addr v9, v1

    int-to-char v2, v9

    .line 84
    .local v2, "currentChar":C
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-eqz v9, :cond_6a

    const/16 v2, 0x2e

    .end local v2    # "currentChar":C
    :cond_6a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_76

    .line 88
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_76
    add-int/lit8 v9, v3, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_89

    .line 92
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 98
    .end local v1    # "currentByte":I
    :cond_8c
    rem-int/lit8 v9, v3, 0x10

    if-eqz v9, :cond_b5

    .line 99
    rem-int/lit8 v9, v3, 0x10

    rsub-int/lit8 v8, v9, 0x10

    .line 100
    .local v8, "ws2add":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_95
    if-ge v4, v8, :cond_9f

    .line 101
    const-string v9, "   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 103
    :cond_9f
    const/16 v9, 0x8

    if-le v8, v9, :cond_a6

    .line 104
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_a6
    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .end local v4    # "j":I
    .end local v8    # "ws2add":I
    :cond_b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
