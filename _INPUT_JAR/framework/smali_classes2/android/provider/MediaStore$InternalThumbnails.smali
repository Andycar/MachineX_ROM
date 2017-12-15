.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 576
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 614
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 617
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 619
    .local v6, "c":Landroid/database/Cursor;
    :try_start_26
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_36

    move-result-object v6

    .line 622
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_35
    return-void

    .line 622
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 584
    .local v6, "thumbUri":Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_3
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 585
    .local v4, "thumbId":J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 587
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 588
    .local v3, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 590
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_23} :catch_6c

    .line 599
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thumbId":J
    :goto_23
    return-object v0

    .line 591
    :catch_24
    move-exception v1

    .line 592
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 593
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v1

    .line 594
    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 595
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6c
    move-exception v1

    .line 596
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 34
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    .line 643
    const/4 v14, 0x0

    .line 644
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 648
    .local v18, "filePath":Ljava/lang/String;
    const/4 v15, 0x0

    .line 649
    .local v15, "c":Landroid/database/Cursor;
    new-instance v19, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_a1

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_a
    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 651
    .local v19, "thumbFile":Landroid/media/MiniThumbFile;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "thumbnails"

    const-string v8, "media"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 655
    .local v5, "uri":Landroid/net/Uri;
    :try_start_2c
    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v20

    .line 657
    .local v20, "magic":J
    const-wide/16 v22, 0x0

    .line 658
    .local v22, "mini_thumb_magic":J
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "mini_thumb_magic"

    aput-object v8, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 659
    if-eqz v15, :cond_54

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 660
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 662
    :cond_54
    if-eqz v15, :cond_59

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_59
    const-wide/16 v8, 0x0

    cmp-long v4, v20, v8

    if-eqz v4, :cond_10a

    cmp-long v4, v20, v22

    if-nez v4, :cond_10a

    .line 664
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_bc

    .line 665
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_6b} :catch_a8
    .catchall {:try_start_2c .. :try_end_6b} :catchall_220

    .line 666
    :try_start_6b
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_75

    .line 667
    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 669
    :cond_75
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_94

    .line 670
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    invoke-static {v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 671
    if-nez v14, :cond_94

    .line 672
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_6b .. :try_end_95} :catchall_a5

    .line 759
    if-eqz v15, :cond_9a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_9a
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    move-object v4, v14

    .line 764
    .end local v20    # "magic":J
    .end local v22    # "mini_thumb_magic":J
    :goto_a0
    return-object v4

    .line 649
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v19    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_a1
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_a

    .line 675
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v19    # "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v20    # "magic":J
    .restart local v22    # "mini_thumb_magic":J
    :catchall_a5
    move-exception v4

    :try_start_a6
    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw v4
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a7 .. :try_end_a8} :catch_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_220

    .line 756
    .end local v20    # "magic":J
    .end local v22    # "mini_thumb_magic":J
    :catch_a8
    move-exception v17

    .line 757
    .local v17, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_a9
    const-string v4, "MediaStore"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_220

    .line 759
    if-eqz v15, :cond_b5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_b5
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    .end local v17    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_ba
    move-object v4, v14

    .line 764
    goto :goto_a0

    .line 677
    .restart local v20    # "magic":J
    .restart local v22    # "mini_thumb_magic":J
    :cond_bc
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_10a

    .line 678
    if-eqz p8, :cond_107

    :try_start_c3
    const-string/jumbo v16, "video_id="

    .line 679
    .local v16, "column":Ljava/lang/String;
    :goto_c6
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 680
    if-eqz v15, :cond_10a

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 681
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v15, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c3 .. :try_end_f8} :catch_a8
    .catchall {:try_start_c3 .. :try_end_f8} :catchall_220

    move-result-object v14

    .line 682
    if-eqz v14, :cond_10a

    .line 759
    if-eqz v15, :cond_100

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_100
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    move-object v4, v14

    goto :goto_a0

    .line 678
    .end local v16    # "column":Ljava/lang/String;
    :cond_107
    :try_start_107
    const-string v16, "image_id="

    goto :goto_c6

    .line 689
    :cond_10a
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "blocking"

    const-string v8, "1"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 692
    .local v7, "blockingUri":Landroid/net/Uri;
    if-eqz v15, :cond_134

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_134
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_107 .. :try_end_13e} :catch_a8
    .catchall {:try_start_107 .. :try_end_13e} :catchall_220

    move-result-object v15

    .line 695
    if-nez v15, :cond_14e

    const/4 v4, 0x0

    .line 759
    if-eqz v15, :cond_147

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_147
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    goto/16 :goto_a0

    .line 698
    :cond_14e
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_22c

    .line 700
    if-eqz v15, :cond_158

    :try_start_155
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_158
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "mini_thumb_magic"

    aput-object v6, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 702
    if-eqz v15, :cond_177

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_177

    .line 703
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 705
    :cond_177
    if-eqz v15, :cond_17c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_17c
    const-wide/16 v8, 0x0

    cmp-long v4, v22, v8

    if-eqz v4, :cond_1c1

    .line 707
    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v20

    .line 708
    cmp-long v4, v20, v22

    if-nez v4, :cond_1c1

    .line 709
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_191
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_155 .. :try_end_191} :catch_a8
    .catchall {:try_start_155 .. :try_end_191} :catchall_220

    .line 710
    :try_start_191
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_19b

    .line 711
    const/16 v4, 0x2710

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 713
    :cond_19b
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 714
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_1c0

    .line 715
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v9, v9

    invoke-static {v4, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 716
    if-nez v14, :cond_1c0

    .line 717
    const-string v4, "MediaStore"

    const-string v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1c0
    monitor-exit v6
    :try_end_1c1
    .catchall {:try_start_191 .. :try_end_1c1} :catchall_21d

    .line 733
    :cond_1c1
    :goto_1c1
    if-nez v14, :cond_281

    .line 734
    :try_start_1c3
    const-string v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create the thumbnail in memory: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez v18, :cond_277

    .line 738
    if-eqz v15, :cond_1fc

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_1fc
    sget-object v10, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 740
    if-eqz v15, :cond_210

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_20d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c3 .. :try_end_20d} :catch_a8
    .catchall {:try_start_1c3 .. :try_end_20d} :catchall_220

    move-result v4

    if-nez v4, :cond_263

    .line 741
    :cond_210
    const/4 v4, 0x0

    .line 759
    if-eqz v15, :cond_216

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_216
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    goto/16 :goto_a0

    .line 720
    :catchall_21d
    move-exception v4

    :try_start_21e
    monitor-exit v6
    :try_end_21f
    .catchall {:try_start_21e .. :try_end_21f} :catchall_21d

    :try_start_21f
    throw v4
    :try_end_220
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21f .. :try_end_220} :catch_a8
    .catchall {:try_start_21f .. :try_end_220} :catchall_220

    .line 759
    .end local v7    # "blockingUri":Landroid/net/Uri;
    .end local v20    # "magic":J
    .end local v22    # "mini_thumb_magic":J
    :catchall_220
    move-exception v4

    if-eqz v15, :cond_226

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_226
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    throw v4

    .line 723
    .restart local v7    # "blockingUri":Landroid/net/Uri;
    .restart local v20    # "magic":J
    .restart local v22    # "mini_thumb_magic":J
    :cond_22c
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_248

    .line 724
    :try_start_231
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 725
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v15, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 726
    if-eqz v15, :cond_1c1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c1

    .line 729
    :cond_248
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported kind: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 743
    :cond_263
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_267
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_231 .. :try_end_267} :catch_a8
    .catchall {:try_start_231 .. :try_end_267} :catchall_220

    move-result-object v18

    .line 746
    if-nez v18, :cond_277

    .line 747
    const/4 v4, 0x0

    .line 759
    if-eqz v15, :cond_270

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_270
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    goto/16 :goto_a0

    .line 750
    :cond_277
    if-eqz p8, :cond_28d

    .line 751
    :try_start_279
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_280
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_279 .. :try_end_280} :catch_a8
    .catchall {:try_start_279 .. :try_end_280} :catchall_220

    move-result-object v14

    .line 759
    :cond_281
    :goto_281
    if-eqz v15, :cond_286

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_286
    invoke-virtual/range {v19 .. v19}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 762
    const/16 v19, 0x0

    .line 763
    goto/16 :goto_ba

    .line 753
    :cond_28d
    :try_start_28d
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_294
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28d .. :try_end_294} :catch_a8
    .catchall {:try_start_28d .. :try_end_294} :catchall_220

    move-result-object v14

    goto :goto_281
.end method
