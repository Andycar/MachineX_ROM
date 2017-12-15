.class Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LivePreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/LivePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 147
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 3
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_d

    .line 212
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13

    .line 214
    const/4 v0, 0x1

    :try_start_8
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_16
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 225
    :goto_b
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_13

    .line 226
    return-void

    .line 220
    :cond_d
    :try_start_d
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_13

    goto :goto_b

    .line 221
    :catch_11
    move-exception v0

    goto :goto_b

    .line 225
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 215
    :catch_16
    move-exception v0

    goto :goto_b
.end method

.method public connect()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 150
    monitor-enter p0

    .line 151
    :try_start_2
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 152
    const/4 v0, 0x0

    monitor-exit p0

    .line 156
    :goto_11
    return v0

    .line 155
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 156
    monitor-exit p0

    goto :goto_11

    .line 157
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 163
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1c

    if-eqz v0, :cond_10

    .line 165
    :try_start_8
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_21
    .catchall {:try_start_8 .. :try_end_d} :catchall_1c

    .line 169
    :goto_d
    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1c

    .line 172
    :cond_10
    :try_start_10
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_1f
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 176
    :goto_17
    const/4 v0, 0x0

    :try_start_18
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v0

    .line 173
    :catch_1f
    move-exception v0

    goto :goto_17

    .line 166
    :catch_21
    move-exception v0

    goto :goto_d
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 2
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 234
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 14
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 181
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_3e

    .line 182
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 184
    :try_start_c
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mView:Landroid/view/View;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$200()Landroid/view/View;

    move-result-object v10

    .line 185
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 186
    .local v9, "root":Landroid/view/View;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3e} :catch_3f

    .line 197
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "root":Landroid/view/View;
    .end local v10    # "view":Landroid/view/View;
    :cond_3e
    :goto_3e
    return-void

    .line 191
    :catch_3f
    move-exception v8

    .line 192
    .local v8, "e":Landroid/os/RemoteException;
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 193
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 201
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 202
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_27

    .line 203
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 204
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_27
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method
