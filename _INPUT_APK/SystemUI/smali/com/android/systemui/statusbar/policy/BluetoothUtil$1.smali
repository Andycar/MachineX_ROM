.class final Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothA2dp;)Lcom/android/systemui/statusbar/policy/BluetoothUtil$Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a2dp:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;->val$a2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;->val$a2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothUtil$1;->val$a2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
