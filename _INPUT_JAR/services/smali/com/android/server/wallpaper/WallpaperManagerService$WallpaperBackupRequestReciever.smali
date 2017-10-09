.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperBackupRequestReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1860
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1861
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1862
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1863
    .local v1, "source":Ljava/lang/String;
    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_1f
    const-string v2, "Kies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1864
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_35

    .line 1865
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z
    invoke-static {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$602(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z

    .line 1868
    :cond_35
    const-string v2, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1869
    :cond_45
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z
    invoke-static {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$602(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z

    .line 1871
    :cond_4b
    monitor-exit v3

    .line 1872
    return-void

    .line 1871
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "source":Ljava/lang/String;
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw v2
.end method
