.class public Lcom/android/keyguard/sec/KeyguardEffectViewUtil;
.super Ljava/lang/Object;
.source "KeyguardEffectViewUtil.java"


# static fields
.field public static final ACTION_UPDATE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "android.intent.action.sec.LSO_CONFIG_CHANGED"

.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.png"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH:Ljava/lang/String; = "keyguard_current_wallpaper_file_path"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_current_wallpaper_res_id"

.field public static final KEY_CURRENT_WALLPAPER_TYPE:Ljava/lang/String; = "keyguard_current_wallpaper_type"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_default_wallpaper_res_id"

.field public static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field public static final RIPPLE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

.field public static final SHARED_WALLPAPER_TYPE_FILE:I = 0x1

.field public static final SHARED_WALLPAPER_TYPE_NONE:I = 0x0

.field public static final SHARED_WALLPAPER_TYPE_RESOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewUtil"

.field public static final WALLPAPER_TYPE_FILE:I = 0x1

.field public static final WALLPAPER_TYPE_JUST_ON_LOCK_LIVE:I = 0x2

.field public static final WALLPAPER_TYPE_LIVE:I

.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 350
    .end local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object p1

    .line 327
    .restart local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 330
    .local v3, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    const/4 v3, 0x0

    .line 332
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 337
    .end local v3    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 338
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 340
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 341
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 344
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_2
    :goto_1
    invoke-static {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "wallpaperPath":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryWallpaperFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 135
    if-nez p0, :cond_0

    .line 203
    :goto_0
    return-object v6

    .line 138
    :cond_0
    sput-object p1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 139
    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentWallpaper() mWallpaperPath :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 143
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 144
    .local v4, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "EmergencyMode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v3, :cond_1

    .line 147
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 150
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_1
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    const-string v7, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 163
    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 164
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v7, 0x1

    sput v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 166
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 167
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading Admin wallpaper EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sput-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 170
    const/4 v6, 0x0

    sput v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 174
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 176
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 178
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 186
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 187
    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 189
    :cond_5
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 193
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 195
    :try_start_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_3
    sput v6, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 198
    invoke-static {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 199
    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v1

    .line 200
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 203
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 199
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 303
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 317
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_longlife_wallpaper_black:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 318
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    const/16 v17, 0x0

    .line 295
    :goto_0
    return-object v17

    .line 211
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v5, "fileMultiCSC":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v7, "filePng":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v6, "fileMultiCSCPng":Ljava/io/File;
    const/4 v10, 0x0

    .line 217
    .local v10, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 219
    .local v15, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 220
    .local v2, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 224
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 227
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 228
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v10, v11

    .line 264
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 265
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v10

    .line 266
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 269
    :cond_2
    if-eqz v10, :cond_4

    .line 270
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    const-string v17, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 272
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 274
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 275
    .local v8, "imageHeight":I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 276
    .local v9, "imageWidth":I
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    div-int v17, v9, v17

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    div-int v18, v8, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 279
    .local v13, "scaleFactor":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    const/4 v13, 0x1

    .line 281
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 283
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 285
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 286
    .local v14, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    .end local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 289
    .restart local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 295
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v3

    .line 230
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const/4 v10, 0x0

    .line 231
    goto :goto_1

    .line 232
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 234
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_4
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 237
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 238
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v10, v11

    .line 241
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 239
    :catch_1
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v10, 0x0

    .line 241
    goto/16 :goto_1

    .line 242
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 244
    :try_start_5
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 245
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_6
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 248
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v11

    .line 251
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 249
    :catch_2
    move-exception v3

    .line 250
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v10, 0x0

    .line 251
    goto/16 :goto_1

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 254
    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 255
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_8
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 257
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 258
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v10, v11

    .line 261
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 259
    :catch_3
    move-exception v3

    .line 260
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 290
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "imageHeight":I
    .restart local v9    # "imageWidth":I
    .restart local v12    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "scaleFactor":I
    .restart local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :catch_4
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 249
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 239
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 229
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getWallpaperType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 117
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static isAdminWallpaper()Z
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "wallpaperType":I
    const-string v2, "KeyguardEffectViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wallpaperType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPowerSavingMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    if-nez p0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v2

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 387
    .local v0, "isPowerSavingEnabled":Z
    :goto_1
    const-string v3, "KeyguardEffectViewUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPowerSavingMode() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    .end local v0    # "isPowerSavingEnabled":Z
    :cond_3
    move v0, v2

    .line 385
    goto :goto_1
.end method

.method public static isStrongPowerSavingMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    if-nez p0, :cond_0

    .line 400
    :goto_0
    return v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    :cond_1
    move v0, v1

    .line 398
    .local v0, "isStrongPowerSavingEnabled":Z
    :cond_2
    const-string v1, "KeyguardEffectViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStrongPowerSavingMode() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 360
    if-nez p0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 354
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V

    .line 356
    return-object p1
.end method
