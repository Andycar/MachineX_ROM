.class Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;
.super Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;
.source "QuickConnectConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "netType"    # I
    .param p5, "deviceType"    # I
    .param p6, "contactName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "QuickConnectConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceAdded: deviceName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", netType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;->onDeviceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 208
    :cond_35
    return-void
.end method

.method public onDeviceChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 14
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "netType"    # I
    .param p5, "deviceType"    # I
    .param p6, "contactName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "QuickConnectConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceChanged: deviceName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", netType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 227
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;->onDeviceChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 230
    :cond_35
    return-void
.end method

.method public onDeviceRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "QuickConnectConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceRemoved: deviceName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 216
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;->onDeviceRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_25
    return-void
.end method

.method public onDiscoveryFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "QuickConnectConnector"

    const-string v1, "onDiscoveryFinished:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 246
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;->onDiscoveryFinished()V

    .line 248
    :cond_18
    return-void
.end method

.method public onDiscoveryStarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "QuickConnectConnector"

    const-string v1, "onDiscoveryStarted:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;->onDiscoveryStarted()V

    .line 239
    :cond_18
    return-void
.end method
