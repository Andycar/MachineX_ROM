.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 247
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 248
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 249
    return-void
.end method

.method static synthetic access$100(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCompressedVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 391
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pkm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 393
    .end local p1    # "file":Ljava/lang/String;
    :cond_2e
    return-object p1
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 353
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v8, :cond_f

    .line 354
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WallpaperService not running"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_e
    :goto_e
    return-object v7

    .line 359
    :cond_f
    :try_start_f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v5, "params":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 361
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_e

    .line 362
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 363
    .local v6, "width":I
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2a} :catch_57

    move-result v3

    .line 366
    .local v3, "height":I
    :try_start_2b
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 367
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_3c} :catch_42
    .catchall {:try_start_2b .. :try_end_3c} :catchall_52

    move-result-object v8

    .line 374
    :try_start_3d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_59
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_57

    :goto_40
    move-object v7, v8

    .line 377
    goto :goto_e

    .line 370
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_42
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_43
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Can\'t decode file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_52

    .line 374
    :try_start_4c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_57

    goto :goto_e

    .line 375
    :catch_50
    move-exception v8

    goto :goto_e

    .line 373
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_52
    move-exception v8

    .line 374
    :try_start_53
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    .line 377
    :goto_56
    :try_start_56
    throw v8
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_57} :catch_57

    .line 380
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_57
    move-exception v8

    goto :goto_e

    .line 375
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_59
    move-exception v7

    goto :goto_40

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5b
    move-exception v9

    goto :goto_56
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 30
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    const/4 v12, 0x0

    .line 400
    .local v12, "is":Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v16

    .line 401
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v10

    .line 404
    .local v10, "height":I
    const-string v6, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    .line 405
    .local v6, "customWpFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v5, "custWpFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_180

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_25} :catch_1ce

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_180

    .line 408
    :try_start_2c
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_1ce

    .line 415
    .end local v12    # "is":Ljava/io/InputStream;
    .local v13, "is":Ljava/io/InputStream;
    :goto_31
    if-nez v13, :cond_1c0

    .line 416
    :try_start_33
    const-string v7, "/system/wallpaper/default_wallpaper/"

    .line 417
    .local v7, "defaultWpFilePath":Ljava/lang/String;
    const-string v8, "/system/csc_contents/"

    .line 418
    .local v8, "defaultWpFilePathMultiCSC":Ljava/lang/String;
    const/16 v20, 0x0

    .line 420
    .local v20, "wpFileMultiCSC":Ljava/io/File;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v22, "wpFilePathMultiCSC":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v19

    .line 422
    .local v19, "wpFileListMultiCSC":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 424
    .local v14, "isDefaultWallpaperInMultiCsc":Z
    if-eqz v19, :cond_7c

    .line 427
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_48
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_5c

    .line 428
    aget-object v23, v19, v11

    const-string v24, "default_wallpaper"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_183

    .line 429
    const/4 v14, 0x1

    .line 434
    :cond_5c
    if-eqz v14, :cond_7c

    .line 435
    new-instance v20, Ljava/io/File;

    .end local v20    # "wpFileMultiCSC":Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v19, v11

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .end local v11    # "i":I
    .restart local v20    # "wpFileMultiCSC":Ljava/io/File;
    :cond_7c
    const/16 v21, 0x0

    .line 440
    .local v21, "wpFilePath":Ljava/io/File;
    if-eqz v14, :cond_187

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_187

    .line 441
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    const-string v24, "getDefaultWallpaperLocked() symbolic link is used."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v21, Ljava/io/File;

    .end local v21    # "wpFilePath":Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v21    # "wpFilePath":Ljava/io/File;
    :goto_96
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v18

    .line 449
    .local v18, "wpFileList":[Ljava/lang/String;
    if-eqz v18, :cond_1c0

    .line 450
    const/16 v17, 0x0

    .line 451
    .local v17, "wpFile":Ljava/io/File;
    if-eqz v14, :cond_190

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_190

    .line 452
    move-object/from16 v17, v20

    .line 453
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getDefaultWallpaperLocked(). symbolic link path is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_c6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1c0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_cf} :catch_1ef

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_1c0

    .line 462
    :try_start_d6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/WallpaperManager$Globals;->getCompressedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "compressed":Ljava/lang/String;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "GFX_COMPR trying compressed file"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v3, "compFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_143

    .line 466
    move-object/from16 v17, v3

    .line 467
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "GFX_COMPR found compressed file"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_143
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_14a} :catch_1b2
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_14a} :catch_1ef

    .line 479
    .end local v3    # "compFile":Ljava/io/File;
    .end local v4    # "compressed":Ljava/lang/String;
    .end local v7    # "defaultWpFilePath":Ljava/lang/String;
    .end local v8    # "defaultWpFilePathMultiCSC":Ljava/lang/String;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "isDefaultWallpaperInMultiCsc":Z
    .end local v17    # "wpFile":Ljava/io/File;
    .end local v18    # "wpFileList":[Ljava/lang/String;
    .end local v19    # "wpFileListMultiCSC":[Ljava/lang/String;
    .end local v20    # "wpFileMultiCSC":Ljava/io/File;
    .end local v21    # "wpFilePath":Ljava/io/File;
    .end local v22    # "wpFilePathMultiCSC":Ljava/io/File;
    .restart local v12    # "is":Ljava/io/InputStream;
    :goto_14a
    if-nez v12, :cond_1c2

    .line 480
    :try_start_14c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x10802e1

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_156} :catch_1ce

    move-result-object v12

    .line 485
    :goto_157
    if-eqz v12, :cond_1cf

    .line 487
    :try_start_159
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 488
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-static {v12, v0, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 489
    .local v2, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v2, v1, v10}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_16d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_159 .. :try_end_16d} :catch_1d2
    .catchall {:try_start_159 .. :try_end_16d} :catchall_1e6

    move-result-object v23

    .line 494
    :try_start_16e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_1eb
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_171} :catch_1ce

    .line 503
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "custWpFile":Ljava/io/File;
    .end local v6    # "customWpFilePath":Ljava/lang/String;
    .end local v10    # "height":I
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "width":I
    :goto_171
    return-object v23

    .line 409
    .restart local v5    # "custWpFile":Ljava/io/File;
    .restart local v6    # "customWpFilePath":Ljava/lang/String;
    .restart local v10    # "height":I
    .restart local v16    # "width":I
    :catch_172
    move-exception v9

    .line 410
    .local v9, "e":Ljava/io/IOException;
    :try_start_173
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Chameleon Wallpaper FileInputStream error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_180} :catch_1ce

    .end local v9    # "e":Ljava/io/IOException;
    :cond_180
    move-object v13, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto/16 :goto_31

    .line 427
    .restart local v7    # "defaultWpFilePath":Ljava/lang/String;
    .restart local v8    # "defaultWpFilePathMultiCSC":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "isDefaultWallpaperInMultiCsc":Z
    .restart local v19    # "wpFileListMultiCSC":[Ljava/lang/String;
    .restart local v20    # "wpFileMultiCSC":Ljava/io/File;
    .restart local v22    # "wpFilePathMultiCSC":Ljava/io/File;
    :cond_183
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_48

    .line 445
    .end local v11    # "i":I
    .restart local v21    # "wpFilePath":Ljava/io/File;
    :cond_187
    :try_start_187
    new-instance v21, Ljava/io/File;

    .end local v21    # "wpFilePath":Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v21    # "wpFilePath":Ljava/io/File;
    goto/16 :goto_96

    .line 456
    .restart local v17    # "wpFile":Ljava/io/File;
    .restart local v18    # "wpFileList":[Ljava/lang/String;
    :cond_190
    new-instance v17, Ljava/io/File;

    .end local v17    # "wpFile":Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v17    # "wpFile":Ljava/io/File;
    goto/16 :goto_c6

    .line 471
    :catch_1b2
    move-exception v9

    .line 472
    .restart local v9    # "e":Ljava/io/IOException;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    const-string v24, "CSC Wallpaper FileInputStream error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c0
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1c0} :catch_1ef

    .end local v7    # "defaultWpFilePath":Ljava/lang/String;
    .end local v8    # "defaultWpFilePathMultiCSC":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "isDefaultWallpaperInMultiCsc":Z
    .end local v17    # "wpFile":Ljava/io/File;
    .end local v18    # "wpFileList":[Ljava/lang/String;
    .end local v19    # "wpFileListMultiCSC":[Ljava/lang/String;
    .end local v20    # "wpFileMultiCSC":Ljava/io/File;
    .end local v21    # "wpFilePath":Ljava/io/File;
    .end local v22    # "wpFilePathMultiCSC":Ljava/io/File;
    :cond_1c0
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    goto :goto_14a

    .line 483
    :cond_1c2
    :try_start_1c2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "android.wallpaper.settings_systemui_transparency"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1cd
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_1cd} :catch_1ce

    goto :goto_157

    .line 500
    .end local v5    # "custWpFile":Ljava/io/File;
    .end local v6    # "customWpFilePath":Ljava/lang/String;
    .end local v10    # "height":I
    .end local v16    # "width":I
    :catch_1ce
    move-exception v23

    .line 503
    :cond_1cf
    :goto_1cf
    const/16 v23, 0x0

    goto :goto_171

    .line 490
    .restart local v5    # "custWpFile":Ljava/io/File;
    .restart local v6    # "customWpFilePath":Ljava/lang/String;
    .restart local v10    # "height":I
    .restart local v16    # "width":I
    :catch_1d2
    move-exception v9

    .line 491
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1d3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Can\'t decode stream"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e0
    .catchall {:try_start_1d3 .. :try_end_1e0} :catchall_1e6

    .line 494
    :try_start_1e0
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_1e3} :catch_1e4
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_1e3} :catch_1ce

    goto :goto_1cf

    .line 495
    :catch_1e4
    move-exception v23

    goto :goto_1cf

    .line 493
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1e6
    move-exception v23

    .line 494
    :try_start_1e7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1ea} :catch_1ed
    .catch Landroid/os/RemoteException; {:try_start_1e7 .. :try_end_1ea} :catch_1ce

    .line 497
    :goto_1ea
    :try_start_1ea
    throw v23
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_1eb} :catch_1ce

    .line 495
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1eb
    move-exception v24

    goto :goto_171

    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1ed
    move-exception v24

    goto :goto_1ea

    .line 500
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_1ef
    move-exception v23

    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    goto :goto_1cf
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .registers 2

    .prologue
    .line 314
    monitor-enter p0

    .line 315
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 317
    monitor-exit p0

    .line 318
    return-void

    .line 317
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getWallpaperLockedForMultiSim(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    const/4 v8, 0x0

    .line 324
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5, p2}, Landroid/app/IWallpaperManager;->getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 326
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_40

    .line 327
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 328
    .local v6, "width":I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_47

    move-result v3

    .line 331
    .local v3, "height":I
    :try_start_1d
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_2e} :catch_33
    .catchall {:try_start_1d .. :try_end_2e} :catchall_42

    move-result-object v7

    .line 339
    :try_start_2f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_47

    .line 348
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_32
    return-object v7

    .line 335
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_33
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_34
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_42

    .line 339
    :try_start_3d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_47

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_40
    :goto_40
    move-object v7, v8

    .line 348
    goto :goto_32

    .line 338
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_42
    move-exception v7

    .line 339
    :try_start_43
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 342
    :goto_46
    :try_start_46
    throw v7
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_47} :catch_47

    .line 345
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_47
    move-exception v7

    goto :goto_40

    .line 340
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_49
    move-exception v8

    goto :goto_32

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4b
    move-exception v7

    goto :goto_40

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4d
    move-exception v9

    goto :goto_46
.end method

.method public onWallpaperChanged()V
    .registers 2

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 260
    monitor-exit p0

    .line 261
    return-void

    .line 260
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 264
    monitor-enter p0

    .line 266
    :try_start_1
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekWallpaperBitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "peekWallpaperBitmap: single sim"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_32

    .line 287
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 309
    :goto_31
    return-object v1

    .line 289
    :cond_32
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3d

    .line 290
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_31

    .line 310
    :catchall_3a
    move-exception v1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v1

    .line 295
    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3a

    .line 297
    :try_start_40
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_40 .. :try_end_46} :catch_56
    .catchall {:try_start_40 .. :try_end_46} :catchall_3a

    .line 301
    :goto_46
    if-eqz p2, :cond_64

    .line 302
    :try_start_48
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_61

    .line 303
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 304
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_31

    .line 298
    :catch_56
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 306
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_61
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 309
    :cond_64
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_48 .. :try_end_67} :catchall_3a

    goto :goto_31
.end method
