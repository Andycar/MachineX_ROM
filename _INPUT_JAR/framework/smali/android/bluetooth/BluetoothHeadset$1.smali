.class Landroid/bluetooth/BluetoothHeadset$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6
    .param p1, "up"    # Z

    .prologue
    .line 251
    # getter for: Landroid/bluetooth/BluetoothHeadset;->DBG:Z
    invoke-static {}, Landroid/bluetooth/BluetoothHeadset;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "BluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1f
    if-nez p1, :cond_4b

    .line 254
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 256
    :try_start_28
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->access$202(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 257
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3f
    .catchall {:try_start_28 .. :try_end_3d} :catchall_48

    .line 261
    :goto_3d
    :try_start_3d
    monitor-exit v2

    .line 274
    :goto_3e
    return-void

    .line 258
    :catch_3f
    move-exception v0

    .line 259
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "BluetoothHeadset"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 261
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_48

    throw v1

    .line 263
    :cond_4b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 265
    :try_start_52
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    # getter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_5f

    .line 267
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->doBind()Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_64
    .catchall {:try_start_52 .. :try_end_5f} :catchall_61

    .line 272
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v2

    goto :goto_3e

    :catchall_61
    move-exception v1

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_61

    throw v1

    .line 269
    :catch_64
    move-exception v0

    .line 270
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_65
    const-string v1, "BluetoothHeadset"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_61

    goto :goto_5f
.end method
