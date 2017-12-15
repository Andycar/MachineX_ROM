.class public Landroid/app/wallpaperbackup/LivePreview;
.super Ljava/lang/Object;
.source "LivePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final EXTRA_LIVE_WALLPAPER_INTENT:Ljava/lang/String; = "android.live_wallpaper.intent"

.field static final EXTRA_LIVE_WALLPAPER_PACKAGE:Ljava/lang/String; = "android.live_wallpaper.package"

.field static final EXTRA_LIVE_WALLPAPER_SETTINGS:Ljava/lang/String; = "android.live_wallpaper.settings"

.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperPreview"

.field private static bFlagLockwall:Z

.field static isSetGlasslock:I

.field private static mContext:Landroid/content/Context;

.field private static mIntent:Landroid/content/Intent;

.field private static mView:Landroid/view/View;

.field private static mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

.field private static mWallpaperManager:Landroid/app/WallpaperManager;


# instance fields
.field mActivityView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    const/4 v2, -0x1

    sput v2, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I

    .line 34
    sput-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 36
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_10
    sput-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    return-void

    :cond_13
    move v0, v1

    goto :goto_10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sput-object p1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Landroid/app/wallpaperbackup/LivePreview;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public create()V
    .registers 4

    .prologue
    .line 73
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_e

    .line 75
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 76
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_e
    :try_start_e
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_31

    .line 86
    :cond_1c
    :goto_1c
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 87
    new-instance v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    sget-object v2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;-><init>(Landroid/content/Intent;)V

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    .line 88
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/LivePreview;->setLiveWallpaper()V

    .line 90
    return-void

    .line 80
    :catch_31
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 82
    const-string/jumbo v1, "zeroshuttle"

    const-string/jumbo v2, "system.getInt Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method set(ILandroid/content/Intent;Landroid/app/WallpaperInfo;Z)V
    .registers 9
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/app/WallpaperInfo;
    .param p4, "isLockScreen"    # Z

    .prologue
    .line 54
    if-nez p3, :cond_f

    .line 55
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure showing preview"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_e
    return-void

    .line 59
    :cond_f
    sput-object p2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    .line 60
    if-eqz p3, :cond_1a

    .line 61
    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "mSettingsActivityName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 64
    .end local v0    # "mSettingsActivityName":Ljava/lang/String;
    :cond_1a
    sput-boolean p4, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 65
    invoke-virtual {p0}, Landroid/app/wallpaperbackup/LivePreview;->create()V

    goto :goto_e
.end method

.method public setLiveWallpaper()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    if-eqz v1, :cond_23

    .line 97
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    iget-object v1, v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1e

    .line 98
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 99
    const-string v1, "LiveWallpaperPreview"

    const-string/jumbo v2, "setLiveWallpaper: Destroy engine..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_17
    :try_start_17
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    iget-object v1, v1, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_54

    .line 109
    :cond_1e
    :goto_1e
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    invoke-virtual {v1}, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->disconnect()V

    .line 111
    :cond_23
    const/4 v1, 0x0

    sput-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    .line 114
    :try_start_26
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 115
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :cond_37
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v1

    sget-object v2, Landroid/app/wallpaperbackup/LivePreview;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 123
    sget-object v1, Landroid/app/wallpaperbackup/LivePreview;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_4e} :catch_6f
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_4e} :catch_62

    .line 132
    :cond_4e
    :goto_4e
    sput-boolean v4, Landroid/app/wallpaperbackup/LivePreview;->bFlagLockwall:Z

    .line 133
    const/4 v1, -0x1

    sput v1, Landroid/app/wallpaperbackup/LivePreview;->isSetGlasslock:I

    .line 134
    return-void

    .line 103
    :catch_54
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 105
    const-string v1, "LiveWallpaperPreview"

    const-string/jumbo v2, "setLiveWallpaper: RemoteException in engine destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_62
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v1, :cond_4e

    .line 129
    const-string v1, "LiveWallpaperPreview"

    const-string v2, "Failure setting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 125
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_6f
    move-exception v1

    goto :goto_4e
.end method
