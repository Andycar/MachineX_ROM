.class public Lcom/android/server/pm/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Revision"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_sepolicy_build_date()Ljava/lang/String;
    .registers 16

    .prologue
    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, "buildDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 375
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 376
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 377
    .local v11, "priority":I
    const/4 v8, 0x0

    .line 379
    .local v8, "index":I
    const/4 v1, 0x0

    .line 380
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 382
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    .line 383
    const/4 v12, 0x4

    new-array v0, v12, [Ljava/io/File;

    const/4 v12, 0x0

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/sepolicy"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    const-string/jumbo v15, "security/spota/sepolicy_version"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "sepolicy_version"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v13, v0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput-object v13, v0, v12

    .line 391
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_3b
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    add-int/lit8 v13, v11, -0x1

    aget-object v13, v0, v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_a5

    .line 392
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_49
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_a7

    .line 393
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v12, 0x1

    if-eq v11, v12, :cond_9d

    .line 396
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 397
    if-nez v9, :cond_75

    .line 398
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_62

    .line 408
    :catch_62
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 409
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_65
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_68
    if-eqz v1, :cond_6e

    .line 414
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 415
    const/4 v1, 0x0

    .line 417
    :cond_6e
    if-eqz v6, :cond_74

    .line 418
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_a0

    .line 419
    const/4 v6, 0x0

    .line 425
    :cond_74
    :goto_74
    return-object v3

    .line 400
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_75
    const/16 v12, 0x3d

    :try_start_77
    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 401
    const/4 v12, -0x1

    if-ne v8, v12, :cond_84

    .line 402
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    throw v12

    .line 404
    :cond_84
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 405
    const-string v12, "BD"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 406
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9c} :catch_62

    .end local v3    # "buildDate":Ljava/lang/String;
    .local v4, "buildDate":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "buildDate":Ljava/lang/String;
    .restart local v3    # "buildDate":Ljava/lang/String;
    :cond_9d
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 410
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_68

    .line 421
    :catch_a0
    move-exception v5

    .line 422
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 408
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a5
    move-exception v5

    goto :goto_65

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_a7
    move-exception v5

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_65
.end method

.method public static get_sepolicy_info()[Ljava/lang/String;
    .registers 17

    .prologue
    .line 429
    const/4 v13, 0x2

    new-array v9, v13, [Ljava/lang/String;

    .line 430
    .local v9, "info":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 431
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 432
    .local v11, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 433
    .local v12, "priority":I
    const/4 v8, 0x0

    .line 435
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 438
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 440
    .local v6, "in":Ljava/io/DataInputStream;
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v12

    .line 441
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 446
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v13, "GOOGLE_POLICY"

    const-string/jumbo v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60

    .line 447
    const/4 v13, 0x0

    const-string v14, "GOOGLE_POLICY"

    aput-object v14, v9, v13

    .line 448
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13

    .line 509
    :cond_5f
    :goto_5f
    return-object v9

    .line 453
    :cond_60
    const/4 v13, 0x1

    if-ne v12, v13, :cond_7a

    .line 454
    const/4 v13, 0x0

    :try_start_64
    const-string v14, "Enterprise Policy"

    aput-object v14, v9, v13

    .line 455
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6d} :catch_106

    .line 498
    :cond_6d
    :goto_6d
    if-eqz v1, :cond_73

    .line 499
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 500
    const/4 v1, 0x0

    .line 502
    :cond_73
    if-eqz v6, :cond_5f

    .line 503
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_100

    .line 504
    const/4 v6, 0x0

    goto :goto_5f

    .line 457
    :cond_7a
    :try_start_7a
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v12, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_88} :catch_106

    .line 458
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_88
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_92} :catch_108

    .line 460
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_92
    :goto_92
    :try_start_92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10b

    .line 461
    const-string v13, "VE="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 462
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 463
    const/4 v13, 0x0

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 466
    :cond_b4
    const-string v13, "BD="

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d0

    .line 467
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 468
    const/4 v13, 0x1

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v14, v9, v13

    .line 471
    :cond_d0
    const/4 v13, 0x0

    aget-object v13, v9, v13

    if-nez v13, :cond_da

    .line 472
    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v9, v13

    .line 475
    :cond_da
    const/4 v13, 0x1

    aget-object v13, v9, v13

    if-nez v13, :cond_92

    .line 476
    const/4 v13, 0x1

    const-string v14, ""

    aput-object v14, v9, v13
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_e4} :catch_e5

    goto :goto_92

    .line 481
    :catch_e5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 483
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_e8
    if-eqz v1, :cond_ee

    .line 484
    :try_start_ea
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 485
    const/4 v1, 0x0

    .line 487
    :cond_ee
    if-eqz v6, :cond_6d

    .line 488
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f3} :catch_f6

    .line 489
    const/4 v6, 0x0

    goto/16 :goto_6d

    .line 491
    :catch_f6
    move-exception v5

    .line 492
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 506
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_100
    move-exception v4

    .line 507
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5f

    .line 481
    .end local v4    # "e":Ljava/io/IOException;
    :catch_106
    move-exception v4

    goto :goto_e8

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_108
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_e8

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_10b
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6d
.end method

.method public static get_sepolicy_version()Ljava/lang/String;
    .registers 17

    .prologue
    .line 293
    const/4 v11, 0x0

    .line 294
    .local v11, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 295
    .local v9, "line":Ljava/lang/String;
    const/4 v10, 0x0

    .line 296
    .local v10, "priority":I
    const/4 v8, 0x0

    .line 297
    .local v8, "index":I
    new-instance v3, Ljava/lang/String;

    const-string v13, "SEPF_XXX_XX_0000"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, "default_version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 300
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 303
    .local v6, "in":Ljava/io/DataInputStream;
    const-string v13, "GOOGLE_POLICY"

    const-string/jumbo v14, "selinux.policy_version"

    const-string v15, "Unknown"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 304
    new-instance v11, Ljava/lang/String;

    .end local v11    # "version":Ljava/lang/String;
    const-string v13, "GOOGLE_POLICY"

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 368
    :goto_25
    return-object v11

    .line 307
    .restart local v11    # "version":Ljava/lang/String;
    :cond_26
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v10

    .line 308
    const/4 v13, 0x4

    new-array v0, v13, [Ljava/io/File;

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/sepolicy"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    const-string/jumbo v16, "security/spota/sepolicy_version"

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x2

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "sepolicy_version"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v14, v0, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput-object v14, v0, v13

    .line 315
    .local v0, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    :try_start_5a
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v0, v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_68} :catch_e5

    .line 317
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_68
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_72} :catch_e7

    .line 318
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x1

    if-ne v10, v13, :cond_8a

    .line 319
    :try_start_75
    new-instance v12, Ljava/lang/String;

    const-string v13, "Enterprise Policy"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7c} :catch_96

    .end local v11    # "version":Ljava/lang/String;
    .local v12, "version":Ljava/lang/String;
    move-object v11, v12

    .line 356
    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :goto_7d
    if-eqz v2, :cond_ea

    .line 357
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_d7

    .line 358
    const/4 v1, 0x0

    .line 360
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_83
    if-eqz v7, :cond_e0

    .line 361
    :try_start_85
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_e3

    .line 362
    const/4 v6, 0x0

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_25

    .line 321
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 323
    if-nez v9, :cond_b2

    .line 324
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_96} :catch_96

    .line 334
    :catch_96
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    move-object v1, v2

    .line 336
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    :goto_99
    if-eqz v1, :cond_9f

    .line 337
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 338
    const/4 v1, 0x0

    .line 340
    :cond_9f
    if-eqz v6, :cond_a5

    .line 341
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a4} :catch_ce

    .line 342
    const/4 v6, 0x0

    .line 347
    :cond_a5
    :goto_a5
    if-eqz v11, :cond_a8

    .line 348
    const/4 v11, 0x0

    .line 351
    :cond_a8
    const-string v13, "Revision"

    const-string v14, "Couldn\'t load policy "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    .line 352
    goto/16 :goto_25

    .line 327
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_b2
    const/16 v13, 0x3d

    :try_start_b4
    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 328
    const/4 v13, -0x1

    if-ne v8, v13, :cond_c1

    .line 329
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 332
    :cond_c1
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_cc} :catch_96

    .end local v11    # "version":Ljava/lang/String;
    .restart local v12    # "version":Ljava/lang/String;
    move-object v11, v12

    .end local v12    # "version":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    goto :goto_7d

    .line 344
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_ce
    move-exception v5

    .line 345
    .local v5, "ie":Ljava/io/IOException;
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 364
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ie":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_d7
    move-exception v4

    move-object v1, v2

    .line 365
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_d9
    const-string v13, "Revision"

    const-string v14, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    :cond_e0
    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_25

    .line 364
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_e3
    move-exception v4

    goto :goto_d9

    .line 334
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_e5
    move-exception v4

    goto :goto_99

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_e7
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_99

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :cond_ea
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_83
.end method

.method public static selinux_android_load_priority()I
    .registers 23

    .prologue
    .line 91
    const-wide/16 v14, 0x0

    .line 92
    .local v14, "sepolicy_version_highest":J
    const-wide/16 v16, 0x0

    .line 93
    .local v16, "sepolicy_version_new":J
    const/4 v7, 0x0

    .line 94
    .local v7, "i":I
    const/4 v5, 0x0

    .line 95
    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .line 96
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 97
    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 98
    .local v18, "tmp_version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 99
    .local v10, "mdm_policy_status":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const-string v19, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 100
    .local v13, "spd_and_version":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const-string v19, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 101
    .local v11, "ram_and_version":Ljava/lang/String;
    const/4 v12, 0x0

    .line 102
    .local v12, "selinux_policy_priority":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [Ljava/io/File;

    const/16 v19, 0x0

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "security/sepolicy"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x1

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string/jumbo v22, "security/spota/sepolicy_version"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x2

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "sepolicy_version"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v20, v2, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v2, v19

    .line 110
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v19, "GOOGLE_POLICY"

    const-string/jumbo v20, "selinux.policy_version"

    const-string v21, "Unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a2

    .line 111
    const/16 v19, 0x3

    .line 196
    :goto_69
    return v19

    .line 126
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :cond_6a
    :try_start_6a
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_78} :catch_156
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_78} :catch_14f

    .line 127
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_78
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    .line 128
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v16

    .line 130
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_ef

    .line 131
    cmp-long v19, v16, v14

    if-lez v19, :cond_8c

    .line 132
    move-wide/from16 v14, v16

    .line 134
    :cond_8c
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_8f} :catch_159
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_152

    move-result-object v13

    .line 135
    add-int/lit8 v12, v7, 0x1

    :cond_92
    :goto_92
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 157
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_94
    if-eqz v3, :cond_9a

    .line 158
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 159
    const/4 v3, 0x0

    .line 161
    :cond_9a
    if-eqz v8, :cond_a0

    .line 162
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_131

    .line 163
    const/4 v8, 0x0

    .line 169
    :cond_a0
    :goto_a0
    add-int/lit8 v7, v7, 0x1

    .line 114
    :cond_a2
    aget-object v19, v2, v7

    if-eqz v19, :cond_c7

    .line 116
    :try_start_a6
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v19, v2, v7

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_af
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_af} :catch_109
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_126

    .line 118
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    if-nez v7, :cond_6a

    .line 119
    :try_start_b1
    const-string/jumbo v19, "persist.security.mdm.policy"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 120
    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_b1 .. :try_end_c1} :catch_156
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c1} :catch_14f

    move-result v19

    if-eqz v19, :cond_6a

    .line 121
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .line 172
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :cond_c7
    :goto_c7
    if-eqz v3, :cond_cd

    .line 173
    :try_start_c9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 174
    const/4 v3, 0x0

    .line 176
    :cond_cd
    if-eqz v8, :cond_d3

    .line 177
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d2} :catch_13c

    .line 178
    const/4 v8, 0x0

    .line 184
    :cond_d3
    :goto_d3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_e8

    .line 185
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v19

    if-eqz v19, :cond_145

    .line 186
    const/4 v12, 0x2

    .line 187
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_e8
    :goto_e8
    if-nez v12, :cond_eb

    .line 194
    const/4 v12, 0x3

    :cond_eb
    move/from16 v19, v12

    .line 196
    goto/16 :goto_69

    .line 137
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_ef
    :try_start_ef
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    invoke-static {v13, v11}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_f6} :catch_159
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f6} :catch_152

    move-result v5

    .line 141
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_104

    .line 142
    cmp-long v19, v16, v14

    if-lez v19, :cond_92

    .line 143
    add-int/lit8 v12, v7, 0x1

    goto :goto_92

    .line 146
    :cond_104
    add-int/lit8 v12, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 147
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_c7

    .line 150
    :catch_109
    move-exception v6

    .line 151
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_10a
    const-string v19, "Revision"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "File not found at: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v2, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 152
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_126
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/Exception;
    :goto_127
    const-string v19, "Revision"

    const-string/jumbo v20, "selinux_android_load_priority : Couldn\'t compute selinux_policy_priority "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94

    .line 165
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_131
    move-exception v6

    .line 166
    .local v6, "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string/jumbo v20, "selinux_android_load_priority : Couldn\'t close BufferedReader "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a0

    .line 180
    .end local v6    # "e":Ljava/io/IOException;
    :catch_13c
    move-exception v6

    .line 181
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v19, "Revision"

    const-string v20, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 189
    .end local v6    # "e":Ljava/io/IOException;
    :cond_145
    const/4 v12, 0x3

    .line 190
    const-string v19, "Revision"

    const-string/jumbo v20, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 152
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_14f
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_127

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_152
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_127

    .line 150
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_156
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_10a

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_159
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_10a
.end method

.method private static selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "spd_and_version"    # Ljava/lang/String;
    .param p1, "ram_and_version"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "cmp_val":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    const/4 v0, 0x1

    .line 86
    :goto_8
    return v0

    .line 83
    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static selinux_compare_spd_ram()I
    .registers 22

    .prologue
    .line 201
    const-wide/16 v12, 0x0

    .line 202
    .local v12, "sepolicy_version_highest":J
    const-wide/16 v14, 0x0

    .line 203
    .local v14, "sepolicy_version_new":J
    const/4 v7, 0x0

    .line 204
    .local v7, "i":I
    const/4 v5, 0x0

    .line 205
    .local v5, "cmp_value":I
    const/4 v3, 0x0

    .line 206
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 207
    .local v8, "in":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 208
    .local v17, "tmp_version":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const-string v18, "SEPF_SPD_XX_0000"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .local v16, "spd_and_version":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v18, "SEPF_RAM_XX_0000"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 210
    .local v10, "ram_and_version":Ljava/lang/String;
    const/4 v11, 0x0

    .line 212
    .local v11, "selinux_policy_priority":I
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v2, v0, [Ljava/io/File;

    const/16 v18, 0x0

    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    const-string/jumbo v21, "security/spota/sepolicy_version"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v19, v2, v18

    const/16 v18, 0x1

    new-instance v19, Ljava/io/File;

    const-string/jumbo v20, "sepolicy_version"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v19, v2, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-object v19, v2, v18

    .line 218
    .local v2, "SEPOLICY_VERSION_FILE":[Ljava/io/File;
    const-string v18, "GOOGLE_POLICY"

    const-string/jumbo v19, "selinux.policy_version"

    const-string v20, "Unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5b

    .line 219
    const/16 v18, 0x3

    .line 288
    :goto_5a
    return v18

    .line 222
    :cond_5b
    :goto_5b
    aget-object v18, v2, v7

    if-eqz v18, :cond_b7

    .line 224
    :try_start_5f
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v18, v2, v7

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_da

    .line 225
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_68
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_f8

    .line 226
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_76
    invoke-static {v4}, Lcom/android/server/pm/Revision;->selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v17

    .line 227
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_version(Ljava/lang/String;)J

    move-result-wide v14

    .line 229
    if-nez v7, :cond_9c

    .line 230
    cmp-long v18, v14, v12

    if-lez v18, :cond_85

    .line 231
    move-wide v12, v14

    .line 233
    :cond_85
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_88} :catch_fb

    move-result-object v16

    .line 234
    add-int/lit8 v11, v7, 0x1

    :cond_8b
    :goto_8b
    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 253
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :goto_8d
    if-eqz v3, :cond_93

    .line 254
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 255
    const/4 v3, 0x0

    .line 257
    :cond_93
    if-eqz v8, :cond_99

    .line 258
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_df

    .line 259
    const/4 v8, 0x0

    .line 264
    :cond_99
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 236
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_9c
    :try_start_9c
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/Revision;->selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 237
    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/server/pm/Revision;->selinux_cmp_android_version(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a5} :catch_fb

    move-result v5

    .line 240
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_b3

    .line 241
    cmp-long v18, v14, v12

    if-lez v18, :cond_8b

    .line 242
    add-int/lit8 v11, v7, 0x1

    goto :goto_8b

    .line 245
    :cond_b3
    add-int/lit8 v11, v7, 0x1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 267
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_b7
    if-eqz v3, :cond_bd

    .line 268
    :try_start_b9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 269
    const/4 v3, 0x0

    .line 271
    :cond_bd
    if-eqz v8, :cond_c3

    .line 272
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_e4

    .line 273
    const/4 v8, 0x0

    .line 279
    :cond_c3
    :goto_c3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_d7

    .line 280
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->verifySEAndroidPolicy()Z

    move-result v18

    if-eqz v18, :cond_ed

    .line 281
    const-string v18, "Revision"

    const-string/jumbo v19, "verifySEAndroidPolicy is true !! "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    :goto_d7
    move/from16 v18, v11

    .line 288
    goto :goto_5a

    .line 249
    :catch_da
    move-exception v6

    .line 250
    .local v6, "e":Ljava/lang/Exception;
    :goto_db
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8d

    .line 261
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v6

    .line 262
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 275
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e4
    move-exception v6

    .line 276
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v18, "Revision"

    const-string v19, "Couldn\'t close BufferedReader or DataInputStream"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 284
    .end local v6    # "e":Ljava/io/IOException;
    :cond_ed
    add-int/lit8 v11, v11, 0x1

    .line 285
    const-string v18, "Revision"

    const-string/jumbo v19, "verifySEAndroidPolicy is false !! "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 249
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_f8
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_db

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_fb
    move-exception v6

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_db
.end method

.method private static selinux_get_android_version(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "and_version":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v3, "0.0"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "default_version":Ljava/lang/String;
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 52
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 57
    .end local v1    # "default_version":Ljava/lang/String;
    :goto_11
    return-object v1

    .line 55
    .restart local v1    # "default_version":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 57
    goto :goto_11
.end method

.method private static selinux_get_full_version(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 7
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, "version":[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, "SEPF_XXX_XX_0000"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "default_full_name":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 33
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_14

    .line 36
    .end local v2    # "line":Ljava/lang/String;
    :catch_14
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Revision"

    const-string/jumbo v5, "selinux_get_full_version : Couldn\'t extract version name "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "default_full_name":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v0

    .line 35
    .restart local v0    # "default_full_name":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1e
    :try_start_1e
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_14

    move-result-object v3

    .line 43
    const/4 v4, 0x1

    aget-object v0, v3, v4

    goto :goto_1d
.end method

.method private static selinux_get_version(Ljava/lang/String;)J
    .registers 7
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 62
    move-object v3, p0

    .line 63
    .local v3, "line":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "default_version":J
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 66
    .local v2, "index":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    .line 70
    .end local v0    # "default_version":J
    :goto_c
    return-wide v0

    .restart local v0    # "default_version":J
    :cond_d
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_c
.end method
