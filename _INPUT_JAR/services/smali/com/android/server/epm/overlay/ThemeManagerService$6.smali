.class Lcom/android/server/epm/overlay/ThemeManagerService$6;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field final synthetic val$wallManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V
    .registers 3

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->val$wallManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1791
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->val$wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v5, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1794
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 1795
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1796
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/overlays"

    const-string v5, "defalut.png"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    .local v0, "dest":Ljava/io/File;
    :try_start_28
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1800
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1801
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1802
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3a} :catch_40

    .line 1809
    .end local v0    # "dest":Ljava/io/File;
    .end local v2    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_3a
    :goto_3a
    return-void

    .line 1803
    .restart local v0    # "dest":Ljava/io/File;
    .restart local v2    # "mBitmap":Landroid/graphics/Bitmap;
    :catch_3b
    move-exception v1

    .line 1804
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3a

    .line 1805
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v1

    .line 1806
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a
.end method
