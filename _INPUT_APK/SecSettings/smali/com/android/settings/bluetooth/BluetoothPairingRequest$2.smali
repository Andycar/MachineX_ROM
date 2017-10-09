.class Lcom/android/settings/bluetooth/BluetoothPairingRequest$2;
.super Ljava/lang/Object;
.source "BluetoothPairingRequest.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 135
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
