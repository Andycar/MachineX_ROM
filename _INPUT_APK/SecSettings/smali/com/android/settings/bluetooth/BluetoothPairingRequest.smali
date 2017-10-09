.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mTimeoutHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingRequest$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 180
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothPairingRequest;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->abandonAudioFocus()V

    return-void
.end method

.method private playPopupAlert(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    const-string v6, "BluetoothPairingRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playPopupAlert :: audioManager.getRingerMode() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 153
    :pswitch_0
    const-string v6, "vibrator"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    .line 154
    .local v5, "vibrator":Landroid/os/SystemVibrator;
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/SystemVibrator;->vibrateNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v5    # "vibrator":Landroid/os/SystemVibrator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v8, 0x5

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 160
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 161
    .local v1, "mp":Landroid/media/MediaPlayer;
    const/4 v6, 0x2

    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 162
    .local v2, "notification":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    .line 163
    .local v4, "ringtoneLength":I
    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 164
    .local v3, "r":Landroid/media/Ringtone;
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 166
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, -0x80000000

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v7, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 63
    .local v6, "type":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v3, "pairingIntent":Landroid/content/Intent;
    const-class v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const-string v7, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 70
    :cond_0
    const-string v7, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 72
    .local v4, "pairingKey":I
    const-string v7, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .end local v4    # "pairingKey":I
    :cond_1
    const-string v7, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 79
    .local v5, "powerManager":Landroid/os/PowerManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "deviceAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->playPopupAlert(Landroid/content/Context;)V

    .line 117
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v3    # "pairingIntent":Landroid/content/Intent;
    .end local v5    # "powerManager":Landroid/os/PowerManager;
    .end local v6    # "type":I
    :cond_2
    return-void

    .line 79
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "pairingIntent":Landroid/content/Intent;
    .restart local v5    # "powerManager":Landroid/os/PowerManager;
    .restart local v6    # "type":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
