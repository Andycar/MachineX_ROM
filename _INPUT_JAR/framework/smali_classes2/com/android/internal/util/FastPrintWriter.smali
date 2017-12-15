.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# static fields
.field private static sDummyWriter:Ljava/io/Writer;


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$1;

    invoke-direct {v0}, Lcom/android/internal/util/FastPrintWriter$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/FastPrintWriter;->sDummyWriter:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;)V
    .registers 3
    .param p1, "pr"    # Landroid/util/Printer;

    .prologue
    .line 198
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .registers 6
    .param p1, "pr"    # Landroid/util/Printer;
    .param p2, "bufferLen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    sget-object v0, Lcom/android/internal/util/FastPrintWriter;->sDummyWriter:Ljava/io/Writer;

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 216
    if-nez p1, :cond_12

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_12
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 220
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 221
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 222
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 223
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 224
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 225
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 226
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 64
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 82
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    sget-object v0, Lcom/android/internal/util/FastPrintWriter;->sDummyWriter:Ljava/io/Writer;

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 104
    if-nez p1, :cond_11

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_11
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 108
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 109
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 110
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 111
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 112
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 113
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 114
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "wr"    # Ljava/io/Writer;

    .prologue
    .line 133
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 4
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 151
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .registers 6
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    sget-object v0, Lcom/android/internal/util/FastPrintWriter;->sDummyWriter:Ljava/io/Writer;

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 173
    if-nez p1, :cond_11

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_11
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 177
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 178
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 179
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 180
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 181
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 182
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 183
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 185
    return-void
.end method

.method private appendLocked(C)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 282
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 283
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 284
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 286
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    .line 287
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 288
    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 292
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_15

    .line 293
    add-int v1, p2, p3

    .line 294
    .local v1, "end":I
    :goto_6
    if-ge p2, v1, :cond_2b

    .line 295
    add-int v2, p2, v0

    .line 296
    .local v2, "next":I
    if-ge v2, v1, :cond_12

    move v4, v0

    :goto_d
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 297
    move p2, v2

    .line 298
    goto :goto_6

    .line 296
    :cond_12
    sub-int v4, v1, p2

    goto :goto_d

    .line 301
    .end local v1    # "end":I
    .end local v2    # "next":I
    :cond_15
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 302
    .local v3, "pos":I
    add-int v4, v3, p3

    if-le v4, v0, :cond_20

    .line 303
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 304
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 306
    :cond_20
    add-int v4, p2, p3

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 307
    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 308
    .end local v3    # "pos":I
    :cond_2b
    return-void
.end method

.method private appendLocked([CII)V
    .registers 9
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 312
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_15

    .line 313
    add-int v1, p2, p3

    .line 314
    .local v1, "end":I
    :goto_6
    if-ge p2, v1, :cond_29

    .line 315
    add-int v2, p2, v0

    .line 316
    .local v2, "next":I
    if-ge v2, v1, :cond_12

    move v4, v0

    :goto_d
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    .line 317
    move p2, v2

    .line 318
    goto :goto_6

    .line 316
    :cond_12
    sub-int v4, v1, p2

    goto :goto_d

    .line 321
    .end local v1    # "end":I
    .end local v2    # "next":I
    :cond_15
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 322
    .local v3, "pos":I
    add-int v4, v3, p3

    if-le v4, v0, :cond_20

    .line 323
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 324
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 326
    :cond_20
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 327
    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 328
    .end local v3    # "pos":I
    :cond_29
    return-void
.end method

.method private flushBytesLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "position":I
    if-lez v0, :cond_1e

    .line 333
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 334
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 337
    :cond_1e
    return-void
.end method

.method private flushLocked()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 341
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lez v5, :cond_46

    .line 342
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_47

    .line 343
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-static {v5, v9, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 344
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 346
    .local v3, "result":Ljava/nio/charset/CoderResult;
    :goto_1a
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 347
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 348
    :cond_2a
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 349
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 350
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 351
    goto :goto_1a

    .line 355
    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 356
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 374
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :goto_44
    iput v9, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 376
    :cond_46
    return-void

    .line 357
    :cond_47
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v5, :cond_5a

    .line 358
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V

    .line 359
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    goto :goto_44

    .line 361
    :cond_5a
    const/4 v2, 0x0

    .line 362
    .local v2, "nonEolOff":I
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 363
    .local v4, "sepLen":I
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-ge v4, v5, :cond_85

    move v1, v4

    .line 364
    .local v1, "len":I
    :goto_66
    if-ge v2, v1, :cond_88

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_88

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 363
    .end local v1    # "len":I
    :cond_85
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    goto :goto_66

    .line 368
    .restart local v1    # "len":I
    :cond_88
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lt v2, v5, :cond_94

    .line 369
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v6, ""

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 371
    :cond_94
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v8, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v8, v2

    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_44
.end method

.method private final initDefaultEncoder()V
    .registers 3

    .prologue
    .line 275
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 276
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 277
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 278
    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .registers 5
    .param p1, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_19

    .line 236
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 237
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 238
    return-void

    .line 233
    :catch_19
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 654
    if-nez p1, :cond_4

    .line 655
    const-string p1, "null"

    .line 657
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "output":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    .line 659
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 250
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_6
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    monitor-exit v1

    return v0

    .line 252
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected clearError()V
    .registers 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public close()V
    .registers 4

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 404
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_11

    .line 405
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_1b
    .catchall {:try_start_3 .. :try_end_f} :catchall_20

    .line 412
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_20

    .line 413
    return-void

    .line 406
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_f

    .line 407
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_20

    goto :goto_f

    .line 409
    :catch_1b
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    goto :goto_f

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_20

    throw v1
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 388
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_11

    .line 389
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_1b
    .catchall {:try_start_3 .. :try_end_f} :catchall_20

    .line 396
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_20

    .line 397
    return-void

    .line 390
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_f

    .line 391
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_20

    goto :goto_f

    .line 393
    :catch_1b
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    goto :goto_f

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_20

    throw v1
.end method

.method public print(C)V
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 446
    :goto_6
    :try_start_6
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_8

    throw v0

    .line 444
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public print(I)V
    .registers 3
    .param p1, "inum"    # I

    .prologue
    .line 476
    if-nez p1, :cond_8

    .line 477
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 481
    :goto_7
    return-void

    .line 479
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_7
.end method

.method public print(J)V
    .registers 6
    .param p1, "lnum"    # J

    .prologue
    .line 485
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 486
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 490
    :goto_b
    return-void

    .line 488
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_b
.end method

.method public print(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 461
    if-nez p1, :cond_9

    .line 462
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 464
    :cond_9
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_16
    .catchall {:try_start_d .. :try_end_14} :catchall_1b

    .line 470
    :goto_14
    :try_start_14
    monitor-exit v2

    .line 471
    return-void

    .line 467
    :catch_16
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    goto :goto_14

    .line 470
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public print([C)V
    .registers 5
    .param p1, "charArray"    # [C

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    const/4 v0, 0x0

    :try_start_4
    array-length v2, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_d
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 429
    :goto_8
    :try_start_8
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v0

    .line 427
    :catch_d
    move-exception v0

    goto :goto_8
.end method

.method public println()V
    .registers 6

    .prologue
    .line 496
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 498
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 499
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_16

    .line 500
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_18
    .catchall {:try_start_3 .. :try_end_16} :catchall_1d

    .line 505
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v2

    .line 506
    return-void

    .line 502
    :catch_18
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    goto :goto_16

    .line 505
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public println(C)V
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 542
    return-void
.end method

.method public println(I)V
    .registers 3
    .param p1, "inum"    # I

    .prologue
    .line 510
    if-nez p1, :cond_8

    .line 511
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 515
    :goto_7
    return-void

    .line 513
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_7
.end method

.method public println(J)V
    .registers 6
    .param p1, "lnum"    # J

    .prologue
    .line 519
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 520
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    :goto_b
    return-void

    .line 522
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_b
.end method

.method public println([C)V
    .registers 2
    .param p1, "chars"    # [C

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 533
    return-void
.end method

.method protected setError()V
    .registers 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "oneChar"    # I

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    int-to-char v0, p1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_c
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 588
    :goto_7
    :try_start_7
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_9

    throw v0

    .line 586
    :catch_c
    move-exception v0

    goto :goto_7
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 604
    :goto_b
    :try_start_b
    monitor-exit v1

    .line 605
    return-void

    .line 604
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0

    .line 602
    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 628
    :goto_6
    :try_start_6
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_8

    throw v0

    .line 626
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public write([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 568
    :goto_6
    :try_start_6
    monitor-exit v1

    .line 569
    return-void

    .line 568
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_8

    throw v0

    .line 566
    :catch_b
    move-exception v0

    goto :goto_6
.end method
