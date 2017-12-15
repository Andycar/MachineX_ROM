.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 428
    :cond_16
    const-string v3, "(invalid)"

    .line 439
    :goto_18
    return-object v3

    .line 430
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    .local v2, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 432
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 433
    .local v0, "c":C
    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 436
    :cond_39
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 439
    .end local v0    # "c":C
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, ".."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 476
    :cond_16
    const-string v3, "(invalid)"

    .line 487
    :goto_18
    return-object v3

    .line 478
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 479
    .local v2, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 481
    .local v0, "c":C
    invoke-static {v0}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 482
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 484
    :cond_39
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 487
    .end local v0    # "c":C
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 304
    .local v1, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .line 307
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_6
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_24

    .line 308
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v4, 0x80

    :try_start_12
    new-array v0, v4, [B

    .line 309
    .local v0, "buf":[B
    :cond_14
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_14

    .line 312
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_2f

    move-result-wide v4

    .line 314
    if-eqz v3, :cond_23

    .line 316
    :try_start_20
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2b

    .line 318
    :cond_23
    :goto_23
    return-wide v4

    .line 314
    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_24
    move-exception v4

    :goto_25
    if-eqz v2, :cond_2a

    .line 316
    :try_start_27
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2d

    .line 318
    :cond_2a
    :goto_2a
    throw v4

    .line 317
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_2b
    move-exception v6

    goto :goto_23

    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_2d
    move-exception v5

    goto :goto_2a

    .line 314
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_2f
    move-exception v4

    move-object v2, v3

    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_25
.end method

.method public static contains(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 373
    if-nez p1, :cond_4

    const/4 v2, 0x0

    .line 385
    :goto_3
    return v2

    .line 375
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "dirPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 379
    const/4 v2, 0x1

    goto :goto_3

    .line 382
    :cond_14
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_2f
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, "result":Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_13

    .line 167
    .local v1, "in":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result v2

    .line 169
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_d
    return v2

    .line 169
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_e
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_13

    .line 171
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_13
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 183
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 186
    :cond_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_2d

    .line 188
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_11
    new-array v0, v5, [B

    .line 190
    .local v0, "buffer":[B
    :goto_13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_2f

    .line 191
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 194
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_1e
    move-exception v5

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 196
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_3e

    .line 199
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 202
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v2

    .line 203
    :goto_2e
    return v4

    .line 194
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_2d

    .line 196
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_40

    .line 199
    :goto_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_2d

    .line 201
    const/4 v4, 0x1

    goto :goto_2e

    .line 197
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_3e
    move-exception v6

    goto :goto_29

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_40
    move-exception v5

    goto :goto_39
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .registers 10
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 390
    .local v2, "files":[Ljava/io/File;
    const/4 v5, 0x1

    .line 391
    .local v5, "success":Z
    if-eqz v2, :cond_3b

    .line 392
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v4, :cond_3b

    aget-object v1, v0, v3

    .line 393
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 394
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 396
    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_38

    .line 397
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v5, 0x0

    .line 392
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 402
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3b
    return v5
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)Z
    .registers 14
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAge"    # J

    .prologue
    .line 332
    if-ltz p1, :cond_8

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gez v6, :cond_10

    .line 333
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Constraints must be positive or 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 337
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_18

    const/4 v2, 0x0

    .line 361
    :cond_17
    return v2

    .line 340
    :cond_18
    new-instance v6, Landroid/os/FileUtils$1;

    invoke-direct {v6}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "deleted":Z
    move v5, p1

    .local v5, "i":I
    :goto_22
    array-length v6, v4

    if-ge v5, v6, :cond_17

    .line 350
    aget-object v3, v4, v5

    .line 353
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 354
    .local v0, "age":J
    cmp-long v6, v0, p2

    if-lez v6, :cond_54

    .line 355
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 356
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v2, 0x1

    .line 349
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_22
.end method

.method public static getUid(Ljava/lang/String;)I
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    .line 141
    :goto_6
    return v1

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 215
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidExtFilenameChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 406
    sparse-switch p0, :sswitch_data_8

    .line 411
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 409
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 406
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    if-eqz p0, :cond_e

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidFatFilenameChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 443
    if-ltz p0, :cond_8

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_8

    .line 459
    :goto_7
    :sswitch_7
    return v0

    .line 446
    :cond_8
    sparse-switch p0, :sswitch_data_e

    .line 459
    const/4 v0, 0x1

    goto :goto_7

    .line 446
    nop

    :sswitch_data_e
    .sparse-switch
        0x22 -> :sswitch_7
        0x2a -> :sswitch_7
        0x2f -> :sswitch_7
        0x3a -> :sswitch_7
        0x3c -> :sswitch_7
        0x3e -> :sswitch_7
        0x3f -> :sswitch_7
        0x5c -> :sswitch_7
        0x7c -> :sswitch_7
        0x7f -> :sswitch_7
    .end sparse-switch
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 231
    .local v5, "input":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 233
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 234
    .local v10, "size":J
    if-gtz p1, :cond_1a

    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_83

    if-nez p1, :cond_83

    .line 235
    :cond_1a
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_2c

    if-eqz p1, :cond_29

    move/from16 v0, p1

    int-to-long v14, v0

    cmp-long v13, v10, v14

    if-gez v13, :cond_2c

    :cond_29
    long-to-int v0, v10

    move/from16 p1, v0

    .line 236
    :cond_2c
    add-int/lit8 v13, p1, 0x1

    new-array v4, v13, [B

    .line 237
    .local v4, "data":[B
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .line 238
    .local v8, "length":I
    if-gtz v8, :cond_3f

    const-string v13, ""
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .end local v8    # "length":I
    :goto_3e
    return-object v13

    .line 239
    .restart local v8    # "length":I
    :cond_3f
    move/from16 v0, p1

    if-gt v8, v0, :cond_50

    :try_start_43
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 240
    :cond_50
    if-nez p2, :cond_61

    :try_start_52
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {v13, v4, v14, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 241
    :cond_61
    :try_start_61
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-direct {v14, v4, v15, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_11a

    move-result-object v13

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 242
    .end local v4    # "data":[B
    .end local v8    # "length":I
    :cond_83
    if-gez p1, :cond_f8

    .line 244
    const/4 v9, 0x0

    .line 245
    .local v9, "rolled":Z
    const/4 v6, 0x0

    .line 246
    .local v6, "last":[B
    const/4 v4, 0x0

    .line 248
    .restart local v4    # "data":[B
    :cond_88
    if-eqz v6, :cond_8b

    const/4 v9, 0x1

    .line 249
    :cond_8b
    move-object v12, v6

    .local v12, "tmp":[B
    move-object v6, v4

    move-object v4, v12

    .line 250
    if-nez v4, :cond_95

    move/from16 v0, p1

    neg-int v13, v0

    :try_start_93
    new-array v4, v13, [B

    .line 251
    :cond_95
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 252
    .local v7, "len":I
    array-length v13, v4

    if-eq v7, v13, :cond_88

    .line 254
    if-nez v6, :cond_a9

    if-gtz v7, :cond_a9

    const-string v13, ""
    :try_end_a2
    .catchall {:try_start_93 .. :try_end_a2} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 255
    :cond_a9
    if-nez v6, :cond_b8

    :try_start_ab
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3e

    .line 256
    :cond_b8
    if-lez v7, :cond_c7

    .line 257
    const/4 v9, 0x1

    .line 258
    const/4 v13, 0x0

    :try_start_bc
    array-length v14, v6

    sub-int/2addr v14, v7

    invoke-static {v6, v7, v6, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 259
    const/4 v13, 0x0

    array-length v14, v6

    sub-int/2addr v14, v7

    invoke-static {v4, v13, v6, v14, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 261
    :cond_c7
    if-eqz p2, :cond_cb

    if-nez v9, :cond_d8

    :cond_cb
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_d0
    .catchall {:try_start_bc .. :try_end_d0} :catchall_11a

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 262
    :cond_d8
    :try_start_d8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_d8 .. :try_end_ef} :catchall_11a

    move-result-object v13

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 264
    .end local v4    # "data":[B
    .end local v6    # "last":[B
    .end local v7    # "len":I
    .end local v9    # "rolled":Z
    .end local v12    # "tmp":[B
    :cond_f8
    :try_start_f8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .local v3, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    new-array v4, v13, [B

    .line 268
    .restart local v4    # "data":[B
    :cond_101
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 269
    .restart local v7    # "len":I
    if-lez v7, :cond_10b

    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 270
    :cond_10b
    array-length v13, v4

    if-eq v7, v13, :cond_101

    .line 271
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_111
    .catchall {:try_start_f8 .. :try_end_111} :catchall_11a

    move-result-object v13

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3e

    .line 274
    .end local v3    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "data":[B
    .end local v7    # "len":I
    .end local v10    # "size":J
    :catchall_11a
    move-exception v13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v13
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 6
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 511
    if-nez p2, :cond_4

    .line 517
    :cond_3
    :goto_3
    return-object v1

    .line 512
    :cond_4
    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "splice":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 491
    if-nez p2, :cond_4

    .line 493
    :cond_3
    :goto_3
    return-object v1

    .line 492
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 493
    .local v0, "result":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "beforeDir"    # Ljava/io/File;
    .param p1, "afterDir"    # Ljava/io/File;
    .param p2, "paths"    # [Ljava/lang/String;

    .prologue
    .line 497
    if-nez p2, :cond_4

    const/4 v1, 0x0

    .line 502
    :cond_3
    return-object v1

    .line 498
    :cond_4
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 499
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 500
    aget-object v2, p2, v0

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .registers 5
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 116
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_c

    .line 122
    if-gez p2, :cond_7

    if-ltz p3, :cond_a

    .line 124
    :cond_7
    :try_start_7
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_a} :catch_28

    .line 131
    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 117
    :catch_c
    move-exception v0

    .line 118
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    goto :goto_b

    .line 125
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_28
    move-exception v0

    .line 126
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    goto :goto_b
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_c

    .line 94
    if-gez p2, :cond_7

    if-ltz p3, :cond_a

    .line 96
    :cond_7
    :try_start_7
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_a} :catch_32

    .line 103
    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 89
    :catch_c
    move-exception v0

    .line 90
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chmod("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    goto :goto_b

    .line 97
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_32
    move-exception v0

    .line 98
    .restart local v0    # "e":Landroid/system/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    goto :goto_b
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 291
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 293
    return-void

    .line 291
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 151
    if-eqz p0, :cond_9

    .line 152
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    .line 154
    :cond_9
    const/4 v0, 0x1

    .line 157
    :goto_a
    return v0

    .line 155
    :catch_b
    move-exception v0

    .line 157
    const/4 v0, 0x0

    goto :goto_a
.end method
