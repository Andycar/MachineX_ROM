.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 70
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 72
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 293
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 299
    .end local v1    # "file":Ljava/io/File;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 307
    .end local v2    # "i":I
    .local v0, "bRet":Z
    :goto_20
    return v0

    .line 305
    .end local v0    # "bRet":Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "bRet":Z
    goto :goto_20
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 325
    .local v1, "run":Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 744 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 327
    .local v0, "myProcess":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 329
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 331
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 337
    .end local v0    # "myProcess":Ljava/lang/Process;
    .end local v1    # "run":Ljava/lang/Runtime;
    :catch_2c
    move-exception v2

    .line 349
    :cond_2d
    :goto_2d
    return-void

    .line 343
    :catch_2e
    move-exception v2

    goto :goto_2d
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 19
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 367
    move-object/from16 v10, p2

    .line 369
    .local v10, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 371
    .local v9, "myDirectory":Ljava/io/File;
    move-object/from16 v8, p3

    .line 373
    .local v8, "myDestination":Ljava/lang/String;
    const-string v0, ""

    .line 379
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v2, "dest":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 389
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 393
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 397
    .local v1, "b":[B
    const/4 v11, 0x0

    .line 399
    .local v11, "read":I
    :goto_29
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_79

    .line 401
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36
    .catchall {:try_start_8 .. :try_end_35} :catchall_d6

    goto :goto_29

    .line 413
    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v11    # "read":I
    :catch_36
    move-exception v4

    .line 417
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 421
    .local v6, "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_49

    .line 423
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 427
    :cond_49
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_d6

    .line 435
    if-eqz v10, :cond_51

    .line 437
    :try_start_4e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_bb

    .line 449
    :cond_51
    :goto_51
    :try_start_51
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_5a

    .line 451
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_c4

    .line 463
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 465
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_cd

    .line 477
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :cond_63
    :goto_63
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 483
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 487
    .restart local v6    # "length":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_78

    .line 489
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 493
    :cond_78
    return-void

    .line 405
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    .restart local v1    # "b":[B
    .restart local v2    # "dest":Ljava/io/File;
    .restart local v11    # "read":I
    :cond_79
    :try_start_79
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 407
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 409
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_88} :catch_36
    .catchall {:try_start_79 .. :try_end_88} :catchall_d6

    .line 435
    if-eqz v10, :cond_8d

    .line 437
    :try_start_8a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_a9

    .line 449
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_96

    .line 451
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_96} :catch_b2

    .line 463
    :cond_96
    :goto_96
    :try_start_96
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 465
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_63

    .line 469
    :catch_a0
    move-exception v3

    .line 471
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 441
    .end local v3    # "e":Ljava/io/IOException;
    :catch_a9
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b2
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 441
    .end local v1    # "b":[B
    .end local v2    # "dest":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "read":I
    .restart local v4    # "ex":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":J
    :catch_bb
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c4
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catch_cd
    move-exception v3

    .line 471
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 433
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":J
    :catchall_d6
    move-exception v12

    .line 435
    if-eqz v10, :cond_dc

    .line 437
    :try_start_d9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_ef

    .line 449
    :cond_dc
    :goto_dc
    :try_start_dc
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_e5

    .line 451
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e5} :catch_f8

    .line 463
    :cond_e5
    :goto_e5
    :try_start_e5
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_ee

    .line 465
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ee} :catch_101

    .line 473
    :cond_ee
    :goto_ee
    throw v12

    .line 441
    :catch_ef
    move-exception v3

    .line 443
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    :catch_f8
    move-exception v3

    .line 457
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5

    .line 469
    .end local v3    # "e":Ljava/io/IOException;
    :catch_101
    move-exception v3

    .line 471
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 23
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 499
    const/4 v8, 0x0

    .line 501
    .local v8, "fOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 503
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v14, p2

    .line 505
    .local v14, "myInputStream":Ljava/io/InputStream;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 506
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 511
    :try_start_22
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v5, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_106
    .catchall {:try_start_22 .. :try_end_2c} :catchall_d3

    .line 515
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .local v9, "fOut":Ljava/io/FileOutputStream;
    :try_start_2c
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_109
    .catchall {:try_start_2c .. :try_end_31} :catchall_ff

    .line 518
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/16 v16, 0x400

    :try_start_33
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 521
    .local v2, "b":[B
    const/4 v15, 0x0

    .line 523
    .local v15, "read":I
    :goto_38
    invoke-virtual {v14, v2}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_80

    .line 525
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_45} :catch_46
    .catchall {:try_start_33 .. :try_end_45} :catchall_102

    goto :goto_38

    .line 537
    .end local v2    # "b":[B
    .end local v15    # "read":I
    :catch_46
    move-exception v7

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 541
    .end local v5    # "dest":Ljava/io/File;
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v7, "ex":Ljava/lang/Exception;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    :goto_49
    :try_start_49
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 545
    .local v12, "length":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_5b

    .line 547
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 551
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_d3

    .line 559
    if-eqz v14, :cond_63

    .line 561
    :try_start_60
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_b8

    .line 573
    :cond_63
    :goto_63
    if-eqz v8, :cond_68

    .line 575
    :try_start_65
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_c1

    .line 587
    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    .line 589
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_ca

    .line 607
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    :cond_6d
    :goto_6d
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 611
    .restart local v12    # "length":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_7f

    .line 613
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 617
    :cond_7f
    return-void

    .line 529
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    .restart local v2    # "b":[B
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v15    # "read":I
    :cond_80
    :try_start_80
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 531
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 533
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_46
    .catchall {:try_start_80 .. :try_end_89} :catchall_102

    .line 559
    if-eqz v14, :cond_8e

    .line 561
    :try_start_8b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_9b

    .line 573
    :cond_8e
    :goto_8e
    if-eqz v9, :cond_93

    .line 575
    :try_start_90
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a4

    .line 587
    :cond_93
    :goto_93
    if-eqz v4, :cond_98

    .line 589
    :try_start_95
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_ad

    :cond_98
    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 597
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_6d

    .line 565
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_9b
    move-exception v6

    .line 567
    .local v6, "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 579
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a4
    move-exception v6

    .line 581
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 593
    .end local v6    # "e":Ljava/io/IOException;
    :catch_ad
    move-exception v6

    .line 595
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 599
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_6d

    .line 565
    .end local v2    # "b":[B
    .end local v5    # "dest":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "read":I
    .restart local v7    # "ex":Ljava/lang/Exception;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "length":J
    :catch_b8
    move-exception v6

    .line 567
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 579
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c1
    move-exception v6

    .line 581
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 593
    .end local v6    # "e":Ljava/io/IOException;
    :catch_ca
    move-exception v6

    .line 595
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 557
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    :catchall_d3
    move-exception v16

    .line 559
    :goto_d4
    if-eqz v14, :cond_d9

    .line 561
    :try_start_d6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_e4

    .line 573
    :cond_d9
    :goto_d9
    if-eqz v8, :cond_de

    .line 575
    :try_start_db
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_ed

    .line 587
    :cond_de
    :goto_de
    if-eqz v3, :cond_e3

    .line 589
    :try_start_e0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_f6

    .line 597
    :cond_e3
    :goto_e3
    throw v16

    .line 565
    :catch_e4
    move-exception v6

    .line 567
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d9

    .line 579
    .end local v6    # "e":Ljava/io/IOException;
    :catch_ed
    move-exception v6

    .line 581
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    .line 593
    .end local v6    # "e":Ljava/io/IOException;
    :catch_f6
    move-exception v6

    .line 595
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e3

    .line 557
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catchall_ff
    move-exception v16

    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_d4

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catchall_102
    move-exception v16

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_d4

    .line 537
    .end local v5    # "dest":Ljava/io/File;
    :catch_106
    move-exception v7

    goto/16 :goto_49

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_109
    move-exception v7

    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_49
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v9, 0x0

    .line 182
    .local v9, "settingContext":Landroid/content/Context;
    :try_start_8
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_33

    move-result-object v9

    .line 188
    :goto_f
    if-eqz v9, :cond_38

    .line 190
    const-string v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 191
    .local v6, "newFontDir":Ljava/io/File;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir object created : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "tmp":[Ljava/lang/String;
    if-nez v10, :cond_41

    .line 213
    const/4 v1, 0x0

    .line 265
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v6    # "newFontDir":Ljava/io/File;
    .end local v10    # "tmp":[Ljava/lang/String;
    :cond_32
    :goto_32
    return-object v1

    .line 183
    :catch_33
    move-exception v0

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 195
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    goto :goto_32

    .line 216
    .restart local v1    # "fontFile":Ljava/io/File;
    .restart local v6    # "newFontDir":Ljava/io/File;
    .restart local v10    # "tmp":[Ljava/lang/String;
    :cond_41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    array-length v11, v10

    if-ge v2, v11, :cond_4d

    .line 220
    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 228
    :cond_4d
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_93

    .line 229
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_5a
    :try_start_5a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 239
    .local v7, "run":Ljava/lang/Runtime;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 711 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 243
    .local v5, "myProcess":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 245
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_32

    .line 247
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8a} :catch_8a
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_8a} :catch_9b

    .line 253
    .end local v5    # "myProcess":Ljava/lang/Process;
    .end local v7    # "run":Ljava/lang/Runtime;
    .end local v8    # "s":Ljava/lang/String;
    :catch_8a
    move-exception v4

    .line 255
    .local v4, "ioEx":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 231
    .end local v4    # "ioEx":Ljava/io/IOException;
    :cond_93
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 259
    :catch_9b
    move-exception v3

    .line 261
    .local v3, "iEx":Ljava/lang/InterruptedException;
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, ""

    .line 110
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 118
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 120
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 124
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_72
    .catchall {:try_start_2 .. :try_end_42} :catchall_9d

    .line 137
    :try_start_42
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_4b

    .line 139
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_5e

    .line 151
    :cond_4b
    :goto_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 153
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_68

    .line 164
    .end local v1    # "dest":Ljava/io/File;
    :cond_54
    :goto_54
    const-string/jumbo v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 167
    return-void

    .line 143
    .restart local v1    # "dest":Ljava/io/File;
    :catch_5e
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catch_68
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 127
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v3

    .line 129
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_73
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_9d

    .line 137
    :try_start_76
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_7f

    .line 139
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_93

    .line 151
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_54

    .line 153
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_89

    goto :goto_54

    .line 157
    :catch_89
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_9d
    move-exception v4

    .line 137
    :try_start_9e
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_a7

    .line 139
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a7} :catch_b1

    .line 151
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_b0

    .line 153
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b0} :catch_bb

    .line 161
    :cond_b0
    :goto_b0
    throw v4

    .line 143
    :catch_b1
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catch_bb
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0
.end method
