.class Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;
.super Landroid/os/Handler;
.source "BluetoothPairingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const-string v0, "BluetoothPairingRequest"

    const-string v1, "Received ABANDON_AUDIO_FOCUS msg."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
