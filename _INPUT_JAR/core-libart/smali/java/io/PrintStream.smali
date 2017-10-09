.class public Ljava/io/PrintStream;
.super Ljava/io/FilterOutputStream;
.source "PrintStream.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# instance fields
.field private autoFlush:Z

.field private encoding:Ljava/lang/String;

.field private ioError:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    if-nez p2, :cond_12

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_12
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 162
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1e
    iput-object p2, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    if-nez p1, :cond_d

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_d
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    if-nez p1, :cond_d

    .line 110
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "out == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_d
    if-nez p3, :cond_17

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "charsetName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_17
    iput-boolean p2, p0, Ljava/io/PrintStream;->autoFlush:Z

    .line 116
    :try_start_19
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 117
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_19 .. :try_end_25} :catch_25

    .line 119
    :catch_25
    move-exception v0

    .line 120
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_2c
    iput-object p3, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private newline()V
    .registers 2

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 365
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 618
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 626
    if-nez p1, :cond_8

    .line 627
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 631
    :goto_7
    return-object p0

    .line 629
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 652
    if-nez p1, :cond_4

    .line 653
    const-string p1, "null"

    .line 655
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 656
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

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
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    .line 214
    .local v0, "delegate":Ljava/io/OutputStream;
    if-nez v0, :cond_7

    .line 215
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    .line 219
    :goto_6
    return v1

    .line 218
    :cond_7
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 219
    iget-boolean v1, p0, Ljava/io/PrintStream;->ioError:Z

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/OutputStream;->checkError()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected clearError()V
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 228
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 238
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    if-eqz v1, :cond_10

    .line 240
    :try_start_8
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_12
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 246
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 242
    :catch_12
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_10

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_d

    .line 257
    :try_start_5
    iget-object v0, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 264
    :goto_a
    monitor-exit p0

    return-void

    .line 259
    :catch_c
    move-exception v0

    .line 263
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_a

    .line 255
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 6
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 307
    if-nez p2, :cond_a

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-virtual {v0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 311
    return-object p0
.end method

.method public print(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public print(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 385
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public print(F)V
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 392
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public print(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public print(J)V
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 406
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public declared-synchronized print(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 429
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_a

    .line 430
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 447
    :goto_8
    monitor-exit p0

    return-void

    .line 433
    :cond_a
    if-nez p1, :cond_15

    .line 434
    :try_start_c
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_8

    .line 429
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 439
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_21
    .catchall {:try_start_15 .. :try_end_20} :catchall_12

    goto :goto_8

    .line 444
    :catch_21
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    :try_start_22
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_12

    goto :goto_8

    .line 442
    .end local v0    # "e":Ljava/io/IOException;
    :cond_26
    :try_start_26
    iget-object v1, p0, Ljava/io/PrintStream;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_21
    .catchall {:try_start_26 .. :try_end_2f} :catchall_12

    goto :goto_8
.end method

.method public print(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 453
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public print([C)V
    .registers 5
    .param p1, "chars"    # [C

    .prologue
    .line 371
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V

    .line 461
    return-void
.end method

.method public println(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 474
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public println(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 481
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public println(F)V
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 488
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public println(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public println(J)V
    .registers 4
    .param p1, "l"    # J

    .prologue
    .line 502
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public declared-synchronized println(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Ljava/io/PrintStream;->newline()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 527
    monitor-exit p0

    return-void

    .line 525
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Z)V
    .registers 3
    .param p1, "b"    # Z

    .prologue
    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public println([C)V
    .registers 5
    .param p1, "chars"    # [C

    .prologue
    .line 467
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method protected setError()V
    .registers 2

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PrintStream;->ioError:Z

    .line 541
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .param p1, "oneByte"    # I

    .prologue
    .line 595
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v3, :cond_a

    .line 596
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    .line 610
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 600
    :cond_a
    :try_start_a
    iget-object v3, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 601
    and-int/lit16 v0, p1, 0xff

    .line 603
    .local v0, "b":I
    const/16 v3, 0xa

    if-eq v0, v3, :cond_19

    const/16 v3, 0x15

    if-ne v0, v3, :cond_2c

    :cond_19
    const/4 v2, 0x1

    .line 604
    .local v2, "isNewline":Z
    :goto_1a
    iget-boolean v3, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 605
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_24
    .catchall {:try_start_a .. :try_end_23} :catchall_29

    goto :goto_8

    .line 607
    .end local v0    # "b":I
    .end local v2    # "isNewline":Z
    :catch_24
    move-exception v1

    .line 608
    .local v1, "e":Ljava/io/IOException;
    :try_start_25
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_8

    .line 595
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 603
    .restart local v0    # "b":I
    :cond_2c
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public write([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 564
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 565
    monitor-enter p0

    .line 566
    :try_start_5
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_e

    .line 567
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    .line 568
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1c

    .line 579
    :goto_d
    return-void

    .line 571
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljava/io/PrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 572
    iget-boolean v1, p0, Ljava/io/PrintStream;->autoFlush:Z

    if-eqz v1, :cond_1a

    .line 573
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1f
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c

    .line 578
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    goto :goto_d

    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v1

    .line 575
    :catch_1f
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1c

    goto :goto_1a
.end method
