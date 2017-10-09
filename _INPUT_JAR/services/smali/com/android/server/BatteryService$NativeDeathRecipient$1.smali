.class Lcom/android/server/BatteryService$NativeDeathRecipient$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$NativeDeathRecipient;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$NativeDeathRecipient;)V
    .registers 2

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 665
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 666
    :try_start_9
    const-string v2, "batteryproperties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 667
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_51

    .line 668
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v4

    # setter for: Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Landroid/os/IBatteryPropertiesRegistrar;)Landroid/os/IBatteryPropertiesRegistrar;

    .line 669
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    new-instance v4, Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, v5, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/BatteryService$NativeDeathRecipient;-><init>(Lcom/android/server/BatteryService;Landroid/os/IBinder;)V

    # setter for: Lcom/android/server/BatteryService;->mNativeDeathRecipient:Lcom/android/server/BatteryService$NativeDeathRecipient;
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$2102(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$NativeDeathRecipient;)Lcom/android/server/BatteryService$NativeDeathRecipient;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4e

    .line 671
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v2

    new-instance v4, Lcom/android/server/BatteryService$BatteryListener;

    iget-object v5, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v5, v5, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-interface {v2, v4}, Landroid/os/IBatteryPropertiesRegistrar;->registerListener(Landroid/os/IBatteryPropertiesListener;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_41} :catch_43
    .catchall {:try_start_2c .. :try_end_41} :catchall_4e

    .line 679
    :goto_41
    :try_start_41
    monitor-exit v3

    .line 680
    return-void

    .line 672
    :catch_43
    move-exception v1

    .line 673
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryPropertiesRegistrar : Faild to register"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 679
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_4e
    move-exception v2

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw v2

    .line 676
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_51
    :try_start_51
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Faild to get batteryproperties service, try again."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v2, p0, Lcom/android/server/BatteryService$NativeDeathRecipient$1;->this$1:Lcom/android/server/BatteryService$NativeDeathRecipient;

    iget-object v2, v2, Lcom/android/server/BatteryService$NativeDeathRecipient;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_4e

    goto :goto_41
.end method
