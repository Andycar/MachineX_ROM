.class Lcom/android/settings/bluetooth/BluetoothPermissionRequest$1;
.super Landroid/os/Handler;
.source "BluetoothPermissionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionRequest;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionRequest;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 396
    :pswitch_0
    const-string v0, "BluetoothPermissionRequest"

    const-string v1, "Received ABANDON_AUDIO_FOCUS msg."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionRequest;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPermissionRequest;)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
