.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 75
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_20

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 79
    :cond_20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    .line 58
    if-nez p1, :cond_10

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 64
    :goto_f
    return-void

    .line 62
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    .line 63
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_f
.end method

.method private static compress([B)[B
    .registers 9
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "resultStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 209
    .local v3, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_37
    .catchall {:try_start_3 .. :try_end_8} :catchall_57

    .line 210
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "resultStream":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_7e
    .catchall {:try_start_8 .. :try_end_d} :catchall_77

    .line 211
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .local v4, "zipper":Ljava/util/zip/GZIPOutputStream;
    :try_start_d
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_81
    .catchall {:try_start_d .. :try_end_10} :catchall_7a

    .line 216
    if-eqz v4, :cond_15

    .line 217
    :try_start_12
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_23

    :cond_15
    move-object v3, v4

    .line 225
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :goto_16
    if-eqz v2, :cond_1b

    .line 226
    :try_start_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_2d

    :cond_1b
    move-object v1, v2

    .line 234
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :goto_1c
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :cond_22
    :goto_22
    return-object v5

    .line 219
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_23
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 221
    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2d
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 230
    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_37
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_38
    if-eqz v3, :cond_3d

    .line 217
    :try_start_3a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4d

    .line 225
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_22

    .line 226
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_22

    .line 228
    :catch_43
    move-exception v0

    .line 229
    const/4 v1, 0x0

    .line 230
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 219
    :catch_4d
    move-exception v0

    .line 220
    const/4 v3, 0x0

    .line 221
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v5

    .line 216
    :goto_58
    if-eqz v3, :cond_5d

    .line 217
    :try_start_5a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_63

    .line 225
    :cond_5d
    :goto_5d
    if-eqz v1, :cond_62

    .line 226
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6d

    .line 232
    :cond_62
    :goto_62
    throw v5

    .line 219
    :catch_63
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 221
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6d
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 230
    const-string v6, "InputMethodSubtypeArray"

    const-string v7, "Failed to close the stream."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catchall_77
    move-exception v5

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_58

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catchall_7a
    move-exception v5

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_58

    .line 212
    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    :catch_7e
    move-exception v0

    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_38

    .end local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    :catch_81
    move-exception v0

    move-object v3, v4

    .end local v4    # "zipper":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "zipper":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "resultStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "resultStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_38
.end method

.method private static decompress([BI)[B
    .registers 14
    .param p0, "data"    # [B
    .param p1, "expectedSize"    # I

    .prologue
    const/4 v9, 0x0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v7, 0x0

    .line 241
    .local v7, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_5f
    .catchall {:try_start_3 .. :try_end_8} :catchall_7e

    .line 242
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_8
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_a3
    .catchall {:try_start_8 .. :try_end_d} :catchall_9c

    .line 243
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .local v8, "unzipper":Ljava/util/zip/GZIPInputStream;
    :try_start_d
    new-array v5, p1, [B

    .line 244
    .local v5, "result":[B
    const/4 v6, 0x0

    .line 245
    .local v6, "totalReadBytes":I
    :goto_10
    array-length v10, v5

    if-ge v6, v10, :cond_1c

    .line 246
    array-length v10, v5

    sub-int v4, v10, v6

    .line 247
    .local v4, "restBytes":I
    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_a6
    .catchall {:try_start_d .. :try_end_19} :catchall_9f

    move-result v3

    .line 248
    .local v3, "readBytes":I
    if-gez v3, :cond_2c

    .line 253
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :cond_1c
    if-eq p1, v6, :cond_40

    .line 261
    if-eqz v8, :cond_23

    .line 262
    :try_start_20
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2e

    .line 269
    :cond_23
    :goto_23
    if-eqz v2, :cond_28

    .line 270
    :try_start_25
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_37

    :cond_28
    :goto_28
    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    move-object v5, v9

    .line 275
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    :goto_2b
    return-object v5

    .line 251
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "readBytes":I
    .restart local v4    # "restBytes":I
    .restart local v5    # "result":[B
    .restart local v6    # "totalReadBytes":I
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :cond_2c
    add-int/2addr v6, v3

    .line 252
    goto :goto_10

    .line 264
    .end local v3    # "readBytes":I
    .end local v4    # "restBytes":I
    :catch_2e
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_37
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    :cond_40
    if-eqz v8, :cond_45

    .line 262
    :try_start_42
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_4d

    .line 269
    :cond_45
    :goto_45
    if-eqz v2, :cond_4a

    .line 270
    :try_start_47
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_56

    :cond_4a
    :goto_4a
    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .line 275
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_2b

    .line 264
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_4d
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to close the stream."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "InputMethodSubtypeArray"

    const-string v10, "Failed to close the stream."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v5    # "result":[B
    .end local v6    # "totalReadBytes":I
    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_5f
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_60
    if-eqz v7, :cond_65

    .line 262
    :try_start_62
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6c

    .line 269
    :cond_65
    :goto_65
    if-eqz v1, :cond_6a

    .line 270
    :try_start_67
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_75

    :cond_6a
    :goto_6a
    move-object v5, v9

    .line 275
    goto :goto_2b

    .line 264
    :catch_6c
    move-exception v0

    .line 265
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 272
    :catch_75
    move-exception v0

    .line 273
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7e
    move-exception v9

    .line 261
    :goto_7f
    if-eqz v7, :cond_84

    .line 262
    :try_start_81
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8a

    .line 269
    :cond_84
    :goto_84
    if-eqz v1, :cond_89

    .line 270
    :try_start_86
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_93

    .line 275
    :cond_89
    :goto_89
    throw v9

    .line 264
    :catch_8a
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "InputMethodSubtypeArray"

    const-string v11, "Failed to close the stream."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_9c
    move-exception v9

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7f

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catchall_9f
    move-exception v9

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_7f

    .line 257
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_a3
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_60

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    :catch_a6
    move-exception v0

    move-object v7, v8

    .end local v8    # "unzipper":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "unzipper":Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_60
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .registers 3
    .param p0, "array"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result-object v1

    .line 183
    if-eqz v0, :cond_13

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    const/4 v0, 0x0

    :cond_13
    return-object v1

    .line 183
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1b

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    const/4 v0, 0x0

    :cond_1b
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 196
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    .line 198
    if-eqz v0, :cond_1c

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    const/4 v0, 0x0

    :cond_1c
    return-object v1

    .line 198
    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_24

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    const/4 v0, 0x0

    :cond_24
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 136
    if-ltz p1, :cond_6

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_c

    .line 137
    :cond_6
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 139
    :cond_c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 140
    .local v1, "instance":[Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v1, :cond_2e

    .line 141
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_13
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 143
    if-nez v1, :cond_2d

    .line 144
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    .line 147
    .local v0, "decompressedData":[B
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 149
    if-eqz v0, :cond_31

    .line 150
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 155
    :goto_2b
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    .line 157
    .end local v0    # "decompressedData":[B
    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_3d

    .line 159
    :cond_2e
    aget-object v2, v1, p1

    return-object v2

    .line 152
    .restart local v0    # "decompressedData":[B
    :cond_31
    :try_start_31
    const-string v2, "InputMethodSubtypeArray"

    const-string v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2b

    .line 157
    .end local v0    # "decompressedData":[B
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 91
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_a

    .line 92
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_9
    return-void

    .line 96
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 97
    .local v0, "compressedData":[B
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 98
    .local v2, "decompressedSize":I
    if-nez v0, :cond_36

    if-nez v2, :cond_36

    .line 99
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_15
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 101
    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 102
    if-nez v0, :cond_35

    if-nez v2, :cond_35

    .line 103
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    .line 104
    .local v1, "decompressedData":[B
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    .line 105
    if-nez v0, :cond_46

    .line 106
    const/4 v2, -0x1

    .line 107
    const-string v3, "InputMethodSubtypeArray"

    const-string v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_31
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    .line 112
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    .line 114
    .end local v1    # "decompressedData":[B
    :cond_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_48

    .line 117
    :cond_36
    if-eqz v0, :cond_4b

    if-lez v2, :cond_4b

    .line 118
    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    .line 109
    .restart local v1    # "decompressedData":[B
    :cond_46
    :try_start_46
    array-length v2, v1

    goto :goto_31

    .line 114
    .end local v1    # "decompressedData":[B
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    throw v3

    .line 122
    :cond_4b
    const-string v3, "InputMethodSubtypeArray"

    const-string v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method
