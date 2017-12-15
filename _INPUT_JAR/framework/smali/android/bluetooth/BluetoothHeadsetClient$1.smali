.class Landroid/bluetooth/BluetoothHeadsetClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadsetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .registers 2

    .prologue
    .line 406
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7
    .param p1, "up"    # Z

    .prologue
    .line 409
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez p1, :cond_45

    .line 412
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 414
    :try_start_22
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v4, 0x0

    # setter for: Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 415
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$200(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_39
    .catchall {:try_start_22 .. :try_end_37} :catchall_42

    .line 419
    :goto_37
    :try_start_37
    monitor-exit v3

    .line 433
    :goto_38
    return-void

    .line 416
    :catch_39
    move-exception v1

    .line 417
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "BluetoothHeadsetClient"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 419
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_42
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    throw v2

    .line 421
    :cond_45
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 423
    :try_start_4c
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    # getter for: Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$100(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v2

    if-nez v2, :cond_64

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_64} :catch_69
    .catchall {:try_start_4c .. :try_end_64} :catchall_66

    .line 431
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_64
    :goto_64
    :try_start_64
    monitor-exit v3

    goto :goto_38

    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_66

    throw v2

    .line 428
    :catch_69
    move-exception v1

    .line 429
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_6a
    const-string v2, "BluetoothHeadsetClient"

    const-string v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_66

    goto :goto_64
.end method
