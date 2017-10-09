.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final in:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_12

    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_12
    iput-object p1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static dehexchar(C)I
    .registers 2
    .param p0, "hex"    # C

    .prologue
    .line 601
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 602
    add-int/lit8 v0, p0, -0x30

    .line 608
    :goto_a
    return v0

    .line 603
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 604
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 605
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 606
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 608
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private nextCleanInternal()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 116
    :goto_1
    :sswitch_1
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5d

    .line 117
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_60

    .line 166
    .end local v0    # "c":I
    :cond_1a
    :goto_1a
    return v0

    .line 126
    .restart local v0    # "c":I
    :sswitch_1b
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1a

    .line 130
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 131
    .local v2, "peek":C
    sparse-switch v2, :sswitch_data_7a

    goto :goto_1a

    .line 134
    :sswitch_31
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 135
    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    const-string v5, "*/"

    iget v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "commentEnd":I
    if-ne v1, v3, :cond_4a

    .line 137
    const-string v3, "Unterminated comment"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 139
    :cond_4a
    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_1

    .line 144
    .end local v1    # "commentEnd":I
    :sswitch_4f
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 145
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_1

    .line 158
    .end local v2    # "peek":C
    :sswitch_59
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_1

    .end local v0    # "c":I
    :cond_5d
    move v0, v3

    .line 166
    goto :goto_1a

    .line 118
    nop

    :sswitch_data_60
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_59
        0x2f -> :sswitch_1b
    .end sparse-switch

    .line 131
    :sswitch_data_7a
    .sparse-switch
        0x2a -> :sswitch_31
        0x2f -> :sswitch_4f
    .end sparse-switch
.end method

.method private nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "excluded"    # Ljava/lang/String;

    .prologue
    .line 336
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 337
    .local v1, "start":I
    :goto_2
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 338
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "c":C
    const/16 v2, 0xd

    if-eq v0, v2, :cond_23

    const/16 v2, 0xa

    if-eq v0, v2, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    .line 340
    :cond_23
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    .end local v0    # "c":C
    :goto_2b
    return-object v2

    .line 337
    .restart local v0    # "c":C
    :cond_2c
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_2

    .line 343
    .end local v0    # "c":C
    :cond_33
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b
.end method

.method private readArray()Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 406
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 409
    .local v1, "result":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 412
    .local v0, "hasTrailingSeparator":Z
    :goto_7
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    .line 427
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 430
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 432
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    .line 440
    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 414
    :sswitch_29
    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 416
    :sswitch_30
    if-eqz v0, :cond_35

    .line 417
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 434
    :cond_35
    :sswitch_35
    return-object v1

    .line 423
    :sswitch_36
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 424
    const/4 v0, 0x1

    .line 425
    goto :goto_7

    .line 437
    :sswitch_3b
    const/4 v0, 0x1

    .line 438
    goto :goto_7

    .line 412
    nop

    :sswitch_data_3e
    .sparse-switch
        -0x1 -> :sswitch_29
        0x2c -> :sswitch_36
        0x3b -> :sswitch_36
        0x5d -> :sswitch_30
    .end sparse-switch

    .line 432
    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_3b
        0x3b -> :sswitch_3b
        0x5d -> :sswitch_35
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_4c

    .line 272
    .end local v0    # "escaped":C
    :goto_f
    return v0

    .line 246
    .restart local v0    # "escaped":C
    :sswitch_10
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_23

    .line 247
    const-string v2, "Unterminated escape sequence"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 249
    :cond_23
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 251
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_f

    .line 254
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_3d
    const/16 v0, 0x9

    goto :goto_f

    .line 257
    :sswitch_40
    const/16 v0, 0x8

    goto :goto_f

    .line 260
    :sswitch_43
    const/16 v0, 0xa

    goto :goto_f

    .line 263
    :sswitch_46
    const/16 v0, 0xd

    goto :goto_f

    .line 266
    :sswitch_49
    const/16 v0, 0xc

    goto :goto_f

    .line 244
    :sswitch_data_4c
    .sparse-switch
        0x62 -> :sswitch_40
        0x66 -> :sswitch_49
        0x6e -> :sswitch_43
        0x72 -> :sswitch_46
        0x74 -> :sswitch_3d
        0x75 -> :sswitch_10
    .end sparse-switch
.end method

.method private readLiteral()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 282
    const-string v5, "{}[]/\\:,=;# \t\u000c"

    invoke-direct {p0, v5}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "literal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_14

    .line 285
    const-string v5, "Expected literal value"

    invoke-virtual {p0, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    .line 286
    :cond_14
    const-string v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 287
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 328
    :goto_1e
    return-object v5

    .line 288
    :cond_1f
    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 289
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1e

    .line 290
    :cond_2a
    const-string v5, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 291
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1e

    .line 295
    :cond_35
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8b

    .line 296
    const/16 v0, 0xa

    .line 297
    .local v0, "base":I
    move-object v4, v1

    .line 298
    .local v4, "number":Ljava/lang/String;
    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 299
    :cond_51
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    const/16 v0, 0x10

    .line 306
    :cond_58
    :goto_58
    :try_start_58
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 307
    .local v2, "longValue":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-gtz v5, :cond_85

    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_85

    .line 308
    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_6e} :catch_8a

    move-result-object v5

    goto :goto_1e

    .line 301
    .end local v2    # "longValue":J
    :cond_70
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_58

    .line 302
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    const/16 v0, 0x8

    goto :goto_58

    .line 310
    .restart local v2    # "longValue":J
    :cond_85
    :try_start_85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_88} :catch_8a

    move-result-object v5

    goto :goto_1e

    .line 312
    .end local v2    # "longValue":J
    :catch_8a
    move-exception v5

    .line 323
    .end local v0    # "base":I
    .end local v4    # "number":Ljava/lang/String;
    :cond_8b
    :try_start_8b
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8e} :catch_90

    move-result-object v5

    goto :goto_1e

    .line 324
    :catch_90
    move-exception v5

    .line 328
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private readObject()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 354
    .local v2, "result":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 355
    .local v0, "first":I
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_e

    .line 389
    :sswitch_d
    return-object v2

    .line 357
    :cond_e
    const/4 v4, -0x1

    if-eq v0, v4, :cond_17

    .line 358
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 362
    :cond_17
    :sswitch_17
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 363
    .local v1, "name":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_52

    .line 364
    if-nez v1, :cond_28

    .line 365
    const-string v4, "Names cannot be null"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 367
    :cond_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Names must be strings, but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 377
    :cond_52
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v3

    .line 378
    .local v3, "separator":I
    const/16 v4, 0x3a

    if-eq v3, v4, :cond_76

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_76

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \':\' after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 381
    :cond_76
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_92

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_92

    .line 382
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    .line 385
    :cond_92
    check-cast v1, Ljava/lang/String;

    .end local v1    # "name":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v4

    sparse-switch v4, :sswitch_data_aa

    .line 394
    const-string v4, "Unterminated object"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    .line 387
    nop

    :sswitch_data_aa
    .sparse-switch
        0x2c -> :sswitch_17
        0x3b -> :sswitch_17
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method private skipToEndOfLine()V
    .registers 4

    .prologue
    .line 175
    :goto_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 176
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 178
    :cond_1a
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 182
    .end local v0    # "c":C
    :cond_20
    return-void

    .line 175
    .restart local v0    # "c":C
    :cond_21
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 588
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    .line 591
    :cond_c
    return-void
.end method

.method public more()Z
    .registers 3

    .prologue
    .line 473
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()C
    .registers 4

    .prologue
    .line 482
    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public next(C)C
    .registers 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 491
    .local v0, "result":C
    if-eq v0, p1, :cond_28

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 494
    :cond_28
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 520
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_23

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 523
    :cond_23
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 525
    return-object v0
.end method

.method public nextClean()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 505
    .local v0, "nextCleanInt":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_8
    return v1

    :cond_9
    int-to-char v1, v0

    goto :goto_8
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 8
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 203
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    .line 205
    .local v2, "start":I
    :cond_3
    :goto_3
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 206
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 207
    .local v1, "c":I
    if-ne v1, p1, :cond_3b

    .line 208
    if-nez v0, :cond_2d

    .line 210
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 213
    :goto_2c
    return-object v3

    .line 212
    :cond_2d
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 217
    :cond_3b
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 218
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_50

    .line 219
    const-string v3, "Unterminated escape sequence"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 221
    :cond_50
    if-nez v0, :cond_57

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_57
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {p0}, Lorg/json/JSONTokener;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_3

    .line 230
    .end local v1    # "c":I
    :cond_6a
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 3
    .param p1, "excluded"    # C

    .prologue
    .line 555
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "excluded"    # Ljava/lang/String;

    .prologue
    .line 545
    if-nez p1, :cond_a

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "excluded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_a
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    .line 95
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_2a

    .line 110
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 111
    invoke-direct {p0}, Lorg/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v1

    :goto_11
    return-object v1

    .line 97
    :sswitch_12
    const-string v1, "End of input"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 100
    :sswitch_19
    invoke-direct {p0}, Lorg/json/JSONTokener;->readObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_11

    .line 103
    :sswitch_1e
    invoke-direct {p0}, Lorg/json/JSONTokener;->readArray()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_11

    .line 107
    :sswitch_23
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 95
    nop

    :sswitch_data_2a
    .sparse-switch
        -0x1 -> :sswitch_12
        0x22 -> :sswitch_23
        0x27 -> :sswitch_23
        0x5b -> :sswitch_1e
        0x7b -> :sswitch_19
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 5
    .param p1, "thru"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 565
    .local v0, "thruStart":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_11
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    .line 566
    return-void

    .line 565
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_11
.end method

.method public skipTo(C)C
    .registers 5
    .param p1, "to"    # C

    .prologue
    .line 574
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 575
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 576
    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    .line 579
    .end local p1    # "to":C
    :goto_d
    return p1

    .restart local p1    # "to":C
    :cond_e
    const/4 p1, 0x0

    goto :goto_d
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
