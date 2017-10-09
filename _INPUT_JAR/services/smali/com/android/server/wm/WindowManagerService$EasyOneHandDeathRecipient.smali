.class Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyOneHandDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 15396
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 15396
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .prologue
    .line 15400
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_49

    .line 15401
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    if-eqz v0, :cond_44

    .line 15402
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    invoke-interface {v0}, Landroid/sec/easyonehand/IEasyOneHandWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15403
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    .line 15405
    const-string v0, "WindowManager"

    const-string v1, "EasyOneHand has died unexpectedly"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15408
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    .line 15411
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 15413
    :cond_44
    monitor-exit v6

    .line 15418
    :goto_45
    return-void

    .line 15413
    :catchall_46
    move-exception v0

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_49

    .line 15414
    :catch_49
    move-exception v0

    goto :goto_45
.end method
