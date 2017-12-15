.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "bitmapPath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 437
    const/4 v3, 0x2

    .line 438
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 440
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 445
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 448
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 454
    :try_start_c
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "ClipboardServiceEx"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_17
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_79

    move-result-object v1

    .line 464
    :cond_1b
    :goto_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_45
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_6c

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_6c
    :goto_6c
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_86

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_86

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 456
    :catch_79
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 471
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_86
    add-int/lit8 v3, v3, -0x1

    .line 475
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 479
    const/4 v4, 0x0

    :try_start_8b
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 480
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_92

    move-result-object v1

    .line 487
    :cond_91
    :goto_91
    return-object v1

    .line 481
    :catch_92
    move-exception v2

    .line 483
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_91

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 558
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 586
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createTemporaryThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 302
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 305
    .local v0, "Result":Z
    const/16 v7, 0x14a

    const/16 v8, 0xf0

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 307
    if-nez v2, :cond_2c

    .line 308
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 337
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 312
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 315
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_6d
    .catchall {:try_start_2d .. :try_end_32} :catchall_bc

    .line 317
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 318
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_eb
    .catchall {:try_start_34 .. :try_end_3b} :catchall_e8

    .line 319
    const/4 v0, 0x1

    .line 327
    :cond_3c
    if-eqz v5, :cond_41

    .line 328
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 336
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 337
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 330
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 331
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 334
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_42

    .line 322
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6d
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/Exception;
    :goto_6e
    :try_start_6e
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_8e

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_8e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_6e .. :try_end_91} :catchall_bc

    .line 327
    if-eqz v4, :cond_42

    .line 328
    :try_start_93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_42

    .line 330
    :catch_97
    move-exception v3

    .line 331
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b8

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_b8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 326
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_bc
    move-exception v7

    .line 327
    :goto_bd
    if-eqz v4, :cond_c2

    .line 328
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 333
    :cond_c2
    :goto_c2
    throw v7

    .line 330
    :catch_c3
    move-exception v3

    .line 331
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_e4

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_e4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c2

    .line 326
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_e8
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_bd

    .line 322
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_eb
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public createThumnailFromData(Landroid/content/ContentResolver;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;
    .registers 19
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, "htmlClip":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    if-eqz p2, :cond_50

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2e

    move-object/from16 v6, p2

    .line 349
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 358
    if-nez v6, :cond_70

    .line 359
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_2c

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because htmlClip was not set. htmlClip :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2c
    const/4 v10, 0x0

    .line 430
    :goto_2d
    return-object v10

    .line 351
    :cond_2e
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_4e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_4e
    const/4 v10, 0x0

    goto :goto_2d

    .line 355
    :cond_50
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_6e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_6e
    const/4 v10, 0x0

    goto :goto_2d

    .line 363
    :cond_70
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_7b

    const-string v12, "ClipboardServiceEx"

    const-string v13, "Create preview image for html data in createThumnailFromData()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_7b
    const/4 v1, 0x0

    .line 365
    .local v1, "bm":Landroid/graphics/Bitmap;
    const-string v7, ""

    .line 367
    .local v7, "sFileName":Ljava/lang/String;
    :try_start_7e
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_95} :catch_ac

    move-result-object v7

    .line 376
    :cond_96
    :goto_96
    if-eqz v7, :cond_ce

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_ce

    .line 377
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_aa

    const-string v12, "ClipboardServiceEx"

    const-string v13, "getFirstImage : FileName is empty."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_aa
    const/4 v10, 0x0

    goto :goto_2d

    .line 372
    :catch_ac
    move-exception v3

    .line 373
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_96

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFirstImage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 381
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ce
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v12, :cond_eb

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sFileName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_eb
    if-eqz v7, :cond_19f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-le v12, v13, :cond_19f

    const/4 v12, 0x0

    const/4 v13, 0x7

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_19f

    .line 385
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v12, :cond_11e

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloadSimpleBitmap : Webpath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_11e
    const/16 v12, 0x99

    const/16 v13, 0x56

    :try_start_122
    invoke-static {v7, v12, v13}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_171

    move-result-object v1

    .line 400
    :cond_126
    :goto_126
    if-eqz v1, :cond_276

    .line 401
    const-string v9, "/data/clipboard/temp/"

    .line 402
    .local v9, "tempFolderPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v8, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 405
    new-instance v2, Ljava/io/File;

    const-string/jumbo v12, "previewhtemlclipboarditem"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .local v2, "createFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, "thumFullPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 409
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_158
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15d} :catch_1f8
    .catchall {:try_start_158 .. :try_end_15d} :catchall_24a

    .line 410
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_166

    .line 411
    :try_start_15f
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x32

    invoke-virtual {v1, v12, v13, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_166} :catch_27c
    .catchall {:try_start_15f .. :try_end_166} :catchall_279

    .line 418
    :cond_166
    if-eqz v5, :cond_16b

    .line 419
    :try_start_168
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_1d1

    :cond_16b
    move-object v4, v5

    .line 427
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_16c
    :goto_16c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2d

    .line 389
    .end local v2    # "createFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "tempFolder":Ljava/io/File;
    .end local v9    # "tempFolderPath":Ljava/lang/String;
    .end local v10    # "thumFullPath":Ljava/lang/String;
    :catch_171
    move-exception v3

    .line 390
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_19c

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumnailFromData : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - Error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_19c
    const/4 v10, 0x0

    goto/16 :goto_2d

    .line 394
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_19f
    if-eqz p1, :cond_126

    if-eqz v7, :cond_126

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_126

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "content://"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_126

    .line 395
    const-string v12, "ClipboardServiceEx"

    const-string v13, "getUriPathBitmap..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 397
    .local v11, "uri":Landroid/net/Uri;
    const/16 v12, 0x99

    const/16 v13, 0x56

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_126

    .line 421
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v2    # "createFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFolder":Ljava/io/File;
    .restart local v9    # "tempFolderPath":Ljava/lang/String;
    .restart local v10    # "thumFullPath":Ljava/lang/String;
    :catch_1d1
    move-exception v3

    .line 422
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_1f2

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1f2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 425
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_16c

    .line 413
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1f8
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/Exception;
    :goto_1f9
    :try_start_1f9
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_21a

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "makeDataValue~Exception :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_21a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21d
    .catchall {:try_start_1f9 .. :try_end_21d} :catchall_24a

    .line 418
    if-eqz v4, :cond_16c

    .line 419
    :try_start_21f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_222} :catch_224

    goto/16 :goto_16c

    .line 421
    :catch_224
    move-exception v3

    .line 422
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v12, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v12, :cond_245

    const-string v12, "ClipboardServiceEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_245
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16c

    .line 417
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_24a
    move-exception v12

    .line 418
    :goto_24b
    if-eqz v4, :cond_250

    .line 419
    :try_start_24d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_250} :catch_251

    .line 424
    :cond_250
    :goto_250
    throw v12

    .line 421
    :catch_251
    move-exception v3

    .line 422
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v13, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v13, :cond_272

    const-string v13, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_272
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_250

    .line 430
    .end local v2    # "createFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "tempFolder":Ljava/io/File;
    .end local v9    # "tempFolderPath":Ljava/lang/String;
    .end local v10    # "thumFullPath":Ljava/lang/String;
    :cond_276
    const/4 v10, 0x0

    goto/16 :goto_2d

    .line 417
    .restart local v2    # "createFile":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "tempFolder":Ljava/io/File;
    .restart local v9    # "tempFolderPath":Ljava/lang/String;
    .restart local v10    # "thumFullPath":Ljava/lang/String;
    :catchall_279
    move-exception v12

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_24b

    .line 413
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_27c
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1f9
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 213
    .local v0, "Result":Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    if-nez v2, :cond_2c

    .line 217
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 246
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_2b
    return v1

    .line 221
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_2c
    const/4 v4, 0x0

    .line 224
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_6d
    .catchall {:try_start_2d .. :try_end_32} :catchall_bc

    .line 226
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 227
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_eb
    .catchall {:try_start_34 .. :try_end_3b} :catchall_e8

    .line 228
    const/4 v0, 0x1

    .line 236
    :cond_3c
    if-eqz v5, :cond_41

    .line 237
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 245
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 246
    .restart local v1    # "Result":I
    goto :goto_2b

    .line 239
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 243
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_42

    .line 231
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6d
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/Exception;
    :goto_6e
    :try_start_6e
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_8e

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_8e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_6e .. :try_end_91} :catchall_bc

    .line 236
    if-eqz v4, :cond_42

    .line 237
    :try_start_93
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_42

    .line 239
    :catch_97
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b8

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_b8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_bc
    move-exception v7

    .line 236
    :goto_bd
    if-eqz v4, :cond_c2

    .line 237
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 242
    :cond_c2
    :goto_c2
    throw v7

    .line 239
    :catch_c3
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_e4

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_e4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c2

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_e8
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_bd

    .line 231
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_eb
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public createThumnailImage(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "thumFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 260
    .local v0, "Result":Z
    if-nez v2, :cond_27

    .line 261
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_25

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move v1, v0

    .line 290
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_26
    return v1

    .line 265
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_27
    const/4 v4, 0x0

    .line 268
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_68
    .catchall {:try_start_28 .. :try_end_2d} :catchall_b7

    .line 270
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_37

    .line 271
    :try_start_2f
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_e6
    .catchall {:try_start_2f .. :try_end_36} :catchall_e3

    .line 272
    const/4 v0, 0x1

    .line 280
    :cond_37
    if-eqz v5, :cond_3c

    .line 281
    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_42

    :cond_3c
    move-object v4, v5

    .line 289
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 290
    .restart local v1    # "Result":I
    goto :goto_26

    .line 283
    .end local v1    # "Result":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_42
    move-exception v3

    .line 284
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_63

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_63
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 287
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3d

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    :catch_68
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    :goto_69
    :try_start_69
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_89

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumnailImage~Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_89
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_69 .. :try_end_8c} :catchall_b7

    .line 280
    if-eqz v4, :cond_3d

    .line 281
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_3d

    .line 283
    :catch_92
    move-exception v3

    .line 284
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_b3

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .line 279
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_b7
    move-exception v7

    .line 280
    :goto_b8
    if-eqz v4, :cond_bd

    .line 281
    :try_start_ba
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    .line 286
    :cond_bd
    :goto_bd
    throw v7

    .line 283
    :catch_be
    move-exception v3

    .line 284
    .restart local v3    # "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_df

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_df
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bd

    .line 279
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_e3
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b8

    .line 275
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_e6
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_69
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 603
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 604
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 617
    :cond_9
    :goto_9
    return-void

    .line 608
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 609
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 610
    .local v4, "list":[Ljava/io/File;
    if-eqz v4, :cond_9

    .line 611
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_19
    if-ge v2, v3, :cond_23

    aget-object v1, v0, v2

    .line 612
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 614
    .end local v1    # "f":Ljava/io/File;
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 20
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "Result":Z
    const/4 v11, 0x0

    .line 81
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 84
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 85
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v15, -0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v4, v5, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 86
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_1b} :catch_5a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_a7

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 97
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :goto_1c
    :try_start_1c
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_23} :catch_ad

    .line 104
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_27

    if-nez v14, :cond_11e

    .line 105
    :cond_27
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_4d

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "break fileCopy()...because of inputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", or outputStream :"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4d
    if-eqz v14, :cond_52

    .line 108
    :try_start_4f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 110
    :cond_52
    if-eqz v11, :cond_57

    .line 111
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_fb

    :cond_57
    :goto_57
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 150
    .end local v2    # "Result":Z
    .local v9, "Result":I
    :goto_59
    return v9

    .line 88
    .end local v9    # "Result":I
    .restart local v2    # "Result":Z
    :catch_5a
    move-exception v10

    .line 89
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_7b

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_7b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_a5

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    move v9, v2

    .line 91
    .restart local v9    # "Result":I
    goto :goto_59

    .line 92
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_a7
    move-exception v10

    .line 93
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1c

    .line 98
    .end local v10    # "e":Ljava/io/IOException;
    :catch_ad
    move-exception v10

    .line 99
    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_ce

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_ce
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_f8

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    move v9, v2

    .line 101
    .restart local v9    # "Result":I
    goto/16 :goto_59

    .line 113
    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_fb
    move-exception v10

    .line 114
    .local v10, "e":Ljava/io/IOException;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_57

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close~ IOException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 119
    .end local v10    # "e":Ljava/io/IOException;
    :cond_11e
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 120
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 122
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_126
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 123
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 125
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 126
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 128
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 129
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_13b} :catch_179
    .catchall {:try_start_126 .. :try_end_13b} :catchall_201

    .line 130
    const/4 v2, 0x1

    .line 139
    if-eqz v3, :cond_141

    :try_start_13e
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 140
    :cond_141
    if-eqz v8, :cond_146

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 141
    :cond_146
    if-eqz v11, :cond_14b

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 142
    :cond_14b
    if-eqz v14, :cond_150

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_150} :catch_154

    .end local v6    # "lSize":J
    :cond_150
    :goto_150
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    move v9, v2

    .line 150
    .restart local v9    # "Result":I
    goto/16 :goto_59

    .line 143
    .end local v9    # "Result":I
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "lSize":J
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_154
    move-exception v10

    .line 144
    .restart local v10    # "e":Ljava/io/IOException;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_175

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_175
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_150

    .line 131
    .end local v6    # "lSize":J
    .end local v10    # "e":Ljava/io/IOException;
    :catch_179
    move-exception v10

    .line 132
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_17a
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_19a

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ IOException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_19a
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1c4

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_17a .. :try_end_1c4} :catchall_201

    .line 134
    :cond_1c4
    const/4 v2, 0x0

    .line 139
    if-eqz v3, :cond_1ca

    :try_start_1c7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 140
    :cond_1ca
    if-eqz v8, :cond_1cf

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 141
    :cond_1cf
    if-eqz v11, :cond_1d4

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 142
    :cond_1d4
    if-eqz v14, :cond_150

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d9} :catch_1db

    goto/16 :goto_150

    .line 143
    :catch_1db
    move-exception v10

    .line 144
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1fc

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1fc
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_150

    .line 138
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_201
    move-exception v4

    .line 139
    if-eqz v3, :cond_207

    :try_start_204
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 140
    :cond_207
    if-eqz v8, :cond_20c

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 141
    :cond_20c
    if-eqz v11, :cond_211

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 142
    :cond_211
    if-eqz v14, :cond_216

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_216} :catch_217

    .line 146
    :cond_216
    :goto_216
    throw v4

    .line 143
    :catch_217
    move-exception v10

    .line 144
    .restart local v10    # "e":Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_238

    const-string v5, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "close : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_238
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_216
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 593
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 595
    .local v0, "list":[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 540
    const-string v1, ""

    .line 541
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "ext":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 543
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 547
    :goto_17
    return-object v1

    .line 545
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 498
    const/4 v5, 0x0

    .line 499
    .local v5, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 500
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 502
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_3b
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_13} :catch_65
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_8f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_ba
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_13} :catch_e6
    .catchall {:try_start_3 .. :try_end_13} :catchall_112

    .line 504
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_157
    .catch Ljava/io/StreamCorruptedException; {:try_start_13 .. :try_end_18} :catch_14e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_18} :catch_145
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_13c
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_18} :catch_135
    .catchall {:try_start_13 .. :try_end_18} :catchall_12e

    .line 505
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_18
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_15b
    .catch Ljava/io/StreamCorruptedException; {:try_start_18 .. :try_end_1b} :catch_152
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_149
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_140
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_138
    .catchall {:try_start_18 .. :try_end_1b} :catchall_131

    move-result-object v5

    .line 523
    if-eqz v4, :cond_21

    :try_start_1e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_21
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_29

    :cond_26
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 530
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "result":Ljava/lang/Object;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_28
    :goto_28
    return-object v5

    .line 525
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "result":Ljava/lang/Object;
    :catch_29
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_35

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 529
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_28

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3c
    :try_start_3c
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_47

    const-string v6, "ClipboardServiceEx"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_47
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_112

    .line 523
    if-eqz v3, :cond_4f

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_4f
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_55

    goto :goto_28

    .line 525
    :catch_55
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_61

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 509
    .end local v0    # "e":Ljava/io/IOException;
    :catch_65
    move-exception v0

    .line 510
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_66
    :try_start_66
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_71

    const-string v6, "ClipboardServiceEx"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_71
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_112

    .line 523
    if-eqz v3, :cond_79

    :try_start_76
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_79
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7e} :catch_7f

    goto :goto_28

    .line 525
    :catch_7f
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_8b

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_8b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8f
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_90
    :try_start_90
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_9b

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_9b
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_90 .. :try_end_9e} :catchall_112

    .line 523
    if-eqz v3, :cond_a3

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_a3
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a8} :catch_a9

    goto :goto_28

    .line 525
    :catch_a9
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b5

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_b5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_28

    .line 515
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v0

    .line 516
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_bb
    :try_start_bb
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_c6

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_c6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_112

    .line 523
    if-eqz v3, :cond_ce

    :try_start_cb
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_ce
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d3} :catch_d5

    goto/16 :goto_28

    .line 525
    :catch_d5
    move-exception v0

    .line 526
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e1

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_e1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_28

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    :catch_e6
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/ClassCastException;
    :goto_e7
    :try_start_e7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_f2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassCastException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_f2
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_f5
    .catchall {:try_start_e7 .. :try_end_f5} :catchall_112

    .line 523
    if-eqz v3, :cond_fa

    :try_start_f7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_fa
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_ff} :catch_101

    goto/16 :goto_28

    .line 525
    :catch_101
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_10d

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_10d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_28

    .line 522
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_112
    move-exception v6

    .line 523
    :goto_113
    if-eqz v3, :cond_118

    :try_start_115
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 524
    :cond_118
    if-eqz v1, :cond_11d

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11d} :catch_11e

    .line 528
    :cond_11d
    :goto_11d
    throw v6

    .line 525
    :catch_11e
    move-exception v0

    .line 526
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_12a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "close IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_12a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11d

    .line 522
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_12e
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_113

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_131
    move-exception v6

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_113

    .line 518
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_135
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_e7

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_138
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_e7

    .line 515
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_13c
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_bb

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_140
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_bb

    .line 512
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_145
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_90

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_149
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_90

    .line 509
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_14e
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_66

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_152
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_66

    .line 506
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_157
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3c

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_15b
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3c
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 572
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 575
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    if-nez p2, :cond_10

    .line 166
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_e
    const/4 v5, 0x0

    .line 193
    :cond_f
    :goto_f
    return v5

    .line 171
    :cond_10
    const/4 v5, 0x1

    .line 172
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 173
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 176
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_54
    .catchall {:try_start_13 .. :try_end_18} :catchall_ab

    .line 177
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_e3
    .catchall {:try_start_18 .. :try_end_1d} :catchall_dc

    .line 178
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1d
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_e7
    .catchall {:try_start_1d .. :try_end_20} :catchall_df

    .line 185
    if-eqz v4, :cond_25

    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 186
    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 190
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 187
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2d
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4e

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 191
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_f

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catch_54
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_76

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_55 .. :try_end_79} :catchall_ab

    .line 182
    const/4 v5, 0x0

    .line 185
    if-eqz v3, :cond_7f

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 186
    :cond_7f
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_84} :catch_85

    goto :goto_f

    .line 187
    :catch_85
    move-exception v0

    .line 188
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_a6

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_a6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ab
    move-exception v6

    .line 185
    :goto_ac
    if-eqz v3, :cond_b1

    :try_start_ae
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 186
    :cond_b1
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b6} :catch_b7

    .line 190
    :cond_b6
    :goto_b6
    throw v6

    .line 187
    :catch_b7
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_d8

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_d8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b6

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_dc
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_ac

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_df
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_ac

    .line 179
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_e3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_55

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_e7
    move-exception v0

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_55
.end method
