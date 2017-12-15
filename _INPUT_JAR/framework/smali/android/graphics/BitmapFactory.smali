.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DECODE_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "BitmapFactory"

.field static checkedPreferIPT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 839
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static checkPreferIPTToRGBA()V
    .registers 10

    .prologue
    const/4 v9, 0x1

    .line 841
    sget-boolean v7, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    if-nez v7, :cond_11

    .line 842
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 843
    .local v2, "activityThread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_11

    .line 844
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 845
    .local v3, "app":Landroid/app/Application;
    if-nez v3, :cond_12

    .line 871
    .end local v3    # "app":Landroid/app/Application;
    :cond_11
    :goto_11
    return-void

    .line 847
    .restart local v3    # "app":Landroid/app/Application;
    :cond_12
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 851
    sput-boolean v9, Landroid/graphics/BitmapFactory;->checkedPreferIPT:Z

    .line 853
    :try_start_1a
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 856
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_11

    .line 858
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 859
    .local v0, "aBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 862
    const-string v7, "index-palette-bitmaps-supported"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 863
    .local v1, "aValue":Z
    if-ne v1, v9, :cond_11

    .line 864
    invoke-static {}, Landroid/graphics/BitmapFactory;->nativeSetPreferIPTToRGBA()V
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_36} :catch_37

    goto :goto_11

    .line 865
    .end local v0    # "aBundle":Landroid/os/Bundle;
    .end local v1    # "aValue":Z
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_37
    move-exception v5

    .line 866
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "BitmapFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GFX Error checking checkPreferIPTToRGBA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 622
    or-int v1, p1, p2

    if-ltz v1, :cond_b

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_11

    .line 623
    :cond_b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 627
    :cond_11
    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    .line 632
    const-string v1, "decodeBitmap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 634
    :try_start_19
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 636
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_32

    if-eqz p3, :cond_32

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_32

    .line 637
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2d

    .line 641
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_2d
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 639
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_32
    :try_start_32
    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2d

    .line 641
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 420
    .local v12, "stream":Ljava/io/InputStream;
    if-eqz p0, :cond_9b

    .line 424
    const/4 v8, 0x0

    .line 426
    .local v8, "mimeType":Ljava/lang/String;
    :try_start_5
    const-string v14, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 427
    const-string v8, "application/vnd.oma.drm.content"

    .line 428
    new-instance v4, Landroid/drm/DrmManagerClient;

    const/4 v14, 0x0

    invoke-direct {v4, v14}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 429
    .local v4, "drmclient":Landroid/drm/DrmManagerClient;
    const/4 v12, 0x0

    .line 432
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 434
    .local v6, "fileLength":J
    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v10

    .line 436
    .local v10, "rightStatus":I
    if-nez v10, :cond_108

    .line 437
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v14, 0xa

    invoke-direct {v3, v14, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 438
    .local v3, "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v14, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v3, v14, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const-string v14, "LENGTH"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const-string/jumbo v15, "preview_option"

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    if-eqz v14, :cond_b4

    const-string/jumbo v14, "true"

    :goto_53
    invoke-virtual {v3, v15, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v4, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v9

    .line 445
    .local v9, "resultInfo":Landroid/drm/DrmInfo;
    const-string/jumbo v14, "status"

    invoke-virtual {v9, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, "status_req1":Ljava/lang/String;
    const-string v14, "BitmapFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "decodeFile :: processRequest status is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string/jumbo v14, "success"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e0

    .line 450
    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v14

    if-eqz v14, :cond_b7

    .line 451
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v12    # "stream":Ljava/io/InputStream;
    .local v13, "stream":Ljava/io/InputStream;
    move-object v12, v13

    .line 463
    .end local v3    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v11    # "status_req1":Ljava/lang/String;
    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    :goto_96
    if-eqz v4, :cond_9b

    .line 465
    invoke-virtual {v4}, Landroid/drm/DrmManagerClient;->release()V

    .line 476
    .end local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v6    # "fileLength":J
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v10    # "rightStatus":I
    :cond_9b
    :goto_9b
    if-eqz v12, :cond_a7

    .line 477
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v14, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 478
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a7} :catch_bf
    .catchall {:try_start_5 .. :try_end_a7} :catchall_101

    .line 492
    :cond_a7
    if-eqz v12, :cond_ac

    .line 494
    :try_start_a9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_119

    .line 500
    :cond_ac
    :goto_ac
    if-eqz v2, :cond_b3

    .line 501
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setImagePath(Ljava/lang/String;)V

    .line 504
    :cond_b3
    return-object v2

    .line 442
    .restart local v3    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v6    # "fileLength":J
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v10    # "rightStatus":I
    :cond_b4
    :try_start_b4
    const-string v14, "false"

    goto :goto_53

    .line 453
    .restart local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v11    # "status_req1":Ljava/lang/String;
    :cond_b7
    const-string v14, "BitmapFactory"

    const-string v15, "decodeFile :: custom api returned null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_be} :catch_bf
    .catchall {:try_start_b4 .. :try_end_be} :catchall_101

    goto :goto_96

    .line 486
    .end local v3    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v6    # "fileLength":J
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v10    # "rightStatus":I
    .end local v11    # "status_req1":Ljava/lang/String;
    :catch_bf
    move-exception v5

    .line 490
    .local v5, "e":Ljava/lang/Exception;
    :try_start_c0
    const-string v14, "BitmapFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to decode stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_c0 .. :try_end_d8} :catchall_101

    .line 492
    if-eqz v12, :cond_ac

    .line 494
    :try_start_da
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_ac

    .line 495
    :catch_de
    move-exception v14

    goto :goto_ac

    .line 456
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .restart local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v6    # "fileLength":J
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .restart local v10    # "rightStatus":I
    .restart local v11    # "status_req1":Ljava/lang/String;
    :cond_e0
    :try_start_e0
    const-string v14, "BitmapFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "decodeFile :: FAIL reason is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "INFO"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_100} :catch_bf
    .catchall {:try_start_e0 .. :try_end_100} :catchall_101

    goto :goto_96

    .line 492
    .end local v3    # "drmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v6    # "fileLength":J
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "resultInfo":Landroid/drm/DrmInfo;
    .end local v10    # "rightStatus":I
    .end local v11    # "status_req1":Ljava/lang/String;
    :catchall_101
    move-exception v14

    if-eqz v12, :cond_107

    .line 494
    :try_start_104
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_11b

    .line 497
    :cond_107
    :goto_107
    throw v14

    .line 459
    .restart local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .restart local v6    # "fileLength":J
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v10    # "rightStatus":I
    :cond_108
    :try_start_108
    const-string v14, "BitmapFactory"

    const-string v15, "decodeFile :: Rights not present. Handle here and show pop up for no license present"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 471
    .end local v4    # "drmclient":Landroid/drm/DrmManagerClient;
    .end local v6    # "fileLength":J
    .end local v10    # "rightStatus":I
    :cond_110
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_117} :catch_bf
    .catchall {:try_start_108 .. :try_end_117} :catchall_101

    .end local v12    # "stream":Ljava/io/InputStream;
    .restart local v13    # "stream":Ljava/io/InputStream;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/InputStream;
    .restart local v12    # "stream":Ljava/io/InputStream;
    goto :goto_9b

    .line 495
    .end local v8    # "mimeType":Ljava/lang/String;
    :catch_119
    move-exception v14

    goto :goto_ac

    :catch_11b
    move-exception v15

    goto :goto_107
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v4, 0x2

    .line 787
    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    .line 790
    const-string v2, "decodeFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 792
    :try_start_a
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 793
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 805
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_14
    if-nez v0, :cond_3d

    if-eqz p2, :cond_3d

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3d

    .line 806
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_24

    .line 811
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_24
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 795
    :cond_29
    :try_start_29
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_24

    .line 797
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2e
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    move-result-object v0

    .line 800
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_24

    goto :goto_14

    .line 801
    :catch_36
    move-exception v2

    goto :goto_14

    .line 799
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catchall_38
    move-exception v2

    .line 800
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_44
    .catchall {:try_start_39 .. :try_end_3c} :catchall_24

    .line 801
    :goto_3c
    :try_start_3c
    throw v2

    .line 809
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_3d
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_24

    .line 811
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 813
    return-object v0

    .line 801
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_44
    move-exception v3

    goto :goto_3c
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 572
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 573
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 575
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_25
    .catchall {:try_start_2 .. :try_end_f} :catchall_2e

    move-result-object v0

    .line 583
    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_35

    .line 589
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_15
    :goto_15
    if-nez v0, :cond_39

    if-eqz p2, :cond_39

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_39

    .line 590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :catch_25
    move-exception v3

    .line 583
    if-eqz v1, :cond_15

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 584
    :catch_2c
    move-exception v3

    goto :goto_15

    .line 582
    :catchall_2e
    move-exception v3

    .line 583
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    .line 586
    :cond_34
    :goto_34
    throw v3

    .line 584
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catch_35
    move-exception v3

    goto :goto_15

    .end local v2    # "value":Landroid/util/TypedValue;
    :catch_37
    move-exception v4

    goto :goto_34

    .line 593
    :cond_39
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 530
    if-nez p4, :cond_7

    .line 531
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 534
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v2, :cond_15

    if-eqz p1, :cond_15

    .line 535
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 536
    .local v0, "density":I
    if-nez v0, :cond_2d

    .line 537
    const/16 v2, 0xa0

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 543
    .end local v0    # "density":I
    :cond_15
    :goto_15
    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v2, :cond_23

    if-eqz p0, :cond_23

    .line 544
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 547
    :cond_23
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 548
    .local v1, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2c

    .line 549
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->setImagePath(Landroid/util/TypedValue;)V

    .line 552
    :cond_2c
    return-object v1

    .line 538
    .end local v1    # "tmpBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "density":I
    :cond_2d
    const v2, 0xffff

    if-eq v0, v2, :cond_15

    .line 539
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const-wide/16 v6, 0x2

    .line 711
    invoke-static {}, Landroid/graphics/BitmapFactory;->checkPreferIPTToRGBA()V

    .line 716
    if-nez p0, :cond_9

    .line 717
    const/4 v2, 0x0

    .line 740
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_8
    return-object v2

    .line 720
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_9
    const/4 v2, 0x0

    .line 722
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string v3, "decodeBitmap"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 724
    :try_start_f
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_32

    .line 725
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 726
    .local v0, "asset":J
    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 731
    .end local v0    # "asset":J
    :goto_1d
    if-nez v2, :cond_37

    if-eqz p2, :cond_37

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_37

    .line 732
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2d

    .line 737
    :catchall_2d
    move-exception v3

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 728
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_32
    :try_start_32
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1d

    .line 735
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_37
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2d

    .line 737
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_8
.end method

.method private static decodeStreamInternal(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "tempStorage":[B
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 751
    :cond_5
    if-nez v0, :cond_b

    const/16 v1, 0x4000

    new-array v0, v1, [B

    .line 752
    :cond_b
    invoke-static {p0, v0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeDecodeAsset(JLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeSetPreferIPTToRGBA()V
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 7
    .param p0, "outputBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 664
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 683
    :cond_4
    :goto_4
    return-void

    .line 666
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 667
    .local v0, "density":I
    if-eqz v0, :cond_2f

    .line 668
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 669
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 670
    .local v3, "targetDensity":I
    if-eqz v3, :cond_4

    if-eq v0, v3, :cond_4

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v4, :cond_4

    .line 674
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 675
    .local v2, "np":[B
    if-eqz v2, :cond_2d

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v1, 0x1

    .line 676
    .local v1, "isNinePatch":Z
    :goto_23
    iget-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v4, :cond_29

    if-eqz v1, :cond_4

    .line 677
    :cond_29
    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_4

    .line 675
    .end local v1    # "isNinePatch":Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_23

    .line 679
    .end local v2    # "np":[B
    .end local v3    # "targetDensity":I
    :cond_2f
    iget-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 681
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_4
.end method
