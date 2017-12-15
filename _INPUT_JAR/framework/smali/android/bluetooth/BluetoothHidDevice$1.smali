.class Landroid/bluetooth/BluetoothHidDevice$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidDevice;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6
    .param p1, "up"    # Z

    .prologue
    .line 150
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

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

    .line 152
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 153
    if-nez p1, :cond_5b

    .line 154
    :try_start_24
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unbinding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 156
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_58

    .line 158
    :try_start_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$300(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Landroid/bluetooth/BluetoothHidDevice;->access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_4a} :catch_4c
    .catchall {:try_start_3b .. :try_end_4a} :catchall_58

    .line 175
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v2

    .line 176
    return-void

    .line 159
    :catch_4c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onBluetoothStateChange: could not unbind service:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_58
    move-exception v1

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_58

    throw v1

    .line 165
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    # getter for: Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 166
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Binding HID Device service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->doBind()Z
    :try_end_71
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_71} :catch_72
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_71} :catch_7e
    .catchall {:try_start_5b .. :try_end_71} :catchall_58

    goto :goto_4a

    .line 169
    :catch_72
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_73
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_7e
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/SecurityException;
    # getter for: Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_58

    goto :goto_4a
.end method
