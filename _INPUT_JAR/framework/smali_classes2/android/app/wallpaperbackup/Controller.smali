.class public Landroid/app/wallpaperbackup/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/Controller$REQ_SIZE;,
        Landroid/app/wallpaperbackup/Controller$ERR_CODE;,
        Landroid/app/wallpaperbackup/Controller$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "wallpaper.png"

.field private static final IMAGE_FILE_NAME_SIM2:Ljava/lang/String; = "wallpaper2.png"

.field public static final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_WALLPAPER"

.field public static final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_WALLPAPER"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

.field public static final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SAVE_PATH:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "XMl_BNR_APK_REV"

.field private static final WALLPAPER_PATH:Ljava/lang/String; = "wallpaper"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

.field private mHeight:I

.field private mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

.field private mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

.field private mWidth:I

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "SAVE_PATH"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SAVE_PATH:Ljava/lang/String;

    .line 45
    const-string v0, "RESULT"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    .line 46
    const-string v0, "ERR_CODE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    .line 47
    const-string v0, "REQ_SIZE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 48
    const-string v0, "SOURCE"

    sput-object v0, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    .line 61
    const-wide/32 v0, 0xa00000

    sput-wide v0, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 54
    sget-object v0, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 55
    sget-object v0, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    .line 441
    return-void
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wallpaper.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "imageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 159
    .local v2, "wallpaperType":Z
    if-eqz v2, :cond_2f

    .line 160
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_2f
    return v2
.end method

.method private createBackupFilesForMultiSim(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wallpaper.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 169
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "imageNameWithPath":Ljava/lang/String;
    invoke-direct {p0, p2}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "imageNameWithPathSim2":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->getBackupWallpaperImageName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "imageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v1}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, v2}, Landroid/app/wallpaperbackup/Controller;->deleteFiles(Ljava/lang/String;)V

    .line 176
    const/4 v5, 0x0

    .line 178
    .local v5, "wallpaperType":Z
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "simState_1":Ljava/lang/String;
    const-string v6, "gsm.sim.state2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "simState_2":Ljava/lang/String;
    const-string v6, "ABSENT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    const-string v6, "ABSENT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 181
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v1, v6}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 182
    if-eqz v5, :cond_56

    .line 183
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v2, v6}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 189
    :cond_56
    :goto_56
    if-eqz v5, :cond_5b

    .line 190
    invoke-direct {p0, v0, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_5b
    return v5

    .line 186
    :cond_5c
    invoke-virtual {p0, p1, v1}, Landroid/app/wallpaperbackup/Controller;->getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_56
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v6, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/wallpaperbackup/WallpaperUserPOJO;>;"
    new-instance v0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget v1, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    iget v2, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    iget-object v4, p0, Landroid/app/wallpaperbackup/Controller;->mComponent:Ljava/lang/String;

    const/16 v5, 0x65

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 298
    .local v0, "object":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;

    invoke-direct {v1, v6, p2}, Landroid/app/wallpaperbackup/GenerateXMLForWallpaperUser;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private deleteFiles(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 137
    .end local v1    # "sd":Ljava/io/File;
    :cond_e
    :goto_e
    return-void

    .line 133
    :catch_f
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method private getBackupWallpaperImageFilesPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 306
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageFilesPathSim2(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wallpaper2.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 312
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private getBackupWallpaperImageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const-string/jumbo v0, "wallpaper/wallpaper.png"

    .line 198
    .local v0, "mImageName":Ljava/lang/String;
    return-object v0
.end method

.method private getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;
    .registers 6
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "recItem"    # Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperImagePath:Ljava/lang/String;

    .line 318
    .local v0, "imageName":Ljava/lang/String;
    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 143
    const/4 v1, 0x1

    .line 147
    :goto_f
    return v1

    .line 145
    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isWallpaperUserFileExists()Z
    .registers 3

    .prologue
    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "appsFileWallpaperUser":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p0, "nameOfImageAlongWithPath"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 381
    :cond_1b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 382
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 385
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 387
    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 393
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 394
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    :goto_b
    return-object v0

    .line 397
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 399
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method public getWallpaperDimensions(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 326
    .local v3, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 328
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 329
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_f

    .line 330
    invoke-virtual {p0, v2}, Landroid/app/wallpaperbackup/Controller;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    :cond_f
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    .line 334
    .local v4, "wpi":Landroid/app/WallpaperInfo;
    if-nez v4, :cond_28

    .line 335
    if-eqz v0, :cond_26

    .line 336
    invoke-static {p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 338
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 340
    :cond_26
    const/4 v1, 0x1

    .line 343
    .local v1, "returnValue":Z
    :goto_27
    return v1

    .line 342
    .end local v1    # "returnValue":Z
    :cond_28
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_27
.end method

.method public getWallpaperDimensionsForMultiSim(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageNamePath"    # Ljava/lang/String;
    .param p3, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 352
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2, p3}, Landroid/app/WallpaperManager;->getBitmapForMultiSim(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 355
    .local v3, "wpi":Landroid/app/WallpaperInfo;
    if-nez v3, :cond_21

    .line 356
    invoke-static {p2, v0}, Landroid/app/wallpaperbackup/Controller;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 357
    if-nez p3, :cond_1f

    .line 358
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mWidth:I

    .line 359
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/app/wallpaperbackup/Controller;->mHeight:I

    .line 361
    :cond_1f
    const/4 v1, 0x1

    .line 365
    .local v1, "returnValue":Z
    :goto_20
    return v1

    .line 364
    .end local v1    # "returnValue":Z
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "returnValue":Z
    goto :goto_20
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/app/wallpaperbackup/Controller;->isWallpaperUserFileExists()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 234
    new-instance v1, Landroid/app/wallpaperbackup/LiveChange;

    invoke-direct {v1, p1}, Landroid/app/wallpaperbackup/LiveChange;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    new-instance v6, Landroid/app/wallpaperbackup/WallpaperXmlParser;

    iget-object v7, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Landroid/app/wallpaperbackup/WallpaperXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    .local v6, "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    invoke-virtual {v6}, Landroid/app/wallpaperbackup/WallpaperXmlParser;->getObject()Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    move-result-object v2

    .line 237
    .local v2, "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 239
    .local v5, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v3, 0x0

    .line 240
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 241
    .local v4, "streamSim2":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "stream":Ljava/io/InputStream;
    invoke-direct {p0, p2, v2}, Landroid/app/wallpaperbackup/Controller;->getRestoreWallpaperImageFilesPath(Ljava/lang/String;Landroid/app/wallpaperbackup/WallpaperUserPOJO;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v3    # "stream":Ljava/io/InputStream;
    if-eqz v3, :cond_47

    .line 269
    :try_start_27
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_33
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3d

    .line 274
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 275
    if-eqz v4, :cond_32

    .line 276
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 288
    :cond_32
    :goto_32
    return-void

    .line 271
    :catch_33
    move-exception v7

    .line 274
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 275
    if-eqz v4, :cond_32

    .line 276
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_32

    .line 274
    :catchall_3d
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 275
    if-eqz v4, :cond_46

    .line 276
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_46
    throw v7

    .line 280
    :cond_47
    invoke-virtual {v2}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->getComponent()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "com":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/app/wallpaperbackup/LiveChange;->set(Ljava/lang/String;)V

    goto :goto_32

    .line 286
    .end local v0    # "com":Ljava/lang/String;
    .end local v1    # "liveChange":Landroid/app/wallpaperbackup/LiveChange;
    .end local v2    # "mItem":Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "streamSim2":Ljava/io/InputStream;
    .end local v5    # "wallpaperManager":Landroid/app/WallpaperManager;
    .end local v6    # "wallpaperParser":Landroid/app/wallpaperbackup/WallpaperXmlParser;
    :cond_4f
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "availableBlocks":J
    const-wide/16 v2, 0x0

    .line 69
    .local v2, "blockSizeInBytes":J
    const-wide/32 v6, 0x40000000

    .line 72
    .local v6, "freeSpaceInBytes":J
    :try_start_7
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 73
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 74
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_71

    move-result v10

    int-to-long v2, v10

    .line 75
    mul-long v6, v0, v2

    .line 82
    .end local v9    # "stat":Landroid/os/StatFs;
    :goto_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 84
    :try_start_2b
    sget-wide v10, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_76

    .line 85
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 86
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->STORAGE_FULL:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 87
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->MINIMUM_SIZE:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_8a

    .line 115
    :goto_3d
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v11}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    sget-object v10, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    return-void

    .line 77
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_71
    move-exception v4

    .line 78
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_76
    const/4 v8, 0x0

    .line 94
    .local v8, "result":Z
    :try_start_77
    invoke-direct {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 97
    if-eqz v8, :cond_98

    .line 98
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 99
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 105
    :goto_85
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_89} :catch_8a

    goto :goto_3d

    .line 108
    .end local v8    # "result":Z
    :catch_8a
    move-exception v4

    .line 109
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 110
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 111
    sget-object v10, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_3d

    .line 101
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "result":Z
    :cond_98
    :try_start_98
    sget-object v10, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 102
    sget-object v10, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->INVALID_DATA:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v10, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a0} :catch_8a

    goto :goto_85
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wallpaper.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->wallpaperUserFileName:Ljava/lang/String;

    .line 208
    :try_start_29
    invoke-virtual {p0, p1, p2}, Landroid/app/wallpaperbackup/Controller;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->OK:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 210
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 211
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_6c

    .line 219
    :goto_38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->RESULT_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$RESULT;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->ERROR_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    invoke-virtual {v3}, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    sget-object v2, Landroid/app/wallpaperbackup/Controller;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    return-void

    .line 212
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_6c
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    sget-object v2, Landroid/app/wallpaperbackup/Controller$RESULT;->FAIL:Landroid/app/wallpaperbackup/Controller$RESULT;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mResult:Landroid/app/wallpaperbackup/Controller$RESULT;

    .line 215
    sget-object v2, Landroid/app/wallpaperbackup/Controller$ERR_CODE;->UNKNOWN_ERROR:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mErrorCode:Landroid/app/wallpaperbackup/Controller$ERR_CODE;

    .line 216
    sget-object v2, Landroid/app/wallpaperbackup/Controller$REQ_SIZE;->SUCCESS:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    iput-object v2, p0, Landroid/app/wallpaperbackup/Controller;->mRequiredSize:Landroid/app/wallpaperbackup/Controller$REQ_SIZE;

    goto :goto_38
.end method
