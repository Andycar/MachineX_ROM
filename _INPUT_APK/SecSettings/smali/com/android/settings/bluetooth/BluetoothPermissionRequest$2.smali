.class Lcom/android/settings/bluetooth/BluetoothPermissionRequest$2;
.super Ljava/lang/Object;
.source "BluetoothPermissionRequest.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 406
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionRequest$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionRequest;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPermissionRequest;->access$000(Lcom/android/settings/bluetooth/BluetoothPermissionRequest;)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
