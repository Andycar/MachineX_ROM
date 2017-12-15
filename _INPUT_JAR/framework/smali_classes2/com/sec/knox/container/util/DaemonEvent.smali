.class public Lcom/sec/knox/container/util/DaemonEvent;
.super Ljava/lang/Object;
.source "DaemonEvent.java"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    .line 41
    iput p2, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    .line 42
    iput-object p3, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static filterMessageList([Lcom/sec/knox/container/util/DaemonEvent;I)[Ljava/lang/String;
    .registers 8
    .param p0, "events"    # [Lcom/sec/knox/container/util/DaemonEvent;
    .param p1, "matchCode"    # I

    .prologue
    .line 184
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 185
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/knox/container/util/DaemonEvent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    .line 186
    .local v1, "event":Lcom/sec/knox/container/util/DaemonEvent;
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v5

    if-ne v5, p1, :cond_18

    .line 187
    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 190
    .end local v1    # "event":Lcom/sec/knox/container/util/DaemonEvent;
    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static isClassUnsolicited(I)Z
    .registers 2
    .param p0, "code"    # I

    .prologue
    .line 125
    const/16 v0, 0x258

    if-lt p0, v0, :cond_a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 9
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "parsed":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_12

    .line 148
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguments"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    :cond_12
    const/4 v5, 0x0

    .line 155
    .local v5, "skiplength":I
    const/4 v6, 0x0

    :try_start_14
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "code":I
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_36

    move-result v6

    add-int/lit8 v5, v6, 0x1

    .line 161
    const/4 v0, -0x1

    .line 162
    .local v0, "cmdNumber":I
    invoke-static {v1}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    if-nez v6, :cond_51

    .line 163
    array-length v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_40

    .line 164
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Insufficient arguemnts"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    .end local v0    # "cmdNumber":I
    .end local v1    # "code":I
    :catch_36
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "problem parsing code"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 167
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "cmdNumber":I
    .restart local v1    # "code":I
    :cond_40
    const/4 v6, 0x1

    :try_start_41
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_4d} :catch_5b

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 174
    :cond_51
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "message":Ljava/lang/String;
    new-instance v6, Lcom/sec/knox/container/util/DaemonEvent;

    invoke-direct {v6, v0, v1, v3, p0}, Lcom/sec/knox/container/util/DaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 169
    .end local v3    # "message":Ljava/lang/String;
    :catch_5b
    move-exception v2

    .line 170
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "problem parsing cmdNumber"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x22

    const/16 v13, 0x20

    const/4 v12, -0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    .line 211
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 213
    .local v3, "length":I
    const/4 v2, 0x0

    .line 214
    .local v2, "current":I
    const/4 v9, -0x1

    .line 215
    .local v9, "wordEnd":I
    const/4 v7, 0x0

    .line 219
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_1e

    .line 220
    const/4 v7, 0x1

    .line 221
    add-int/lit8 v2, v2, 0x1

    .line 223
    :cond_1e
    :goto_1e
    if-ge v2, v3, :cond_7b

    .line 225
    if-eqz v7, :cond_6d

    .line 226
    move v9, v2

    .line 227
    :goto_23
    invoke-virtual {p0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-eq v9, v12, :cond_33

    .line 228
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_6a

    .line 239
    :cond_33
    :goto_33
    if-ne v9, v12, :cond_36

    .line 240
    move v9, v3

    .line 241
    :cond_36
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "word":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v2, v10

    .line 243
    if-nez v7, :cond_72

    .line 244
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 249
    :goto_45
    const-string v10, "\\\\"

    const-string v11, "\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 250
    const-string v10, "\\\""

    const-string v11, "\""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 258
    .local v5, "nextSpace":I
    const-string v10, " \""

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, "nextQuote":I
    if-le v4, v12, :cond_75

    if-gt v4, v5, :cond_75

    .line 263
    const/4 v7, 0x1

    .line 264
    add-int/lit8 v2, v4, 0x2

    goto :goto_1e

    .line 231
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 235
    :cond_6d
    invoke-virtual {p0, v13, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_33

    .line 246
    .restart local v8    # "word":Ljava/lang/String;
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 266
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_75
    const/4 v7, 0x0

    .line 267
    if-le v5, v12, :cond_1e

    .line 268
    add-int/lit8 v2, v5, 0x1

    goto :goto_1e

    .line 277
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "word":Ljava/lang/String;
    :cond_7b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method


# virtual methods
.method public checkCode(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    if-eq v0, p1, :cond_27

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_27
    return-void
.end method

.method public getCmdNumber()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_c

    .line 200
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    .line 202
    :cond_c
    add-int/lit8 p1, p1, 0x2

    .line 203
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_15

    .line 204
    const/4 v0, 0x0

    .line 205
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_14
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "errorCode":I
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 74
    :cond_6
    :goto_6
    return v3

    .line 65
    :cond_7
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 66
    .local v1, "i":I
    if-lez v1, :cond_6

    .line 68
    :goto_13
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3e

    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3e

    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3e

    .line 69
    mul-int/lit8 v0, v0, 0xa

    .line 70
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonEvent;->mMessage:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v0, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_13

    .line 72
    :cond_3e
    if-lez v0, :cond_6

    .line 73
    mul-int/lit8 v3, v0, -0x1

    goto :goto_6
.end method

.method public isClassClientError()Z
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassContinue()Z
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassOk()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassServerError()Z
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassUnsolicited()Z
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method
