.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/high16 v6, -0x80000000

    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 305
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V

    .line 307
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 327
    return-void

    .line 308
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 309
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v2

    .line 310
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 312
    .local v3, "state":I
    if-eq v3, v6, :cond_2

    .line 313
    iput v3, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    .line 315
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 316
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CONNECTION_STATE_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget v6, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    if-ne v6, v4, :cond_4

    :goto_1
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 319
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v3    # "state":I
    :cond_5
    const-string v4, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 320
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 321
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 322
    :cond_6
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_BOND_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method
