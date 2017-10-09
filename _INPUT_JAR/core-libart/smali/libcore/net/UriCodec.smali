.class public abstract Llibcore/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 12
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "isPartiallyEncoded"    # Z

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 96
    if-nez p2, :cond_d

    .line 97
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "s == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_d
    const/4 v1, -0x1

    .line 101
    .local v1, "escapeStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, "c":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_21

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3b

    :cond_21
    const/16 v3, 0x41

    if-lt v0, v3, :cond_29

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3b

    :cond_29
    const/16 v3, 0x30

    if-lt v0, v3, :cond_31

    const/16 v3, 0x39

    if-le v0, v3, :cond_3b

    :cond_31
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v3

    if-nez v3, :cond_3b

    if-ne v0, v6, :cond_69

    if-eqz p4, :cond_69

    .line 108
    :cond_3b
    if-eq v1, v5, :cond_45

    .line 109
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 110
    const/4 v1, -0x1

    .line 112
    :cond_45
    if-ne v0, v6, :cond_5b

    if-eqz p4, :cond_5b

    .line 114
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v2, v2, 0x2

    .line 101
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 116
    :cond_5b
    const/16 v3, 0x20

    if-ne v0, v3, :cond_65

    .line 117
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 119
    :cond_65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 121
    :cond_69
    if-ne v1, v5, :cond_58

    .line 122
    move v1, v2

    goto :goto_58

    .line 125
    .end local v0    # "c":C
    :cond_6d
    if-eq v1, v5, :cond_7a

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 128
    :cond_7a
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    .prologue
    .line 216
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_10

    aget-byte v1, v0, v2

    .line 211
    .local v1, "b":B
    invoke-static {p0, v1}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 213
    .end local v1    # "b":B
    :cond_10
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "convertPlus"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "throwOnFailure"    # Z

    .prologue
    const/16 v11, 0x2b

    const/16 v10, 0x25

    const/4 v9, -0x1

    .line 153
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v9, :cond_14

    if-eqz p1, :cond_13

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v9, :cond_14

    .line 186
    .end local p0    # "s":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object p0

    .line 157
    .restart local p0    # "s":Ljava/lang/String;
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v6, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_b2

    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "c":C
    if-ne v0, v10, :cond_a5

    .line 164
    :cond_2f
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_74

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    .local v1, "d1":I
    if-eq v1, v9, :cond_74

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    .local v2, "d2":I
    if-eq v2, v9, :cond_74

    .line 167
    shl-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :goto_56
    add-int/lit8 v3, v3, 0x3

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_64

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_2f

    .line 176
    :cond_64
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_23

    .line 168
    :cond_74
    if-eqz p3, :cond_99

    .line 169
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid % sequence at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 171
    :cond_99
    const-string v7, "\ufffd"

    invoke-virtual {v7, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 172
    .local v5, "replacement":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_56

    .line 179
    .end local v5    # "replacement":[B
    :cond_a5
    if-eqz p1, :cond_ab

    if-ne v0, v11, :cond_ab

    .line 180
    const/16 v0, 0x20

    .line 182
    :cond_ab
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    .line 186
    .end local v0    # "c":C
    :cond_b2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_13
.end method

.method private static hexToInt(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 194
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 195
    add-int/lit8 v0, p0, -0x30

    .line 201
    :goto_a
    return v0

    .line 196
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 197
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 198
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 199
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 201
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "legal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "ch":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_13

    const/16 v2, 0x7a

    if-le v0, v2, :cond_32

    :cond_13
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_32

    :cond_1b
    const/16 v2, 0x30

    if-lt v0, v2, :cond_23

    const/16 v2, 0x39

    if-le v0, v2, :cond_32

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_32

    .line 81
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character"

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 75
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "ch":C
    :cond_35
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 139
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 143
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 44
    move v3, p2

    .local v3, "i":I
    :goto_2
    if-ge v3, p3, :cond_a8

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 46
    .local v0, "ch":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_10

    const/16 v4, 0x7a

    if-le v0, v4, :cond_26

    :cond_10
    const/16 v4, 0x41

    if-lt v0, v4, :cond_18

    const/16 v4, 0x5a

    if-le v0, v4, :cond_26

    :cond_18
    const/16 v4, 0x30

    if-lt v0, v4, :cond_20

    const/16 v4, 0x39

    if-le v0, v4, :cond_26

    :cond_20
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 50
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 51
    :cond_29
    const/16 v4, 0x25

    if-ne v0, v4, :cond_8f

    .line 52
    add-int/lit8 v4, v3, 0x2

    if-lt v4, p3, :cond_4a

    .line 53
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete % sequence in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 55
    :cond_4a
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    .line 56
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    .line 57
    .local v2, "d2":I
    if-eq v1, v5, :cond_62

    if-ne v2, v5, :cond_8b

    .line 58
    :cond_62
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid % sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 61
    :cond_8b
    add-int/lit8 v3, v3, 0x3

    .line 62
    goto/16 :goto_2

    .line 63
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :cond_8f
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal character in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 66
    .end local v0    # "ch":C
    :cond_a8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
