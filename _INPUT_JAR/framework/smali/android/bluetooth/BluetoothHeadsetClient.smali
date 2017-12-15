.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final ACTION_RESULT_ERROR:I = 0x1

.field public static final ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final ACTION_RESULT_OK:I = 0x0

.field public static final ACTION_SET_BIA:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.SET_BIA"

.field public static final BIA_INDICATOR_BATTERYCHG:I = 0x1

.field public static final BIA_INDICATOR_CALL:I = 0x8

.field public static final BIA_INDICATOR_CALLHELD:I = 0x40

.field public static final BIA_INDICATOR_CALLSETUP:I = 0x20

.field public static final BIA_INDICATOR_ROAM:I = 0x10

.field public static final BIA_INDICATOR_SERVICE:I = 0x4

.field public static final BIA_INDICATOR_SIGNAL:I = 0x2

.field public static final CALL_ACCEPT_HOLD:I = 0x1

.field public static final CALL_ACCEPT_NONE:I = 0x0

.field public static final CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final CME_INCORRECT_PASSWORD:I = 0x10

.field public static final CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final CME_INVALID_INDEX:I = 0x15

.field public static final CME_MEMORY_FAILURE:I = 0x17

.field public static final CME_MEMORY_FULL:I = 0x14

.field public static final CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final CME_NOT_FOUND:I = 0x16

.field public static final CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final CME_PHONE_FAILURE:I = 0x0

.field public static final CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final CME_SIM_BUSY:I = 0xe

.field public static final CME_SIM_FAILURE:I = 0xd

.field public static final CME_SIM_NOT_INSERTED:I = 0xa

.field public static final CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final CME_SIM_WRONG:I = 0xf

.field public static final CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final DBG:Z = true

.field public static final EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_BIA_VALUE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BIA_VALUE"

.field public static final EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final STATE_AUDIO_CONNECTED:I = 0x2

.field public static final STATE_AUDIO_CONNECTING:I = 0x1

.field public static final STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadsetClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$1;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1180
    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$2;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    .line 440
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    .line 441
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 442
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 444
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 445
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_28

    .line 447
    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2c

    .line 453
    :cond_28
    :goto_28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z

    .line 454
    return-void

    .line 448
    :catch_2c
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadsetClient;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHeadsetClient;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 1203
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 1207
    if-nez p1, :cond_4

    .line 1210
    :cond_3
    :goto_3
    return v0

    .line 1209
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1214
    const-string v0, "BluetoothHeadsetClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    .line 782
    const-string v1, "acceptCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 786
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 792
    :goto_1b
    return v1

    .line 787
    :catch_1c
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1064
    const-string v1, "acceptIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_22

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1067
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    .line 1073
    :goto_15
    return v1

    .line 1068
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    const/4 v1, 0x0

    goto :goto_15

    .line 1070
    :cond_22
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method close()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 477
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 478
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_e

    .line 480
    :try_start_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_23

    .line 486
    :cond_e
    :goto_e
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 487
    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_35

    if-eqz v3, :cond_1f

    .line 489
    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 490
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_2c
    .catchall {:try_start_16 .. :try_end_1f} :catchall_35

    .line 495
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_35

    .line 496
    iput-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 497
    return-void

    .line 481
    :catch_23
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothHeadsetClient"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2c
    move-exception v2

    .line 492
    .local v2, "re":Ljava/lang/Exception;
    :try_start_2d
    const-string v3, "BluetoothHeadsetClient"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 495
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v2, :cond_44

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 517
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    move-result v1

    .line 524
    :cond_33
    :goto_33
    return v1

    .line 518
    :catch_34
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v2, :cond_33

    const-string v2, "BluetoothHeadsetClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public connectAudio()Z
    .registers 4

    .prologue
    .line 1121
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1123
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1131
    :goto_10
    return v1

    .line 1124
    :catch_11
    move-exception v0

    .line 1125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1128
    :cond_1d
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 970
    const-string v1, "dial()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 974
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 980
    :goto_1b
    return v1

    .line 975
    :catch_1c
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    .line 995
    const-string v1, "dialMemory()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 999
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 1005
    :goto_1b
    return v1

    .line 1000
    :catch_1c
    move-exception v0

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v2, :cond_44

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 541
    :try_start_2d
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_34

    move-result v1

    .line 548
    :cond_33
    :goto_33
    return v1

    .line 542
    :catch_34
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v2, :cond_33

    const-string v2, "BluetoothHeadsetClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public disconnectAudio()Z
    .registers 4

    .prologue
    .line 1145
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1147
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1155
    :goto_10
    return v1

    .line 1148
    :catch_11
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1152
    :cond_1d
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method doBind()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 457
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 459
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    if-eqz v0, :cond_29

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 462
    :cond_29
    const-string v3, "BluetoothHeadsetClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Headset Client Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_41
    return v2

    :cond_42
    const/4 v2, 0x1

    goto :goto_41
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 892
    const-string v1, "enterPrivateMode()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 896
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 902
    :goto_1b
    return v1

    .line 897
    :catch_1c
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 921
    const-string v1, "explicitCallTransfer()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 925
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 931
    :goto_1b
    return v1

    .line 926
    :catch_1c
    move-exception v0

    .line 927
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1099
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1101
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1107
    :goto_10
    return v1

    .line 1102
    :catch_11
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1104
    :cond_1d
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getCLCC()Z
    .registers 4

    .prologue
    .line 716
    const-string v1, "getCurrentCallList"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_22

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 719
    :try_start_f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCLCC()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16

    move-result v1

    .line 725
    :goto_15
    return v1

    .line 720
    :catch_16
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    const/4 v1, 0x0

    goto :goto_15

    .line 722
    :cond_22
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 561
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 568
    :goto_10
    return-object v1

    .line 562
    :catch_11
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v2, :cond_28

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 606
    :try_start_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    .line 613
    :cond_17
    :goto_17
    return v1

    .line 607
    :catch_18
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v2, :cond_17

    const-string v2, "BluetoothHeadsetClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 756
    const-string v1, "getCurrentCalls()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 760
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v1

    .line 766
    :goto_1b
    return-object v1

    .line 761
    :catch_1c
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1166
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1168
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 1176
    :goto_10
    return-object v1

    .line 1169
    :catch_11
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1173
    :cond_1d
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    const-string v1, "getCurrentCalls()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 739
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result-object v1

    .line 745
    :goto_1b
    return-object v1

    .line 740
    :catch_1c
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 5
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 584
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 591
    :goto_10
    return-object v1

    .line 585
    :catch_11
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_31

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1047
    const-string v1, "getLastVoiceTagNumber()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1051
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 1057
    :goto_1b
    return v1

    .line 1052
    :catch_1c
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v2, :cond_28

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 648
    :try_start_11
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    .line 655
    :cond_17
    :goto_17
    return v1

    .line 649
    :catch_18
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_28
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v2, :cond_17

    const-string v2, "BluetoothHeadsetClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 805
    const-string v1, "holdCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 809
    :try_start_15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 815
    :goto_1b
    return v1

    .line 810
    :catch_1c
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_36

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_36
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 945
    const-string/jumbo v1, "redial()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 946
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 949
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->redial(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 955
    :goto_1c
    return v1

    .line 950
    :catch_1d
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 832
    const-string/jumbo v1, "rejectCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 836
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 842
    :goto_1c
    return v1

    .line 837
    :catch_1d
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1080
    const-string/jumbo v1, "rejectIncomingConnect"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1d

    .line 1083
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 1089
    :goto_10
    return v1

    .line 1084
    :catch_11
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 1086
    :cond_1d
    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    .line 1020
    const-string/jumbo v1, "sendDTMF()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1024
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 1030
    :goto_1c
    return v1

    .line 1025
    :catch_1d
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v2, :cond_56

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 625
    if-eqz p2, :cond_3f

    const/16 v2, 0x64

    if-eq p2, v2, :cond_3f

    .line 637
    :cond_3e
    :goto_3e
    return v1

    .line 630
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_46

    move-result v1

    goto :goto_3e

    .line 631
    :catch_46
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_56
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v2, :cond_3e

    const-string v2, "BluetoothHeadsetClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 672
    const-string/jumbo v1, "startVoiceRecognition()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 676
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 682
    :goto_1c
    return v1

    .line 677
    :catch_1d
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 699
    const-string/jumbo v1, "stopVoiceRecognition()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 703
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 709
    :goto_1c
    return v1

    .line 704
    :catch_1d
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 862
    const-string/jumbo v1, "terminateCall()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 866
    :try_start_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result v1

    .line 872
    :goto_1c
    return v1

    .line 867
    :catch_1d
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadsetClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-nez v1, :cond_37

    const-string v1, "BluetoothHeadsetClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_37
    const/4 v1, 0x0

    goto :goto_1c
.end method
