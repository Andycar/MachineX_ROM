.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final TOKEN_COMMENT:B = 0x1t

.field private static final TOKEN_DIGIT:B = 0x10t

.field private static final TOKEN_QUOTE:B = 0x2t

.field private static final TOKEN_WHITE:B = 0x4t

.field private static final TOKEN_WORD:B = 0x8t

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field public static final TT_NUMBER:I = -0x2

.field private static final TT_UNKNOWN:I = -0x4

.field public static final TT_WORD:I = -0x3


# instance fields
.field private forceLowercase:Z

.field private inReader:Ljava/io/Reader;

.field private inStream:Ljava/io/InputStream;

.field private isEOLSignificant:Z

.field private lastCr:Z

.field private lineNumber:I

.field public nval:D

.field private peekChar:I

.field private pushBackToken:Z

.field private slashSlashComments:Z

.field private slashStarComments:Z

.field public sval:Ljava/lang/String;

.field private tokenTypes:[B

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 86
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 117
    const/4 v0, -0x2

    iput v0, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 129
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 130
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 131
    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 136
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 141
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 142
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 143
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 147
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 169
    if-nez p1, :cond_d

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_d
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "r"    # Ljava/io/Reader;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 196
    if-nez p1, :cond_d

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "r == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_d
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    .line 200
    return-void
.end method

.method private read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_b

    .line 556
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 558
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public commentChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 210
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 211
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x1

    aput-byte v1, v0, p1

    .line 213
    :cond_c
    return-void
.end method

.method public eolIsSignificant(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    .line 224
    return-void
.end method

.method public lineno()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    .line 245
    return-void
.end method

.method public nextToken()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    move/from16 v17, v0

    if-eqz v17, :cond_23

    .line 258
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v17, v0

    const/16 v18, -0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    .line 260
    move-object/from16 v0, p0

    iget v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    .line 480
    :goto_22
    return v6

    .line 263
    :cond_23
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->peekChar:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_63

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    .line 266
    .local v6, "currentChar":I
    :goto_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->lastCr:Z

    move/from16 v17, v0

    if-eqz v17, :cond_57

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_57

    .line 267
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    .line 270
    :cond_57
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_68

    .line 271
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_22

    .line 264
    .end local v6    # "currentChar":I
    :cond_63
    move-object/from16 v0, p0

    iget v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    goto :goto_3d

    .line 274
    .restart local v6    # "currentChar":I
    :cond_68
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v6, v0, :cond_a8

    const/16 v7, 0x8

    .line 276
    .local v7, "currentType":B
    :goto_70
    and-int/lit8 v17, v7, 0x4

    if-eqz v17, :cond_115

    .line 280
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_cc

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b1

    .line 283
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 284
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    .line 285
    const/16 v6, 0xa

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 274
    .end local v7    # "currentType":B
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    move-object/from16 v17, v0

    aget-byte v7, v17, v6

    goto :goto_70

    .line 287
    .restart local v7    # "currentType":B
    :cond_b1
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_bf

    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    .line 301
    :cond_bf
    :goto_bf
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_102

    .line 302
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 290
    :cond_cc
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_fd

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f8

    .line 293
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    .line 294
    const/16 v6, 0xa

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 296
    :cond_f8
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    goto :goto_bf

    .line 299
    :cond_fd
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    goto :goto_bf

    .line 304
    :cond_102
    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v6, v0, :cond_10c

    const/16 v7, 0x8

    :goto_10a
    goto/16 :goto_70

    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    move-object/from16 v17, v0

    aget-byte v7, v17, v6

    goto :goto_10a

    .line 312
    :cond_115
    and-int/lit8 v17, v7, 0x10

    if-eqz v17, :cond_190

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .local v9, "digits":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "haveDecimal":Z
    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v6, v0, :cond_16b

    const/4 v5, 0x1

    .line 316
    .local v5, "checkJustNegative":Z
    :cond_12a
    :goto_12a
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v6, v0, :cond_131

    .line 317
    const/4 v11, 0x1

    .line 319
    :cond_131
    int-to-char v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    .line 321
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v6, v0, :cond_149

    const/16 v17, 0x39

    move/from16 v0, v17

    if-le v6, v0, :cond_12a

    :cond_149
    if-nez v11, :cond_151

    const/16 v17, 0x2e

    move/from16 v0, v17

    if-eq v6, v0, :cond_12a

    .line 326
    :cond_151
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 327
    if-eqz v5, :cond_16d

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16d

    .line 329
    const/16 v6, 0x2d

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 314
    .end local v5    # "checkJustNegative":Z
    :cond_16b
    const/4 v5, 0x0

    goto :goto_12a

    .line 332
    .restart local v5    # "checkJustNegative":Z
    :cond_16d
    :try_start_16d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D
    :try_end_17f
    .catch Ljava/lang/NumberFormatException; {:try_start_16d .. :try_end_17f} :catch_186

    .line 337
    :goto_17f
    const/4 v6, -0x2

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 333
    :catch_186
    move-exception v10

    .line 335
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D

    goto :goto_17f

    .line 340
    .end local v5    # "checkJustNegative":Z
    .end local v9    # "digits":Ljava/lang/StringBuilder;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "haveDecimal":Z
    :cond_190
    and-int/lit8 v17, v7, 0x8

    if-eqz v17, :cond_1ee

    .line 341
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v17, 0x14

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    .local v16, "word":Ljava/lang/StringBuilder;
    :cond_19b
    int-to-char v0, v6

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    .line 345
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_1bd

    const/16 v17, 0x100

    move/from16 v0, v17

    if-ge v6, v0, :cond_19b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    move-object/from16 v17, v0

    aget-byte v17, v17, v6

    and-int/lit8 v17, v17, 0x18

    if-nez v17, :cond_19b

    .line 350
    :cond_1bd
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 351
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e7

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 355
    :cond_1e7
    const/4 v6, -0x3

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 358
    .end local v16    # "word":Ljava/lang/StringBuilder;
    :cond_1ee
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v7, v0, :cond_2b0

    .line 359
    move v12, v6

    .line 360
    .local v12, "matchQuote":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v14, "quoteString":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    .line 363
    .local v13, "peekOne":I
    :cond_1fe
    :goto_1fe
    if-ltz v13, :cond_292

    if-eq v13, v12, :cond_292

    const/16 v17, 0xd

    move/from16 v0, v17

    if-eq v13, v0, :cond_292

    const/16 v17, 0xa

    move/from16 v0, v17

    if-eq v13, v0, :cond_292

    .line 364
    const/4 v15, 0x1

    .line 365
    .local v15, "readPeek":Z
    const/16 v17, 0x5c

    move/from16 v0, v17

    if-ne v13, v0, :cond_243

    .line 366
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 368
    .local v4, "c1":I
    const/16 v17, 0x37

    move/from16 v0, v17

    if-gt v4, v0, :cond_279

    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v4, v0, :cond_279

    .line 369
    add-int/lit8 v8, v4, -0x30

    .line 370
    .local v8, "digitValue":I
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 371
    const/16 v17, 0x37

    move/from16 v0, v17

    if-gt v4, v0, :cond_237

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v4, v0, :cond_252

    .line 372
    :cond_237
    const/4 v15, 0x0

    .line 383
    :goto_238
    if-nez v15, :cond_277

    .line 385
    int-to-char v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    move v13, v4

    .line 418
    .end local v4    # "c1":I
    .end local v8    # "digitValue":I
    :cond_243
    :goto_243
    if-eqz v15, :cond_1fe

    .line 419
    int-to-char v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    goto :goto_1fe

    .line 374
    .restart local v4    # "c1":I
    .restart local v8    # "digitValue":I
    :cond_252
    mul-int/lit8 v17, v8, 0x8

    add-int/lit8 v18, v4, -0x30

    add-int v8, v17, v18

    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    .line 377
    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v8, v0, :cond_26e

    const/16 v17, 0x37

    move/from16 v0, v17

    if-gt v4, v0, :cond_26e

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v4, v0, :cond_270

    .line 378
    :cond_26e
    const/4 v15, 0x0

    goto :goto_238

    .line 380
    :cond_270
    mul-int/lit8 v17, v8, 0x8

    add-int/lit8 v18, v4, -0x30

    add-int v8, v17, v18

    goto :goto_238

    .line 388
    :cond_277
    move v13, v8

    goto :goto_243

    .line 391
    .end local v8    # "digitValue":I
    :cond_279
    sparse-switch v4, :sswitch_data_3b4

    .line 414
    move v13, v4

    goto :goto_243

    .line 393
    :sswitch_27e
    const/4 v13, 0x7

    .line 394
    goto :goto_243

    .line 396
    :sswitch_280
    const/16 v13, 0x8

    .line 397
    goto :goto_243

    .line 399
    :sswitch_283
    const/16 v13, 0xc

    .line 400
    goto :goto_243

    .line 402
    :sswitch_286
    const/16 v13, 0xa

    .line 403
    goto :goto_243

    .line 405
    :sswitch_289
    const/16 v13, 0xd

    .line 406
    goto :goto_243

    .line 408
    :sswitch_28c
    const/16 v13, 0x9

    .line 409
    goto :goto_243

    .line 411
    :sswitch_28f
    const/16 v13, 0xb

    .line 412
    goto :goto_243

    .line 423
    .end local v4    # "c1":I
    .end local v15    # "readPeek":Z
    :cond_292
    if-ne v13, v12, :cond_298

    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    .line 426
    :cond_298
    move-object/from16 v0, p0

    iput v13, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 427
    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/StreamTokenizer;->ttype:I

    .line 428
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    iget v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 432
    .end local v12    # "matchQuote":I
    .end local v13    # "peekOne":I
    .end local v14    # "quoteString":Ljava/lang/StringBuilder;
    :cond_2b0
    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v6, v0, :cond_382

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    move/from16 v17, v0

    if-nez v17, :cond_2c6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    move/from16 v17, v0

    if-eqz v17, :cond_382

    .line 433
    :cond_2c6
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    const/16 v17, 0x2a

    move/from16 v0, v17

    if-ne v6, v0, :cond_346

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    move/from16 v17, v0

    if-eqz v17, :cond_346

    .line 434
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    .line 436
    .restart local v13    # "peekOne":I
    :cond_2dc
    :goto_2dc
    move v6, v13

    .line 437
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    .line 438
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_2f6

    .line 439
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    .line 440
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 442
    :cond_2f6
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v6, v0, :cond_315

    .line 443
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_306

    .line 444
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    .line 446
    :cond_306
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_2dc

    .line 447
    :cond_315
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_32a

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_2dc

    .line 449
    :cond_32a
    const/16 v17, 0x2a

    move/from16 v0, v17

    if-ne v6, v0, :cond_2dc

    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v13, v0, :cond_2dc

    .line 450
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    .line 451
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v6

    goto/16 :goto_22

    .line 454
    .end local v13    # "peekOne":I
    :cond_346
    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v6, v0, :cond_370

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    move/from16 v17, v0

    if-eqz v17, :cond_370

    .line 457
    :cond_354
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    if-ltz v6, :cond_366

    const/16 v17, 0xd

    move/from16 v0, v17

    if-eq v6, v0, :cond_366

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_354

    .line 460
    :cond_366
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 461
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v6

    goto/16 :goto_22

    .line 462
    :cond_370
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_382

    .line 464
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 465
    const/16 v6, 0x2f

    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 469
    :cond_382
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_3a4

    .line 472
    :cond_388
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v6

    if-ltz v6, :cond_39a

    const/16 v17, 0xd

    move/from16 v0, v17

    if-eq v6, v0, :cond_39a

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v6, v0, :cond_388

    .line 475
    :cond_39a
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 476
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v6

    goto/16 :goto_22

    .line 479
    :cond_3a4
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    .line 480
    move-object/from16 v0, p0

    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_22

    .line 391
    :sswitch_data_3b4
    .sparse-switch
        0x61 -> :sswitch_27e
        0x62 -> :sswitch_280
        0x66 -> :sswitch_283
        0x6e -> :sswitch_286
        0x72 -> :sswitch_289
        0x74 -> :sswitch_28c
        0x76 -> :sswitch_28f
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 493
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 494
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 496
    :cond_c
    return-void
.end method

.method public ordinaryChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    .line 510
    if-gez p1, :cond_3

    .line 511
    const/4 p1, 0x0

    .line 513
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_d

    .line 514
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 516
    :cond_d
    move v0, p1

    .local v0, "i":I
    :goto_e
    if-gt v0, p2, :cond_18

    .line 517
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 519
    :cond_18
    return-void
.end method

.method public parseNumbers()V
    .registers 5

    .prologue
    .line 525
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_12

    .line 526
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 528
    :cond_12
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 529
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 530
    return-void
.end method

.method public pushBack()V
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 538
    return-void
.end method

.method public quoteChar(I)V
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 548
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 549
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 551
    :cond_c
    return-void
.end method

.method public resetSyntax()V
    .registers 4

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_d

    .line 566
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 568
    :cond_d
    return-void
.end method

.method public slashSlashComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    .line 580
    return-void
.end method

.method public slashStarComments(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    .line 593
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "Token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v1, :sswitch_data_5e

    .line 620
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    .line 621
    :cond_1f
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_24
    const-string v1, "], line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget v1, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 607
    :sswitch_33
    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 610
    :sswitch_39
    const-string v1, "EOL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 613
    :sswitch_3f
    const-string v1, "n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-wide v2, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 617
    :sswitch_4a
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 623
    :cond_50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 605
    nop

    :sswitch_data_5e
    .sparse-switch
        -0x3 -> :sswitch_4a
        -0x2 -> :sswitch_3f
        -0x1 -> :sswitch_33
        0xa -> :sswitch_39
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    .line 643
    if-gez p1, :cond_3

    .line 644
    const/4 p1, 0x0

    .line 646
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_d

    .line 647
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 649
    :cond_d
    move v0, p1

    .local v0, "i":I
    :goto_e
    if-gt v0, p2, :cond_18

    .line 650
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 652
    :cond_18
    return-void
.end method

.method public wordChars(II)V
    .registers 6
    .param p1, "low"    # I
    .param p2, "hi"    # I

    .prologue
    .line 665
    if-gez p1, :cond_3

    .line 666
    const/4 p1, 0x0

    .line 668
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_d

    .line 669
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 671
    :cond_d
    move v0, p1

    .local v0, "i":I
    :goto_e
    if-gt v0, p2, :cond_1c

    .line 672
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 674
    :cond_1c
    return-void
.end method
