.class public Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;
.super Ljava/lang/Object;
.source "CaConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B

    .prologue
    .line 191
    if-eqz p0, :cond_5

    array-length v5, p0

    if-gtz v5, :cond_c

    .line 192
    :cond_5
    const-string v5, "Data is null"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x0

    .line 204
    :goto_b
    return-object v5

    .line 196
    :cond_c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v4, "str":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_14
    if-ge v1, v3, :cond_31

    aget-byte v2, v0, v1

    .line 198
    .local v2, "k":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 200
    .end local v2    # "k":B
    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_45

    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 204
    :cond_45
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b
.end method

.method public static getCompleteOfTwo(I)I
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 257
    move v0, p0

    .line 258
    .local v0, "complete":I
    if-gez p0, :cond_7

    .line 259
    add-int/lit16 v1, p0, 0xff

    add-int/lit8 v0, v1, 0x1

    .line 261
    :cond_7
    return v0
.end method

.method public static intToByteArr(II)[B
    .registers 7
    .param p0, "value"    # I
    .param p1, "size"    # I

    .prologue
    .line 163
    const/4 v4, 0x4

    if-le p1, v4, :cond_5

    .line 164
    const/4 v3, 0x0

    .line 180
    :cond_4
    return-object v3

    .line 167
    :cond_5
    new-array v0, p1, [B

    .line 169
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_16

    .line 170
    mul-int/lit8 v4, v1, 0x8

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 173
    :cond_16
    new-array v3, p1, [B

    .line 174
    .local v3, "result":[B
    array-length v2, v0

    .line 176
    .local v2, "len":I
    const/4 v1, 0x0

    :goto_1a
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 177
    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v3, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public static strToDouble(Ljava/lang/String;)D
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    if-nez p0, :cond_6

    move-wide v2, v4

    .line 150
    :goto_5
    return-wide v2

    .line 138
    :cond_6
    const-wide/16 v2, 0x0

    .line 141
    .local v2, "resultDouble":D
    :try_start_8
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_13

    move-result-wide v2

    goto :goto_5

    .line 142
    :catch_d
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 144
    goto :goto_5

    .line 145
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_13
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 147
    goto :goto_5
.end method

.method public static strToFloat(Ljava/lang/String;)F
    .registers 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 68
    if-nez p0, :cond_5

    move v4, v5

    .line 92
    :goto_4
    return v4

    .line 72
    :cond_5
    const/4 v4, 0x0

    .line 75
    .local v4, "resultFloat":F
    :try_start_6
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 76
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 77
    .local v2, "index":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "numerator":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "denominator":I
    int-to-float v5, v3

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 81
    goto :goto_4

    .line 82
    .end local v0    # "denominator":I
    .end local v2    # "index":I
    .end local v3    # "numerator":I
    :cond_2c
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_2f} :catch_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_37

    move-result v4

    goto :goto_4

    .line 84
    :catch_31
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 86
    goto :goto_4

    .line 87
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_37
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v4, v5

    .line 89
    goto :goto_4
.end method

.method public static strToInt(Ljava/lang/String;)I
    .registers 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 34
    if-nez p0, :cond_5

    move v3, v4

    .line 57
    :goto_4
    return v3

    .line 38
    :cond_5
    const/4 v3, 0x0

    .line 40
    .local v3, "resultInt":I
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 41
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "hexValue":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 43
    goto :goto_4

    .end local v2    # "hexValue":Ljava/lang/String;
    :cond_1e
    const-string v5, "B"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 44
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "binValue":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 46
    goto :goto_4

    .line 47
    .end local v0    # "binValue":Ljava/lang/String;
    :cond_37
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_42

    move-result v3

    goto :goto_4

    .line 49
    :catch_3c
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v3, v4

    .line 51
    goto :goto_4

    .line 52
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_42
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move v3, v4

    .line 54
    goto :goto_4
.end method

.method public static strToLong(Ljava/lang/String;)J
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 103
    if-nez p0, :cond_6

    move-wide v2, v4

    .line 123
    :goto_5
    return-wide v2

    .line 107
    :cond_6
    const-wide/16 v2, 0x0

    .line 109
    .local v2, "resultLong":J
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0X"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 110
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "hexValue":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 112
    goto :goto_5

    .line 113
    .end local v1    # "hexValue":Ljava/lang/String;
    :cond_20
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_23} :catch_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_2b

    move-result-wide v2

    goto :goto_5

    .line 115
    :catch_25
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 117
    goto :goto_5

    .line 118
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2b
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    move-wide v2, v4

    .line 120
    goto :goto_5
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .registers 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x2c

    .line 215
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 216
    :cond_b
    const/4 v0, 0x0

    .line 246
    :cond_c
    return-object v0

    .line 219
    :cond_d
    const/4 v6, 0x0

    .line 220
    .local v6, "startIdx":I
    const/4 v1, 0x0

    .line 222
    .local v1, "endIdx":I
    const/4 v3, 0x0

    .line 223
    .local v3, "len":I
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 224
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v1, v7, :cond_24

    .line 225
    add-int/lit8 v6, v1, 0x1

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 227
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 228
    if-gez v1, :cond_14

    .line 233
    :cond_24
    new-array v0, v3, [B

    .line 234
    .local v0, "arr":[B
    const/4 v6, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    const/4 v4, 0x0

    .line 238
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "size":I
    .local v5, "size":I
    :goto_2b
    if-ge v2, v3, :cond_c

    .line 239
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 240
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v10}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    const/4 v8, 0x0

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "size":I
    .restart local v4    # "size":I
    invoke-static {v7, v8, v0, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 243
    add-int/lit8 v6, v1, 0x2

    .line 238
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "size":I
    .restart local v5    # "size":I
    goto :goto_2b
.end method
