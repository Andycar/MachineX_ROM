.class public Lcom/android/settings/myprofile/MyProfileWallpaper;
.super Ljava/lang/Object;
.source "MyProfileWallpaper.java"


# instance fields
.field private final DBG:Z

.field private final INVALID_ID:I

.field private final KEYGUARD_PACKAGE:Ljava/lang/String;

.field private final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

.field private mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->DBG:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    .line 39
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 40
    const-string v0, "keyguard_current_wallpaper_res_id"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

    .line 41
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->KEYGUARD_PACKAGE:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->INVALID_ID:I

    .line 50
    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setLockScreenWallpaper()V

    .line 52
    return-void
.end method

.method private getDefaultWallpaperResourceId()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 160
    .local v1, "keyguardRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v5, "com.android.systemui"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    if-nez v1, :cond_0

    .line 167
    const-string v5, "WallpaperWidget"

    const-string v6, "keyguard resource is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return v4

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, -0x1

    .line 173
    .local v3, "resourceId":I
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "keyguard_current_wallpaper_res_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 179
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 180
    const-string v5, "WallpaperWidget"

    const-string v6, "resourceId is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setDefaultWallpaper()V
    .locals 10

    .prologue
    .line 105
    new-instance v1, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "fileMultiCSC":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "filePng":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "fileMultiCSCPng":Ljava/io/File;
    const/4 v5, 0x0

    .line 110
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 143
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 144
    const/4 v7, 0x0

    .line 145
    .local v7, "tempBitmapDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 153
    .end local v7    # "tempBitmapDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    .line 115
    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 119
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 123
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    .line 122
    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 126
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 130
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 127
    :catch_2
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    .line 129
    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 133
    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 137
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 134
    :catch_3
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    .line 136
    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    .line 140
    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .restart local v7    # "tempBitmapDrawable":Landroid/graphics/drawable/Drawable;
    :catch_4
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "draw"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    .line 194
    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 7

    .prologue
    .line 65
    invoke-static {}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 68
    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Admin wallpaper EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 81
    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiSim Device wallpaperPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 85
    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    .line 88
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 91
    .local v2, "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    :try_start_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v2    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    iput-object v3, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 97
    .end local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()V

    goto/16 :goto_0

    .line 99
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()V

    goto/16 :goto_0

    .line 95
    .end local v2    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method
